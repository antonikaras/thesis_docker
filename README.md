# thesis_docker
Autonomous exploration and interactive mapping thesis docker

## Package layout

* docker-workspace
    * bridge_ws : Contains the package establishing communication between ROS and ROS2
    * catkin_ws : Contains the package establishing communication between ROS and Unity
        * https://github.com/antonikaras/thesis_ros.git
    * colcon_ws : Contain the package that handles the autonomous exploration  
        * https://github.com/antonikaras/thesis_ros2.git     

## How to install 

* Clone the repository
```
git clone https://github.com/antonikaras/thesis_docker.git
git submodule update --init --recursive
cd docker-workspace/colcon_ws/src/thesis_ros2
git checkout main
git pull
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
    * Terminal - 1 : Build the ROS workspace
    ``` 
    ./run-docker-image-gpu.sh
    bws
    ```
    * Terminal - 2 : Build the ROS2 workspace
    ```
    docker exec -it thesis_ros2-tester bash
    bws2
    ```
    * Terminal - 3 : Build the ros1_bridge workspace
    ```
    docker exec -it thesis_ros2-tester bash
    bbws
    ```
## How to use

* Each git repository contains thorough instructions on how to use them
* 

