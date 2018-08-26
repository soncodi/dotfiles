
diskpart

list disk
select disk 1
clean
convert gpt

# system/efi
create partition efi size=500
format quick fs=fat32 label="System"
assign letter="S"

# msr
create partition msr size=16

# windows
create partition primary
# shrink minimum=500
format quick fs=ntfs label="Windows"
assign letter="W"

# # recovery
# create partition primary
# format quick fs=ntfs label="Recovery tools"
# assign letter="R"
# set id="**" # see https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions
# gpt attributes=0x8000000000000001

list volume
exit


dism /apply-image /imagefile:C:\Users\...\Desktop\install.wim /index:1 /applydir:W:\

W:\Windows\system32\bcdboot W:Windows /s S:
