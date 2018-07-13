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
static const char *ng0 = "/home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TrafficControllerFSM.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {66U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {34U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {24U, 0U};
static unsigned int ng11[] = {6U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {20U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {19U, 0U};
static unsigned int ng16[] = {9U, 0U};
static unsigned int ng17[] = {12U, 0U};
static unsigned int ng18[] = {14U, 0U};
static unsigned int ng19[] = {23U, 0U};
static int ng20[] = {10, 0};



static void Always_60_0(char *t0)
{
    char t13[8];
    char t18[8];
    char t25[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    int t64;

LAB0:    t1 = (t0 + 6688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7008);
    *((int *)t2) = 1;
    t3 = (t0 + 6720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(62, ng0);

LAB5:    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4016);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4176);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3296U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t2) != 0)
        goto LAB12;

LAB13:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB14;

LAB15:    memcpy(t25, t13, 8);

LAB16:    t53 = (t25 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t25);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3616U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t2) == 0)
        goto LAB28;

LAB30:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB31:    t5 = (t13 + 4);
    t11 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t11) != 0)
        goto LAB33;

LAB32:    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 1U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 1U);
    t12 = (t13 + 4);
    t23 = *((unsigned int *)t12);
    t26 = (~(t23));
    t27 = *((unsigned int *)t13);
    t28 = (t27 & t26);
    t32 = (t28 != 0);
    if (t32 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3616U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB56;

LAB57:
LAB58:
LAB36:
LAB26:    goto LAB2;

LAB6:    xsi_set_current_line(66, ng0);

LAB9:    xsi_set_current_line(67, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4176);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB14:    t11 = (t0 + 3456U);
    t12 = *((char **)t11);
    memset(t18, 0, 8);
    t11 = (t12 + 4);
    t19 = *((unsigned int *)t11);
    t20 = (~(t19));
    t21 = *((unsigned int *)t12);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t11) != 0)
        goto LAB19;

LAB20:    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t18);
    t28 = (t26 | t27);
    *((unsigned int *)t25) = t28;
    t29 = (t13 + 4);
    t30 = (t18 + 4);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t30);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t18) = 1;
    goto LAB20;

LAB19:    t24 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB20;

LAB21:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t37 | t38);
    t39 = (t13 + 4);
    t40 = (t18 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (~(t41));
    t43 = *((unsigned int *)t13);
    t44 = (t43 & t42);
    t45 = *((unsigned int *)t40);
    t46 = (~(t45));
    t47 = *((unsigned int *)t18);
    t48 = (t47 & t46);
    t49 = (~(t44));
    t50 = (~(t48));
    t51 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t51 & t49);
    t52 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t52 & t50);
    goto LAB23;

LAB24:    xsi_set_current_line(71, ng0);

LAB27:    xsi_set_current_line(72, ng0);
    t59 = ((char*)((ng2)));
    t60 = (t0 + 5616);
    xsi_vlogvar_assign_value(t60, t59, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB26;

LAB28:    *((unsigned int *)t13) = 1;
    goto LAB31;

LAB33:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t13) = (t16 | t17);
    t19 = *((unsigned int *)t5);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t5) = (t19 | t20);
    goto LAB32;

LAB34:    xsi_set_current_line(77, ng0);

LAB37:    xsi_set_current_line(78, ng0);
    t24 = (t0 + 5776);
    t29 = (t24 + 56U);
    t30 = *((char **)t29);

LAB38:    t31 = ((char*)((ng3)));
    t44 = xsi_vlog_unsigned_case_compare(t30, 3, t31, 3);
    if (t44 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng5)));
    t44 = xsi_vlog_unsigned_case_compare(t30, 3, t2, 3);
    if (t44 == 1)
        goto LAB41;

LAB42:    t3 = ((char*)((ng6)));
    t48 = xsi_vlog_unsigned_case_compare(t30, 3, t3, 3);
    if (t48 == 1)
        goto LAB43;

LAB44:    t4 = ((char*)((ng7)));
    t64 = xsi_vlog_unsigned_case_compare(t30, 3, t4, 3);
    if (t64 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng9)));
    t44 = xsi_vlog_unsigned_case_compare(t30, 3, t2, 3);
    if (t44 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng11)));
    t44 = xsi_vlog_unsigned_case_compare(t30, 3, t2, 3);
    if (t44 == 1)
        goto LAB49;

LAB50:    t3 = ((char*)((ng12)));
    t48 = xsi_vlog_unsigned_case_compare(t30, 3, t3, 3);
    if (t48 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng14)));
    t44 = xsi_vlog_unsigned_case_compare(t30, 3, t2, 3);
    if (t44 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB36;

LAB39:    xsi_set_current_line(80, ng0);
    t39 = ((char*)((ng4)));
    t40 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t40, t39, 0, 0, 1, 0LL);
    t53 = (t0 + 5456);
    xsi_vlogvar_wait_assign_value(t53, t39, 1, 0, 1, 0LL);
    t59 = (t0 + 5296);
    xsi_vlogvar_wait_assign_value(t59, t39, 2, 0, 1, 0LL);
    t60 = (t0 + 5136);
    xsi_vlogvar_wait_assign_value(t60, t39, 3, 0, 1, 0LL);
    t61 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t61, t39, 4, 0, 1, 0LL);
    t62 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t62, t39, 5, 0, 1, 0LL);
    t63 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t63, t39, 6, 0, 1, 0LL);
    goto LAB55;

LAB41:    goto LAB39;

LAB43:    goto LAB39;

LAB45:    xsi_set_current_line(82, ng0);
    t5 = ((char*)((ng8)));
    t11 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 1, 0LL);
    t12 = (t0 + 5456);
    xsi_vlogvar_wait_assign_value(t12, t5, 1, 0, 1, 0LL);
    t24 = (t0 + 5296);
    xsi_vlogvar_wait_assign_value(t24, t5, 2, 0, 1, 0LL);
    t29 = (t0 + 5136);
    xsi_vlogvar_wait_assign_value(t29, t5, 3, 0, 1, 0LL);
    t31 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t31, t5, 4, 0, 1, 0LL);
    t39 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t39, t5, 5, 0, 1, 0LL);
    t40 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t40, t5, 6, 0, 1, 0LL);
    goto LAB55;

LAB47:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    t5 = (t0 + 5456);
    xsi_vlogvar_wait_assign_value(t5, t3, 1, 0, 1, 0LL);
    t11 = (t0 + 5296);
    xsi_vlogvar_wait_assign_value(t11, t3, 2, 0, 1, 0LL);
    t12 = (t0 + 5136);
    xsi_vlogvar_wait_assign_value(t12, t3, 3, 0, 1, 0LL);
    t24 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t24, t3, 4, 0, 1, 0LL);
    t29 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t29, t3, 5, 0, 1, 0LL);
    t31 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t31, t3, 6, 0, 1, 0LL);
    goto LAB55;

LAB49:    goto LAB47;

LAB51:    xsi_set_current_line(86, ng0);
    t4 = ((char*)((ng13)));
    t5 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    t11 = (t0 + 5456);
    xsi_vlogvar_wait_assign_value(t11, t4, 1, 0, 1, 0LL);
    t12 = (t0 + 5296);
    xsi_vlogvar_wait_assign_value(t12, t4, 2, 0, 1, 0LL);
    t24 = (t0 + 5136);
    xsi_vlogvar_wait_assign_value(t24, t4, 3, 0, 1, 0LL);
    t29 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t29, t4, 4, 0, 1, 0LL);
    t31 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t31, t4, 5, 0, 1, 0LL);
    t39 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t39, t4, 6, 0, 1, 0LL);
    goto LAB55;

LAB53:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    t5 = (t0 + 5456);
    xsi_vlogvar_wait_assign_value(t5, t3, 1, 0, 1, 0LL);
    t11 = (t0 + 5296);
    xsi_vlogvar_wait_assign_value(t11, t3, 2, 0, 1, 0LL);
    t12 = (t0 + 5136);
    xsi_vlogvar_wait_assign_value(t12, t3, 3, 0, 1, 0LL);
    t24 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t24, t3, 4, 0, 1, 0LL);
    t29 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t29, t3, 5, 0, 1, 0LL);
    t31 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t31, t3, 6, 0, 1, 0LL);
    goto LAB55;

LAB56:    xsi_set_current_line(92, ng0);

LAB59:    xsi_set_current_line(93, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 5616);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB60:    t5 = ((char*)((ng3)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t44 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng6)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng5)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng7)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng9)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng11)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng12)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB73;

LAB74:    t2 = ((char*)((ng14)));
    t44 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t44 == 1)
        goto LAB75;

LAB76:
LAB78:
LAB77:    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB79:    goto LAB58;

LAB61:    xsi_set_current_line(96, ng0);
    t11 = (t0 + 2976U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t12);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB80;

LAB81:    xsi_set_current_line(101, ng0);

LAB84:    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    t5 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t5, t2, 3, 0, 2, 0LL);

LAB82:    goto LAB79;

LAB63:    xsi_set_current_line(105, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    t11 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t11, t3, 3, 0, 2, 0LL);
    goto LAB79;

LAB65:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    t11 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t11, t3, 3, 0, 2, 0LL);
    goto LAB79;

LAB67:    xsi_set_current_line(109, ng0);
    t3 = (t0 + 3136U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB85;

LAB86:    xsi_set_current_line(114, ng0);

LAB89:    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    t5 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t5, t2, 3, 0, 2, 0LL);

LAB87:    goto LAB79;

LAB69:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 2976U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB90;

LAB91:    xsi_set_current_line(123, ng0);

LAB94:    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    t5 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t5, t2, 3, 0, 2, 0LL);

LAB92:    goto LAB79;

LAB71:    xsi_set_current_line(127, ng0);

LAB95:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng19)));
    t5 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    t11 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t11, t3, 3, 0, 2, 0LL);
    goto LAB79;

LAB73:    xsi_set_current_line(131, ng0);

LAB96:    xsi_set_current_line(132, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    t11 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t11, t3, 3, 0, 2, 0LL);
    goto LAB79;

LAB75:    xsi_set_current_line(135, ng0);

LAB97:    xsi_set_current_line(136, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB79;

LAB80:    xsi_set_current_line(97, ng0);

LAB83:    xsi_set_current_line(98, ng0);
    t24 = ((char*)((ng16)));
    t29 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t29, t24, 0, 0, 3, 0LL);
    t31 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t31, t24, 3, 0, 2, 0LL);
    goto LAB82;

LAB85:    xsi_set_current_line(110, ng0);

LAB88:    xsi_set_current_line(111, ng0);
    t11 = ((char*)((ng17)));
    t12 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    t24 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t24, t11, 3, 0, 2, 0LL);
    goto LAB87;

LAB90:    xsi_set_current_line(119, ng0);

LAB93:    xsi_set_current_line(120, ng0);
    t11 = ((char*)((ng18)));
    t12 = (t0 + 5776);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    t24 = (t0 + 4336);
    xsi_vlogvar_wait_assign_value(t24, t11, 3, 0, 2, 0LL);
    goto LAB92;

}


extern void work_m_04521801858242183743_1977479597_init()
{
	static char *pe[] = {(void *)Always_60_0};
	xsi_register_didat("work_m_04521801858242183743_1977479597", "isim/TestTrafficController_isim_beh.exe.sim/work/m_04521801858242183743_1977479597.didat");
	xsi_register_executes(pe);
}
