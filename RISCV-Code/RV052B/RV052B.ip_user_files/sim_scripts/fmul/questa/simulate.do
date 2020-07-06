onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fmul_opt

do {wave.do}

view wave
view structure
view signals

do {fmul.udo}

run -all

quit -force
