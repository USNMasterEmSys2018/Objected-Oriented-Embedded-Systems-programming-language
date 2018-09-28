onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+BRAM -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BRAM.udo}

run -all

endsim

quit -force
