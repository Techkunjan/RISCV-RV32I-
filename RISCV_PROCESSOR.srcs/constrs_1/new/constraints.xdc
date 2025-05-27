## Clock Input
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {clkin}]

set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {reset}]

set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {ALUResult[0]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS33} [get_ports {ALUResult[1]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports {ALUResult[2]}]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports {ALUResult[3]}]
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports {ALUResult[4]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {ALUResult[5]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {ALUResult[6]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {ALUResult[7]}]

### LEDs (Displaying LSB 8-bits of ALUResult)
#set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
#set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
#set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
#set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
#set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
#set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {led[5]}]
#set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {led[6]}]
#set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {led[7]}]

#set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {reset}]

### 7-Segment Display Anodes (Selecting Which Digit is Active)
#set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports {an[0]}]
#set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports {an[1]}]
#set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {an[2]}]
#set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {an[3]}]

### 7-Segment Display Segments
#set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {seg[0]}]
#set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {seg[1]}]
#set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {seg[2]}]
#set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {seg[3]}]
#set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports {seg[4]}]
#set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS33} [get_ports {seg[5]}]
#set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {seg[6]}]

