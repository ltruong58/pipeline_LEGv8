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
static const char *ng0 = "D:/CSULB/New folder/pipeline_MIPS/IFIDRegister.v";
static int ng1[] = {32, 0};



static void Always_21_0(char *t0)
{
    char t4[520];
    char t5[8];
    char t15[512];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1748);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(22, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t6 = (t0 + 600U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 4294967295U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 4294967295U);
    t16 = ((char*)((ng1)));
    t18 = (t0 + 692U);
    t19 = *((char **)t18);
    xsi_vlog_get_part_select_value(t17, 64, t19, 63, 0);
    xsi_vlog_mul_concat(t15, 2048, 64, t16, 1U, t17, 64);
    xsi_vlogtype_concat(t4, 2080, 2080, 2U, t15, 2048, t5, 32);
    t18 = (t0 + 1196);
    xsi_vlogvar_assign_value(t18, t4, 0, 0, 96);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    memset(t5, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 4294967295U);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 4294967295U);
    t16 = (t0 + 1012);
    xsi_vlogvar_assign_value(t16, t5, 0, 0, 32);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    xsi_vlog_get_part_select_value(t17, 64, t6, 95, 32);
    t7 = (t0 + 1104);
    xsi_vlogvar_assign_value(t7, t17, 0, 0, 64);
    goto LAB2;

}

static void Always_28_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2068);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    goto LAB2;

}


extern void work_m_00000000002864629139_3024195590_init()
{
	static char *pe[] = {(void *)Always_21_0,(void *)Always_28_1};
	xsi_register_didat("work_m_00000000002864629139_3024195590", "isim/pipelinevtf_isim_beh.exe.sim/work/m_00000000002864629139_3024195590.didat");
	xsi_register_executes(pe);
}
