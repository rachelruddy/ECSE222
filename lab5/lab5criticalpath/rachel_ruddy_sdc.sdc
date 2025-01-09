set_max_delay -from [get_ports reset] -to [get_ports HEX0[*]] 12
set_max_delay -from [get_ports clk] -to [get_ports HEX0[*]] 12

create_clock -name clk -period 20 [get_ports clk]