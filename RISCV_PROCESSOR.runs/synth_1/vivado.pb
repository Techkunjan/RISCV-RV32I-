
�
Command: %s
1870*	planAhead2
}read_checkpoint -auto_incremental -incremental K:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2P
NK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7s50csga324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
y
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xc7s50Z17-347h px� 
i
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xc7s50Z17-349h px� 
D
Loading part %s157*device2
xc7s50csga324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14468Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1009.688 ; gain = 466.578
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
PCSrc2
wire2N
JK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/riscvsingle.v2
448@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clk2
wire2F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/top.v2
1878@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/top.v2
1698@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
riscvsingle2
 2N
JK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/riscvsingle.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

controller2
 2M
IK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/controller.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
maindec2
 2J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/maindec.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
maindec2
 2
02
12J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/maindec.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
aludec2
 2I
EK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/aludec.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aludec2
 2
02
12I
EK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/aludec.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

controller2
 2
02
12M
IK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/controller.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

datapath2
 2K
GK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/datapath.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
flopr2
 2H
DK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/flopr.v2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
flopr2
 2
02
12H
DK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/flopr.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2
 2H
DK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/adder.v2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2
 2
02
12H
DK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/adder.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux22
 2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/mux2.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux22
 2
02
12G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/mux2.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
regfile2
 2J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/regfile.v2
228@Z8-6157h px� 
�
%s, ignoring3604*oasys2x
vcould not open $readmem data file 'riscreg.txt'; please make sure the file is added to project and has read permission2J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/regfile.v2
348@Z8-4445h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
time2J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/regfile.v2
508@Z8-11581h px� 
�
display: %s251*oasys2=
;Time: 1'b0 | Read: a1=x (rd1=xxxxxxxx), a2=x (rd2=xxxxxxxx)2J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/regfile.v2
498@Z8-251h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
regfile2
 2
02
12J
FK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/regfile.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
extend2
 2I
EK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/extend.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
extend2
 2
02
12I
EK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/extend.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2
 2F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/alu.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2
 2
02
12F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/alu.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux32
 2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/mux3.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux32
 2
02
12G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/mux3.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

datapath2
 2
02
12K
GK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/datapath.v2
228@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
riscvsingle2
 2
02
12N
JK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/riscvsingle.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
	ALUResult2
322
riscvsingle2F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/top.v2
1928@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
imem2
 2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/imem.v2
238@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
riscvtest.txt2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/imem.v2
318@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
imem2
 2
02
12G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/imem.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dmem2
 2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/dmem.v2
218@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
riscdata.txt2G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/dmem.v2
318@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dmem2
 2
02
12G
CK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/dmem.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
clock_divider2
 2P
LK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/clock_divider.v2
448@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clock_divider2
 2
02
12P
LK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/clock_divider.v2
448@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/top.v2
1698@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
DataAdr2
top2F
BK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/sources_1/new/top.v2
1818@Z8-3848h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[31]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[30]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[29]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[28]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[27]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[26]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[25]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[24]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[23]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[22]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[21]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[20]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[19]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[18]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[17]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[16]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[15]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[14]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[13]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[12]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[11]2
dmemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[10]2
dmemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[9]2
dmemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[8]2
dmemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[1]2
dmemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[0]2
dmemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[1]2
imemZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[0]2
imemZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[6]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[5]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[4]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[3]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[2]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[1]2

datapathZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[0]2

datapathZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1115.840 ; gain = 572.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1115.840 ; gain = 572.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1115.840 ; gain = 572.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0122

1115.8402
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2P
LK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2P
LK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2N
LK:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.srcs/constrs_1/new/constraints.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1191.2852
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0022

1191.2852
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.285 ; gain = 648.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7s50csga324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.285 ; gain = 648.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.285 ; gain = 648.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.285 ; gain = 648.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
W
%s
*synth2?
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  22 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:22 . Memory (MB): peak = 1191.285 ; gain = 648.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
u
%s*synth2]
[+------------+-----------------------+-----------+----------------------+----------------+
h px� 
v
%s*synth2^
\|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives     | 
h px� 
u
%s*synth2]
[+------------+-----------------------+-----------+----------------------+----------------+
h px� 
v
%s*synth2^
\|top         | dmem/RAM_reg          | Implied   | 64 x 32              | RAM64X1S x 32  | 
h px� 
v
%s*synth2^
\|top         | rvsingle/dp/rf/rf_reg | Implied   | 32 x 32              | RAM32M x 12    | 
h px� 
v
%s*synth2^
\+------------+-----------------------+-----------+----------------------+----------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:30 . Memory (MB): peak = 1308.648 ; gain = 765.539
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:30 . Memory (MB): peak = 1309.094 ; gain = 765.984
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
u
%s
*synth2]
[+------------+-----------------------+-----------+----------------------+----------------+
h p
x
� 
v
%s
*synth2^
\|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives     | 
h p
x
� 
u
%s
*synth2]
[+------------+-----------------------+-----------+----------------------+----------------+
h p
x
� 
v
%s
*synth2^
\|top         | dmem/RAM_reg          | Implied   | 64 x 32              | RAM64X1S x 32  | 
h p
x
� 
v
%s
*synth2^
\|top         | rvsingle/dp/rf/rf_reg | Implied   | 32 x 32              | RAM32M x 12    | 
h p
x
� 
v
%s
*synth2^
\+------------+-----------------------+-----------+----------------------+----------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 1339.078 ; gain = 795.969
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     2|
h px� 
4
%s*synth2
|2     |CARRY4   |    51|
h px� 
4
%s*synth2
|3     |LUT1     |     2|
h px� 
4
%s*synth2
|4     |LUT2     |    10|
h px� 
4
%s*synth2
|5     |LUT3     |    32|
h px� 
4
%s*synth2
|6     |LUT4     |    19|
h px� 
4
%s*synth2
|7     |LUT5     |   103|
h px� 
4
%s*synth2
|8     |LUT6     |   267|
h px� 
4
%s*synth2
|9     |RAM32M   |    10|
h px� 
4
%s*synth2
|10    |RAM32X1D |     4|
h px� 
4
%s*synth2
|11    |RAM64X1S |    32|
h px� 
4
%s*synth2
|12    |FDCE     |    32|
h px� 
4
%s*synth2
|13    |FDRE     |    28|
h px� 
4
%s*synth2
|14    |IBUF     |     2|
h px� 
4
%s*synth2
|15    |OBUF     |     8|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory (MB): peak = 1534.840 ; gain = 916.285
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:35 . Memory (MB): peak = 1534.840 ; gain = 991.730
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0102

1544.0232
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
97Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1547.6642
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 46 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
  RAM64X1S => RAM64X1S (RAMS64E): 32 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

48c92e33Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582
392
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:322

00:00:412

1547.6642

1177.738Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0042

1547.6642
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2@
>K:/Vivado/RISCV_PROCESSOR/RISCV_PROCESSOR.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Mar 24 22:51:31 2025Z17-206h px� 


End Record