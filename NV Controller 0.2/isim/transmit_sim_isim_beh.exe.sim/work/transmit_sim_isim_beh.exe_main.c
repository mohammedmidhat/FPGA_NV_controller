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
    unisims_ver_m_02559913855606211520_0848181053_init();
    work_m_05093699128203502539_1678943863_init();
    work_m_07839430046145568395_2232249084_init();
    work_m_04735343800582918241_2582214024_init();
    work_m_01753362588639049732_4217414517_init();
    work_m_16678692178470582876_3211813572_init();
    work_m_13553450944225895776_2273218173_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_13553450944225895776_2273218173");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
