#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2818b20 .scope module, "demorgan_test" "demorgan_test" 2 4;
 .timescale 0 0;
v0x2840730_0 .var "A", 0 0;
v0x2840880_0 .net "AandB", 0 0, L_0x28412e0;  1 drivers
v0x2840940_0 .net "AorB", 0 0, L_0x28415c0;  1 drivers
v0x2840a40_0 .var "B", 0 0;
RS_0x7f1a1c623078 .resolv tri, L_0x2841020, L_0x28413c0;
v0x2840b70_0 .net8 "nA", 0 0, RS_0x7f1a1c623078;  2 drivers
v0x2840c10_0 .net "nAandB", 0 0, L_0x2841350;  1 drivers
v0x2840cb0_0 .net "nAandnB", 0 0, L_0x2841100;  1 drivers
v0x2840d50_0 .net "nAorB", 0 0, L_0x2840810;  1 drivers
v0x2840e20_0 .net "nAornB", 0 0, L_0x28414e0;  1 drivers
RS_0x7f1a1c6230d8 .resolv tri, L_0x2841090, L_0x2841450;
v0x2840f80_0 .net8 "nB", 0 0, RS_0x7f1a1c6230d8;  2 drivers
S_0x2818ca0 .scope module, "dut1" "demorgan_1" 2 10, 3 2 0, S_0x2818b20;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAandnB"
L_0x2841020 .functor NOT 1, v0x2840730_0, C4<0>, C4<0>, C4<0>;
L_0x2841090 .functor NOT 1, v0x2840a40_0, C4<0>, C4<0>, C4<0>;
L_0x2841100 .functor AND 1, RS_0x7f1a1c623078, RS_0x7f1a1c6230d8, C4<1>, C4<1>;
v0x2819c40_0 .net "A", 0 0, v0x2840730_0;  1 drivers
v0x283f030_0 .net "B", 0 0, v0x2840a40_0;  1 drivers
v0x283f0f0_0 .net8 "nA", 0 0, RS_0x7f1a1c623078;  alias, 2 drivers
v0x283f1c0_0 .net "nAandnB", 0 0, L_0x2841100;  alias, 1 drivers
v0x283f280_0 .net8 "nB", 0 0, RS_0x7f1a1c6230d8;  alias, 2 drivers
S_0x283f430 .scope module, "dut2" "demorgan_2" 2 16, 3 20 0, S_0x2818b20;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "AandB"
    .port_info 3 /OUTPUT 1 "nAandB"
L_0x28412e0 .functor AND 1, v0x2840730_0, v0x2840a40_0, C4<1>, C4<1>;
L_0x2841350 .functor NOT 1, L_0x28412e0, C4<0>, C4<0>, C4<0>;
v0x283f690_0 .net "A", 0 0, v0x2840730_0;  alias, 1 drivers
v0x283f760_0 .net "AandB", 0 0, L_0x28412e0;  alias, 1 drivers
v0x283f800_0 .net "B", 0 0, v0x2840a40_0;  alias, 1 drivers
v0x283f900_0 .net "nAandB", 0 0, L_0x2841350;  alias, 1 drivers
S_0x283fa30 .scope module, "dut3" "demorgan_3" 2 20, 3 36 0, S_0x2818b20;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAornB"
L_0x28413c0 .functor NOT 1, v0x2840730_0, C4<0>, C4<0>, C4<0>;
L_0x2841450 .functor NOT 1, v0x2840a40_0, C4<0>, C4<0>, C4<0>;
L_0x28414e0 .functor OR 1, RS_0x7f1a1c623078, RS_0x7f1a1c6230d8, C4<0>, C4<0>;
v0x283fcb0_0 .net "A", 0 0, v0x2840730_0;  alias, 1 drivers
v0x283fda0_0 .net "B", 0 0, v0x2840a40_0;  alias, 1 drivers
v0x283feb0_0 .net8 "nA", 0 0, RS_0x7f1a1c623078;  alias, 2 drivers
v0x283ff50_0 .net "nAornB", 0 0, L_0x28414e0;  alias, 1 drivers
v0x283fff0_0 .net8 "nB", 0 0, RS_0x7f1a1c6230d8;  alias, 2 drivers
S_0x2840150 .scope module, "dut4" "demorgan_4" 2 26, 3 54 0, S_0x2818b20;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "AorB"
    .port_info 3 /OUTPUT 1 "nAorB"
L_0x28415c0 .functor OR 1, v0x2840730_0, v0x2840a40_0, C4<0>, C4<0>;
L_0x2840810 .functor NOT 1, L_0x28415c0, C4<0>, C4<0>, C4<0>;
v0x2840390_0 .net "A", 0 0, v0x2840730_0;  alias, 1 drivers
v0x2840450_0 .net "AorB", 0 0, L_0x28415c0;  alias, 1 drivers
v0x2840510_0 .net "B", 0 0, v0x2840a40_0;  alias, 1 drivers
v0x28405e0_0 .net "nAorB", 0 0, L_0x2840810;  alias, 1 drivers
    .scope S_0x2818b20;
T_0 ;
    %vpi_call 2 31 "$display", "A B | A*B | ~(A*B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 33 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840880_0, v0x2840c10_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 35 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840880_0, v0x2840c10_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 37 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840880_0, v0x2840c10_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 39 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840880_0, v0x2840c10_0 {0 0 0};
    %vpi_call 2 41 "$display", "A B | ~A ~B | (~A)+(~B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 43 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840e20_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 45 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840e20_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 47 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840e20_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 49 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840e20_0 {0 0 0};
    %vpi_call 2 51 "$display", "A B | ~A ~B | (~A)*(~B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 53 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840cb0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 55 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840cb0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 57 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840cb0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 59 "$display", "%b %b |  %b  %b |    %b  ", v0x2840730_0, v0x2840a40_0, v0x2840b70_0, v0x2840f80_0, v0x2840cb0_0 {0 0 0};
    %vpi_call 2 61 "$display", "A B | A+B | ~(A+B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 63 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840940_0, v0x2840d50_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 65 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840940_0, v0x2840d50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 67 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840940_0, v0x2840d50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840730_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2840a40_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 69 "$display", "%b %b | %b |    %b ", v0x2840730_0, v0x2840a40_0, v0x2840940_0, v0x2840d50_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
