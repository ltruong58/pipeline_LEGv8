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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003222339913_3765787238_init();
    work_m_00000000004154187029_2323960936_init();
    work_m_00000000001047641859_0833183191_init();
    work_m_00000000003910638336_0765933608_init();
    work_m_00000000002205054323_2352116331_init();
    work_m_00000000002864629139_3024195590_init();
    work_m_00000000002060033344_1938225339_init();
    work_m_00000000003222339913_0350754632_init();
    work_m_00000000001456691877_2412880366_init();
    work_m_00000000000124112270_0254784918_init();
    work_m_00000000000964269198_1648104263_init();
    work_m_00000000001244985401_0338018240_init();
    work_m_00000000000894709408_4231019343_init();
    work_m_00000000001449802435_0521297041_init();
    work_m_00000000000182785752_0886308060_init();
    work_m_00000000000260296874_0012817201_init();
    work_m_00000000000181098357_2096589207_init();
    work_m_00000000003935095592_1783167462_init();
    work_m_00000000003387649872_4284950183_init();
    work_m_00000000004255242049_1620069944_init();
    work_m_00000000001689920172_1595836845_init();
    work_m_00000000004048666349_1200043877_init();
    work_m_00000000001891001969_1857047908_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001891001969_1857047908");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
