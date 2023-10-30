#include "Common.h"

bool data_hazard(bool r_rs1, bool r_rs2, int rs1, int rs2, bool EX_write, int EX_rd, bool MEM_write, int MEM_rd, bool WB_write, int WB_rd) {
    if(rs1 == EX_rd  && r_rs1 && EX_write ) return 1;
    if(rs1 == MEM_rd && r_rs1 && MEM_write) return 1;
    if(rs1 == WB_rd  && r_rs1 && WB_write ) return 1;
    if(rs2 == EX_rd  && r_rs2 && EX_write ) return 1;
    if(rs2 == MEM_rd && r_rs2 && MEM_write) return 1;
    if(rs2 == WB_rd  && r_rs2 && WB_write ) return 1;
    return 0;
}
