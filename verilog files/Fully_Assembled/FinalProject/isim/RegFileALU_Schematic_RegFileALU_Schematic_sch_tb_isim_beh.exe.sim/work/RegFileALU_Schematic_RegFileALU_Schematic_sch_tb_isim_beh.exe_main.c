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
    work_m_00000000003163504259_3862822292_init();
    work_m_00000000002685544623_0252012818_init();
    work_m_00000000002763926914_1396712204_init();
    work_m_00000000002763926914_1662838867_init();
    work_m_00000000002831839656_0166136161_init();
    work_m_00000000002836030633_0941409475_init();
    work_m_00000000001183417275_3286167537_init();
    work_m_00000000001832159901_2468406867_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001832159901_2468406867");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
