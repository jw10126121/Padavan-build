#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
#
#=================================================


# package_root='package'

diy_file="user/shared/defaults.h"


# 设置网段
sed -i 's/192.168.2./192.168.0./g' $diy_file

# 设置2.4G及5.8G wifi名和密码
sed -i "s/BOARD_PID \"_%s\"/\"ljwAP\"/g" $diy_file
sed -i "s/BOARD_PID \"_GUEST_%s\"/\"ljwAP_GUEST\"/g" $diy_file

sed -i "s/BOARD_PID \"_5G_%s\"/\"ljwAP_5G\"/g" $diy_file
sed -i "s/BOARD_PID \"_GUEST_5G_%s\"/\"ljwAP_5G_GUEST\"/g" $diy_file

sed -i "s/1234567890/12356789/g" $diy_file


