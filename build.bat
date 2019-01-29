del ".\target\*.bin"
del ".\target\*.prg"
del ".\target\*.d64"

64tass -b ./src/altkernal64.asm -o ./target/altkernal64.bin
64tass -a ./src/boot.asm -o ./target/boot.prg

c1541 -format "dos64,sh" d64 ./target/dos.d64
c1541 -attach ./target/dos.d64 -write ./target/boot.prg boot