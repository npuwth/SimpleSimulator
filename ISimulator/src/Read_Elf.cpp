#include"Read_Elf.h"

FILE *elf=NULL;
Elf64_Ehdr elf64_hdr;

//Program headers
unsigned long padr = 0;
unsigned int psize = 0;
unsigned int pnum = 0;
//Section Headers
unsigned long sadr = 0;
unsigned int ssize = 0;
unsigned int snum = 0;
//Symbol table
unsigned long symadr = 0;
unsigned int symsize = 0;
unsigned int symnum = 0;
unsigned long stradr = 0;
unsigned int hsize = 0;
unsigned int symindex = 0;

unsigned long char2num(unsigned char* c, int n) {
	unsigned long f = 1;
	int i = 0, ans = 0;
	// XXXX_XXXX, each X is a 8-bit byte, so multiply factor is 256	
	//                     (2 hexadecimal)
	while(i < n) {
		ans += f * c[i];
		f *= 256;
		i++;
	}
	return ans;
}

void read_elf()
{
	elf = fopen("elf.txt", "w");
	if(elf == NULL) {
		printf("Error: Cannot write to elf file.\n");
		return;
	}

	fprintf(elf,"ELF Header:\n");
	read_Elf_header();

	fprintf(elf,"\n\nSection Headers:\n");
	read_elf_sections();

	// fprintf(elf,"\n\nProgram Headers:\n");
	// read_Phdr();

	// fprintf(elf,"\n\nSymbol table:\n");
	// read_symtable();

	printf("Successfully read elf.\n");
	fclose(elf);
}

void read_Elf_header()
{
	fread(&elf64_hdr, 1, sizeof(elf64_hdr), file);
		
	fprintf(elf, " Magic Number:  ");
	for(int i = 0; i < 16; i++) {
		fprintf(elf, "%02x ", elf64_hdr.e_ident[i]);
	}
	fprintf(elf, "\n");
	// fprintf(elf, " Class:  \n"); //ELFCLASS32
	// fprintf(elf, " Data:  \n"); //little-endian
	// fprintf(elf, " Version:  \n");
	// fprintf(elf, " OS/ABI:  \n"); //System V ABI
	// fprintf(elf, " ABI Version:  \n");

	fprintf(elf, " Type:  %x\n", (unsigned int)char2num(elf64_hdr.e_type.b, 2)); //2表示可执行文件
	fprintf(elf, " Machine:  0x%x\n", (unsigned int)char2num(elf64_hdr.e_machine.b, 2));
	fprintf(elf, " Version:  %x\n", (unsigned int)char2num(elf64_hdr.e_version.b, 4));

	// fprintf(elf," Entry point address:  %s\n", elf64_hdr.e_entry.b);
	stradr = char2num(elf64_hdr.e_entry.b, 8);
	entry = stradr;
	fprintf(elf," Entry point address:  0x%lx\n", stradr);
	// fprintf(elf," Start of program headers: %s\n", elf64_hdr.e_phoff.b);
	padr = char2num(elf64_hdr.e_phoff.b, 8);
	fprintf(elf," Start of program headers: 0x%lx\n", padr);
	// fprintf(elf," Start of section headers: %s\n", elf64_hdr.e_shoff.b);
	sadr = char2num(elf64_hdr.e_shoff.b, 8);
	fprintf(elf," Start of section headers: 0x%lx\n", sadr);

	fprintf(elf," Flags:  %x\n", (unsigned int)char2num(elf64_hdr.e_flags.b, 4));

	hsize = (unsigned int)char2num(elf64_hdr.e_ehsize.b, 2);
	fprintf(elf," Size of this header:  %d Bytes\n", hsize);
	psize = (unsigned int)char2num(elf64_hdr.e_phentsize.b, 2);
	fprintf(elf," Size of program headers:  %d Bytes\n", psize);
	pnum = (unsigned int)char2num(elf64_hdr.e_phnum.b, 2);
	fprintf(elf," Number of program headers:  %d\n", pnum);
	ssize = (unsigned int)char2num(elf64_hdr.e_shentsize.b, 2);
	fprintf(elf," Size of section headers:  %d Bytes\n", ssize);
	snum = (unsigned int)char2num(elf64_hdr.e_shnum.b, 2);
	fprintf(elf," Number of section headers:  %d\n", snum);
	symindex = (unsigned int)char2num(elf64_hdr.e_shstrndx.b, 2);
	fprintf(elf," Section header string table index:  %d\n", symindex);
}

void read_elf_sections()
{
	Elf64_Shdr elf64_shdr;
	fseek(file, sadr, SEEK_SET);
	unsigned int sec_name = 0;
	unsigned long sec_addr = 0;
	unsigned long sec_off = 0;
	unsigned long sec_size = 0;
	for(int c = 0; c < snum; c++)
	{
		fprintf(elf, " [%3d]\n", c);
		fread(&elf64_shdr, 1, sizeof(elf64_shdr), file);

		sec_name = (unsigned int)char2num(elf64_shdr.sh_name.b, 4);
		fprintf(elf, " Name:  %x\n", sec_name);
		fprintf(elf, " Type:  %x\n", (unsigned int)char2num(elf64_shdr.sh_type.b, 4));
		fprintf(elf, " Flags:  %lx\n", char2num(elf64_shdr.sh_flags.b, 8));
		sec_addr = char2num(elf64_shdr.sh_addr.b, 8);
		fprintf(elf, " Address:  0x%lx\n", sec_addr);
		sec_off = char2num(elf64_shdr.sh_offset.b, 8);
		fprintf(elf, " Offest:  0x%lx\n", sec_off);
		sec_size = char2num(elf64_shdr.sh_size.b, 8);
		fprintf(elf, " Size:  %ld Bytes\n", sec_size);
		fprintf(elf, " Link:  %x\n", (unsigned int)char2num(elf64_shdr.sh_link.b, 4));
		fprintf(elf, " Info:  %x\n", (unsigned int)char2num(elf64_shdr.sh_info.b, 4));
		fprintf(elf, " Align:  %lx\n", char2num(elf64_shdr.sh_addralign.b, 8));
		fprintf(elf, " Entsize:  %lx\n", char2num(elf64_shdr.sh_entsize.b, 8));
 	
		if(sec_name == 0x1b) { //.text
			vadr = sec_addr;
			cadr = sec_off;
			csize = sec_size;
		} else if(sec_name == 0x21) { //.rodata
			gp = sec_addr;
		}
	}
}

void read_Phdr()
{
	Elf64_Phdr elf64_phdr;
	for(int c=0;c<pnum;c++)
	{
		fprintf(elf," [%3d]\n",c);
		//file should be relocated
		fread(&elf64_phdr,1,sizeof(elf64_phdr),file);
		
		fprintf(elf," Type:   ");
		fprintf(elf," Flags:   ");
		fprintf(elf," Offset:   ");
		fprintf(elf," VirtAddr:  ");
		fprintf(elf," PhysAddr:   ");
		fprintf(elf," FileSiz:   ");
		fprintf(elf," MemSiz:   ");
		fprintf(elf," Align:   ");
	}
}

void read_symtable()
{
	Elf64_Sym elf64_sym;
	for(int c=0;c<symnum;c++)
	{
		fprintf(elf," [%3d]   ",c);
		//file should be relocated
		fread(&elf64_sym,1,sizeof(elf64_sym),file);

		// fprintf(elf," Name:  %40s   ");
		fprintf(elf," Name:   ");
		fprintf(elf," Bind:   ");
		fprintf(elf," Type:   ");
		fprintf(elf," NDX:   ");
		fprintf(elf," Size:   ");
		fprintf(elf," Value:   \n");
	}
}
