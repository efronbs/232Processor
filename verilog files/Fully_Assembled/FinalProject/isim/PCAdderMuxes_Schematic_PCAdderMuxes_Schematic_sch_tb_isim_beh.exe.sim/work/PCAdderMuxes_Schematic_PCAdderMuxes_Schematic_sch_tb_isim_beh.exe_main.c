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
    work_m_00000000004131340446_0038273576_init();
    work_m_00000000002860541450_1095763987_init();
    work_m_00000000002763926914_1396712204_init();
    work_m_00000000003121229501_3584705648_init();
    work_m_00000000001864742433_4138148300_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001864742433_4138148300");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
