resultado final


vagrant@vmAMN213:~$ lsblk -f
NAME                FSTYPE      FSVER          LABEL           UUID                                   FSAVAIL FSUSE% MOUNTPOINTS
loop0               squashfs    4.0                                                                         0   100% /snap/core20/2318
loop1               squashfs    4.0                                                                         0   100% /snap/lxd/29351
loop2               squashfs    4.0                                                                         0   100% /snap/core20/2434
loop3               squashfs    4.0                                                                         0   100% /snap/snapd/21759
sda
└─sda1              ext4        1.0            cloudimg-rootfs 31e7e3d2-6937-4fdc-9179-5857d3056c87     35.5G     8% /
sdb                 iso9660     Joliet Extensi cidata          2024-09-12-02-34-39-00
sdc
├─sdc1              swap        1                              4220f67f-c5af-4cff-9d12-7eb954f72521                  [SWAP]
├─sdc2              LVM2_member LVM2 001                       lC4c9H-h12W-r2dd-Fy35-q2cu-3Eme-Q90GUm
│ └─vgAdmin-lvAdmin ext4        1.0                            558c0a59-d45d-4330-be93-6889efe97467      1.4G     0% /mnt/lvAdmin
├─sdc3              LVM2_member LVM2 001                       HWYtwr-IXU3-viUB-UlQQ-kw2H-hdfd-OxPcmB
│ └─vgAdmin-lvAdmin ext4        1.0                            558c0a59-d45d-4330-be93-6889efe97467      1.4G     0% /mnt/lvAdmin
├─sdc4
├─sdc5              LVM2_member LVM2 001                       9LGNg0-Q8hn-fdKD-7PI1-JecH-zPCZ-hkKDW4
│ ├─vgDevelopers-lvDevelopers
│ │                 ext4        1.0                            1d22e19e-c460-4554-aa06-a6c037a58e5d    906.2M     0% /mnt/lvDevelopers
│ └─vgDevelopers-lvDevops
│                   ext4        1.0                            d6d9276b-3f78-44b3-9ddc-1952a8f3d022    732.5M     0% /mnt/lvDevops
└─sdc6              LVM2_member LVM2 001                       FZ4oDf-3A0c-WdYI-lzpF-2T1T-DPGt-J6U9pp
  ├─vgDevelopers-lvTesters
  │                 ext4        1.0                            61f2e7f3-392e-4783-83b1-f514e569183e    906.2M     0% /mnt/lvTesters
  └─vgDevelopers-lvDevops
                    ext4        1.0                            d6d9276b-3f78-44b3-9ddc-1952a8f3d022    732.5M     0% /mnt/lvDevops
sdd

