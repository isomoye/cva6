#ifndef _VC_HDRS_H
#define _VC_HDRS_H

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <stdio.h>
#include <dlfcn.h>
#include "svdpi.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _VC_TYPES_
#define _VC_TYPES_
/* common definitions shared with DirectC.h */

typedef unsigned int U;
typedef unsigned char UB;
typedef unsigned char scalar;
typedef struct { U c; U d;} vec32;

#define scalar_0 0
#define scalar_1 1
#define scalar_z 2
#define scalar_x 3

extern long long int ConvUP2LLI(U* a);
extern void ConvLLI2UP(long long int a1, U* a2);
extern long long int GetLLIresult();
extern void StoreLLIresult(const unsigned int* data);
typedef struct VeriC_Descriptor *vc_handle;

#ifndef SV_3_COMPATIBILITY
#define SV_STRING const char*
#else
#define SV_STRING char*
#endif

#endif /* _VC_TYPES_ */


 extern int vc_uvmOnewayHash(/* INPUT */const char* string_in, /* INPUT */int seed);

 extern int vc_uvmCreateRandomSeed(/* INPUT */const char* string_in, /* INPUT */int seed);

 extern int uvm_hdl_check_path(/* INPUT */const char* path);

 extern int uvm_hdl_deposit(/* INPUT */const char* path, const /* INPUT */svLogicVecVal *value);

 extern int uvm_hdl_force(/* INPUT */const char* path, const /* INPUT */svLogicVecVal *value);

 extern int uvm_hdl_release_and_read(/* INPUT */const char* path, /* INOUT */svLogicVecVal *value);

 extern int uvm_hdl_release(/* INPUT */const char* path);

 extern int uvm_hdl_read(/* INPUT */const char* path, /* OUTPUT */svLogicVecVal *value);

 extern SV_STRING uvm_hdl_read_string(/* INPUT */const char* path);

 extern int uvm_memory_load(/* INPUT */const char* nid, /* INPUT */const char* scope, /* INPUT */const char* fileName, /* INPUT */const char* radix, /* INPUT */const char* startaddr, /* INPUT */const char* endaddr, /* INPUT */const char* types);

 extern SV_STRING uvm_dpi_get_next_arg_c(/* INPUT */int init);

 extern SV_STRING uvm_dpi_get_tool_name_c();

 extern SV_STRING uvm_dpi_get_tool_version_c();

 extern void* uvm_dpi_regcomp(/* INPUT */const char* regex);

 extern int uvm_dpi_regexec(/* INPUT */void* preg, /* INPUT */const char* str);

 extern void uvm_dpi_regfree(/* INPUT */void* preg);

 extern int uvm_re_match(/* INPUT */const char* re, /* INPUT */const char* str);

 extern void uvm_dump_re_cache();

 extern SV_STRING uvm_glob_to_re(/* INPUT */const char* glob);

 extern void m__uvm_report_dpi(/* INPUT */int severity, /* INPUT */const char* id, /* INPUT */const char* message, /* INPUT */int verbosity, /* INPUT */const char* filename, /* INPUT */int line);

 extern void read_elf(/* INPUT */const char* filename);

 extern char get_section(/* OUTPUT */long long *address, /* OUTPUT */long long *len);

 extern void read_section_sv(/* INPUT */long long address, const /* INOUT */svOpenArrayHandle buffer);

 extern void* svapfGetAttempt(/* INPUT */unsigned int assertHandle);

 extern void svapfReportResult(/* INPUT */unsigned int assertHandle, /* INPUT */void* ptrAttempt, /* INPUT */int result);

 extern int svapfGetAssertEnabled(/* INPUT */unsigned int assertHandle);

 extern char read_symbol(/* INPUT */const char* symbol_name, /* INOUT */unsigned long long *address);

 extern void read_elf(/* INPUT */const char* filename);

 extern char get_section(/* OUTPUT */long long *address, /* OUTPUT */long long *len);

 extern void read_section_sv(/* INPUT */long long address, const /* INOUT */svOpenArrayHandle buffer);

 extern int debug_tick(/* OUTPUT */unsigned char *debug_req_valid, /* INPUT */unsigned char debug_req_ready, /* OUTPUT */int *debug_req_bits_addr, /* OUTPUT */int *debug_req_bits_op, /* OUTPUT */int *debug_req_bits_data, /* INPUT */unsigned char debug_resp_valid, /* OUTPUT */unsigned char *debug_resp_ready, /* INPUT */int debug_resp_bits_resp, /* INPUT */int debug_resp_bits_data);

 extern int jtag_tick(/* OUTPUT */unsigned char *jtag_TCK, /* OUTPUT */unsigned char *jtag_TMS, /* OUTPUT */unsigned char *jtag_TDI, /* OUTPUT */unsigned char *jtag_TRSTn, /* INPUT */unsigned char jtag_TDO);
void SdisableFork();

#ifdef __cplusplus
}
#endif


#endif //#ifndef _VC_HDRS_H

