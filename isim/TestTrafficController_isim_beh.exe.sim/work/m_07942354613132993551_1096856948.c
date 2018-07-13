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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TimeParameters.v";
static unsigned int ng1[] = {6U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {15U, 0U};



static void Always_45_0(char *t0)
{
    char t14[8];
    char t15[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;

LAB0:    t1 = (t0 + 4592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4912);
    *((int *)t2) = 1;
    t3 = (t0 + 4624);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 2320U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(68, ng0);

LAB76:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2640U);
    t3 = *((char **)t2);

LAB77:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB78;

LAB79:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB80;

LAB81:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB82;

LAB83:
LAB85:
LAB84:    xsi_set_current_line(74, ng0);

LAB87:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 3200);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);

LAB86:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(49, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3360);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB8;

LAB10:    xsi_set_current_line(54, ng0);

LAB13:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2480U);
    t5 = *((char **)t4);

LAB14:    t4 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(60, ng0);

LAB75:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB23:    goto LAB12;

LAB15:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 2800U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng4)));
    memset(t16, 0, 8);
    t17 = (t12 + 4);
    t18 = (t11 + 4);
    t19 = *((unsigned int *)t12);
    t20 = *((unsigned int *)t11);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t17);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t18);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB27;

LAB24:    if (t28 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t16) = 1;

LAB27:    memset(t15, 0, 8);
    t32 = (t16 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t32) != 0)
        goto LAB30;

LAB31:    t39 = (t15 + 4);
    t40 = *((unsigned int *)t15);
    t41 = *((unsigned int *)t39);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB32;

LAB33:    t44 = *((unsigned int *)t15);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t39) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t15) > 0)
        goto LAB38;

LAB39:    memcpy(t14, t49, 8);

LAB40:    t48 = (t0 + 3360);
    xsi_vlogvar_assign_value(t48, t14, 0, 0, 4);
    goto LAB23;

LAB17:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2800U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t16, 0, 8);
    t11 = (t4 + 4);
    t12 = (t3 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t3);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t19 = (t9 ^ t10);
    t20 = (t8 | t19);
    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t12);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB44;

LAB41:    if (t23 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t16) = 1;

LAB44:    memset(t15, 0, 8);
    t18 = (t16 + 4);
    t26 = *((unsigned int *)t18);
    t27 = (~(t26));
    t28 = *((unsigned int *)t16);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t18) != 0)
        goto LAB47;

LAB48:    t32 = (t15 + 4);
    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB49;

LAB50:    t36 = *((unsigned int *)t15);
    t37 = (~(t36));
    t40 = *((unsigned int *)t32);
    t41 = (t37 || t40);
    if (t41 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t32) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t15) > 0)
        goto LAB55;

LAB56:    memcpy(t14, t43, 8);

LAB57:    t39 = (t0 + 3520);
    xsi_vlogvar_assign_value(t39, t14, 0, 0, 4);
    goto LAB23;

LAB19:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 2800U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t16, 0, 8);
    t11 = (t4 + 4);
    t12 = (t3 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t3);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t19 = (t9 ^ t10);
    t20 = (t8 | t19);
    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t12);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB61;

LAB58:    if (t23 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t16) = 1;

LAB61:    memset(t15, 0, 8);
    t18 = (t16 + 4);
    t26 = *((unsigned int *)t18);
    t27 = (~(t26));
    t28 = *((unsigned int *)t16);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t18) != 0)
        goto LAB64;

LAB65:    t32 = (t15 + 4);
    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB66;

LAB67:    t36 = *((unsigned int *)t15);
    t37 = (~(t36));
    t40 = *((unsigned int *)t32);
    t41 = (t37 || t40);
    if (t41 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t32) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t15) > 0)
        goto LAB72;

LAB73:    memcpy(t14, t43, 8);

LAB74:    t39 = (t0 + 3680);
    xsi_vlogvar_assign_value(t39, t14, 0, 0, 4);
    goto LAB23;

LAB26:    t31 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t15) = 1;
    goto LAB31;

LAB30:    t38 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB31;

LAB32:    t43 = ((char*)((ng1)));
    goto LAB33;

LAB34:    t48 = (t0 + 2800U);
    t49 = *((char **)t48);
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t14, 4, t43, 4, t49, 4);
    goto LAB40;

LAB38:    memcpy(t14, t43, 8);
    goto LAB40;

LAB43:    t17 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB44;

LAB45:    *((unsigned int *)t15) = 1;
    goto LAB48;

LAB47:    t31 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB48;

LAB49:    t38 = ((char*)((ng2)));
    goto LAB50;

LAB51:    t39 = (t0 + 2800U);
    t43 = *((char **)t39);
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t14, 4, t38, 4, t43, 4);
    goto LAB57;

LAB55:    memcpy(t14, t38, 8);
    goto LAB57;

LAB60:    t17 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t15) = 1;
    goto LAB65;

LAB64:    t31 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB65;

LAB66:    t38 = ((char*)((ng2)));
    goto LAB67;

LAB68:    t39 = (t0 + 2800U);
    t43 = *((char **)t39);
    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t14, 4, t38, 4, t43, 4);
    goto LAB74;

LAB72:    memcpy(t14, t38, 8);
    goto LAB74;

LAB78:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 3360);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t17 = (t0 + 3200);
    xsi_vlogvar_assign_value(t17, t12, 0, 0, 4);
    goto LAB86;

LAB80:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 3520);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t17 = (t0 + 3200);
    xsi_vlogvar_assign_value(t17, t12, 0, 0, 4);
    goto LAB86;

LAB82:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 3680);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t17 = (t0 + 3200);
    xsi_vlogvar_assign_value(t17, t12, 0, 0, 4);
    goto LAB86;

}


extern void work_m_07942354613132993551_1096856948_init()
{
	static char *pe[] = {(void *)Always_45_0};
	xsi_register_didat("work_m_07942354613132993551_1096856948", "isim/TestTrafficController_isim_beh.exe.sim/work/m_07942354613132993551_1096856948.didat");
	xsi_register_executes(pe);
}
