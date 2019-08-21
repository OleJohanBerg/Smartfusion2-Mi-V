set_family {SmartFusion2}
read_adl {C:\RISC-V\mi-v\designer\top\top.adl}
read_afl {C:\RISC-V\mi-v\designer\top\top.afl}
map_netlist
read_sdc {C:\RISC-V\mi-v\constraint\top_derived_constraints.sdc}
check_constraints {C:\RISC-V\mi-v\constraint\placer_sdc_errors.log}
write_sdc -strict -afl {C:\RISC-V\mi-v\designer\top\place_route.sdc}
