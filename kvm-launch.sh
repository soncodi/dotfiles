#!/bin/sh

PATH=$PATH:/media/Data/Libraries/android-sdk-linux/sdk/tools

emulator-x86 -avd FastNexus7 -gpu on -qemu -m 2047 -enable-kvm

# eclipse params
#-qemu -m 2047 -enable-kvm
