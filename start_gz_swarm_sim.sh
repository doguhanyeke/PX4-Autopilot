#!/bin/bash
terminator -T "<px4-1>" -e "cd ..; . install/setup.bash; cd ./PX4-Autopilot; PX4_SYS_AUTOSTART=4001 PX4_GZ_WORLD=swarm PX4_HOME_LAT=24.484043629238872 PX4_HOME_LON=54.36068616768677 PX4_GZ_MODEL=x500 PX4_GZ_MODEL_POSE=\"-10, -5, 0.2, 0, 0, 0\"  ./build/px4_sitl_default/bin/px4 -i 1
" &
sleep 10

terminator -T "<px4-2>" -e " cd ..; . install/setup.bash; cd ./PX4-Autopilot; PX4_SYS_AUTOSTART=4001 PX4_GZ_WORLD=swarm PX4_HOME_LAT=24.484043629238872 PX4_HOME_LON=54.36068616768677 PX4_GZ_MODEL=x500 PX4_GZ_MODEL_POSE=\"-10, -7, 0.2, 0, 0, 0\"  ./build/px4_sitl_default/bin/px4 -i 2
" &
sleep 10
terminator -T "<px4-3>" -e "cd ..; . install/setup.bash; cd ./PX4-Autopilot; PX4_SYS_AUTOSTART=4001 PX4_GZ_WORLD=swarm PX4_HOME_LAT=24.484043629238872 PX4_HOME_LON=54.36068616768677 PX4_GZ_MODEL=x500 PX4_GZ_MODEL_POSE=\"-10, -9, 0.2, 0, 0, 0\"  ./build/px4_sitl_default/bin/px4 -i 3
" &
sleep 10

MicroXRCEAgent udp4 -p 8888

#PX4_SYS_AUTOSTART=4001 PX4_GZ_WORLD=swarm PX4_HOME_LAT=24.484043629238872 PX4_HOME_LON=54.36068616768677 PX4_GZ_MODEL=x500 PX4_GZ_MODEL_POSE="-10, -5, 0.2, 0, 0, 0"  ./build/px4_sitl_default/bin/px4 -i 1
