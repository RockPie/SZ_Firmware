# Clock constraints
create_clock -period 20.000 -name sys_clk -waveform {0.000 10.000} [get_ports sys_clk]
set_property PACKAGE_PIN M19        [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33    [get_ports sys_clk]

# Probe test pin
set_property PACKAGE_PIN E16        [get_ports sys_test_port]
set_property IOSTANDARD LVCMOS33    [get_ports sys_test_port]
set_property SLEW FAST              [get_ports sys_test_port]
set_property DRIVE 4                [get_ports sys_test_port]

# Button constraints
# set_property PACKAGE_PIN K21        [get_ports {sys_keys[0]}]
# set_property PACKAGE_PIN J20        [get_ports {sys_keys[1]}]
# set_property IOSTANDARD LVCMOS33    [get_ports {sys_keys[0]}]
# set_property IOSTANDARD LVCMOS33    [get_ports {sys_keys[1]}]

# LED constraints
set_property PACKAGE_PIN P20        [get_ports {sys_leds[0]}]
set_property PACKAGE_PIN P21        [get_ports {sys_leds[1]}]
set_property IOSTANDARD LVCMOS33    [get_ports {sys_leds[0]}]
set_property IOSTANDARD LVCMOS33    [get_ports {sys_leds[1]}]