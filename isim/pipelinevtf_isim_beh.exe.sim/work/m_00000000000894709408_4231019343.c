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
static const char *ng0 = "D:/CSULB/New folder/pipeline_MIPS/alu.v";
static unsigned int ng1[] = {5456U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {5200U, 0U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {5208U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {5720U, 0U};
static int ng8[] = {6, 0};
static unsigned int ng9[] = {0U, 0U};
static int ng10[] = {7, 0};



static void Always_47_0(char *t0)
{
    char t4[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1640);
    *((int *)t2) = 1;
    t3 = (t0 + 1472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    t5 = (t0 + 600U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 13, 13, 2U, t7, 2, t6, 11);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t5, 13);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 13, t2, 13);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);

LAB16:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 600U);
    t5 = *((char **)t2);
    t2 = (t0 + 576U);
    t6 = (t2 + 44U);
    t7 = *((char **)t6);
    t9 = ((char*)((ng4)));
    xsi_vlog_generic_get_index_select_value(t11, 32, t5, t7, 2, t9, 32, 1);

LAB20:    t10 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 32, t10, 32);
    if (t8 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 4, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(55, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 4, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(58, ng0);
    t12 = ((char*)((ng10)));
    t13 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 4, 0LL);
    goto LAB23;

}


extern void work_m_00000000000894709408_4231019343_init()
{
	static char *pe[] = {(void *)Always_47_0};
	xsi_register_didat("work_m_00000000000894709408_4231019343", "isim/pipelinevtf_isim_beh.exe.sim/work/m_00000000000894709408_4231019343.didat");
	xsi_register_executes(pe);
}
