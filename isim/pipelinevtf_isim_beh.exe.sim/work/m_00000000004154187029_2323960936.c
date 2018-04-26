/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/CSULB/New folder/pipeline_MIPS/PCRegister.v";
static int ng1[] = {4, 0, 0, 0};



static void Initial_17_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;

LAB0:    xsi_set_current_line(17, ng0);

LAB2:    xsi_set_current_line(18, ng0);
    t2 = ((char*)((ng1)));
    xsi_vlog_signed_unary_minus(t1, 64, t2, 32);
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t1, 0, 0, 64);

LAB1:    return;
}

static void Always_21_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 1588U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1784);
    *((int *)t2) = 1;
    t3 = (t0 + 1616);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(22, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t0 + 920);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 64);
    goto LAB2;

}


extern void work_m_00000000004154187029_2323960936_init()
{
	static char *pe[] = {(void *)Initial_17_0,(void *)Always_21_1};
	xsi_register_didat("work_m_00000000004154187029_2323960936", "isim/pipelinevtf_isim_beh.exe.sim/work/m_00000000004154187029_2323960936.didat");
	xsi_register_executes(pe);
}
