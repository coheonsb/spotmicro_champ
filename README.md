# spotmicro_champ


install ros

http://wiki.ros.org/noetic/Installation/Ubuntu



```

sudo apt install -y python-rosdep

sudo apt-get install libi2c-dev 

cd <your_ws>/src
git clone --recursive https://github.com/chvmp/champ
git clone https://github.com/chvmp/champ_teleop
cd ..
rosdep install --from-paths src --ignore-src -r -y



cd <your_ws>
catkin_make
source <your_ws>/devel/setup.bash



```