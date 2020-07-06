onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+int2flt -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L xbip_pipe_v3_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_5 -L xbip_dsp48_multadd_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L floating_point_v7_1_6 -L xil_defaultlib -L secureip -O5 xil_defaultlib.int2flt

do {wave.do}

view wave
view structure

do {int2flt.udo}

run -all

endsim

quit -force
