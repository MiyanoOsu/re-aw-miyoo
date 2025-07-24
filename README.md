# Re_Another_World
(Out Of The World ) (Miyoo homebrew)

Port for miyoo devices

# How to build
You need docker, debian linux or arch linux
~~~
# if you first time build code, run this command to set up toolchain
docker pull miyoocfw/toolchain-shared-uclibc:latest

# to compile
docker run --volume ./:/src/ -it miyoocfw/toolchain-shared-uclibc:latest
cd src
make -j $(nproc)
~~~


*Caution: Quick save before enter password screen, because press Start will clean all progress.

# Keymap:
~~~
    A: Jump
    B: Run / Shoot / Action
    Y: pause
    X: hack speed
    Select: exit
    Start: Password screen (to exit password screen select ok then press B)
    L: quick save
    R: quick load
~~~

# Develope: 
- https://en.wikipedia.org/wiki/Another_World_(video_game)
- Éric Chahi
- Fork :  https://github.com/fabiensanglard/Another-World-Bytecode-Interpreter
