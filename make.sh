cd ./Debug/; make all; cd ..
#cd ./Release/; make all; cd ..

sudo openocd -f interface/stlink.cfg -f target/stm32f4x.cfg -c \
"init; reset halt; flash write_image erase Debug/stmtest.hex; "\
"reset; exit"
