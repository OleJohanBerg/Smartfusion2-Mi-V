open_project -project {C:\RISC-V\mi-v\designer\top\top_fp\top.pro}
enable_device -name {M2S025} -enable 1
set_programming_file -name {M2S025} -file {C:\RISC-V\mi-v\designer\top\top.ppd}
set_programming_action -action {PROGRAM} -name {M2S025} 
run_selected_actions
set_programming_file -name {M2S025} -no_file
save_project
close_project
