# thesis_docker
Autonomous exploration and interactive mapping thesis docker

## Package layout

* docker-workspace
    * bridge_ws : Contains the package establishing communication between ROS and ROS2
    * catkin_ws : Contains the package establishing communication between ROS and Unity
    * colcon_ws : Contain the package that handles the autonomous exploration       

## How to install 

* Clone the repository
```
git clone https://github.com/antonikaras/thesis_docker.git
git submodule update --init --recursive
```
* Build the docker image
```
docker build --tag thesis_ros2 . --rm
docker system prune
```
* Enter the docker environment
    * First terminal :``` ./run-docker-image-gpu.sh ```
    * Second, third ... terminal : ```docker exec -it thesis_ros2-tester bash```
* Build the individual ros environments:
    * Initialize the docker environment
    ``` 
    ./run-docker-image-gpu.sh
    ```
    * catkin_ws:
    ```
    cd-ros
    src
    catkin build
    src
    ```
    * colcon_ws
    ```
    cd-ros2
    src2
    colcon build --symlink-install
    src2
    ```
    * bridge_ws
    ```
    cd-bridge
    src2
    colcon build --packages-select ros1_bridge --cmake-force-configure
    src2
    ```
## How to use

* Terminal 1:

