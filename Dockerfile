# use docker image for ros kinetic with most needed features
FROM osrf/ros:foxy-desktop

# nvidia-docker hooks
# LABEL com.nvidia.volumes.needed="nvidia_driver"
# ENV PATH /usr/local/nvidia/bin:${PATH}
# ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

# install needed packages: the orocos and some text editors

#RUN curl -sSL http://get.gazebosim.org | sh

# Fix locals
ENV DEBIAN_FRONTEND non-interactive

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Install turtlebot dependencies
RUN apt-get update && apt-get install -y \
    python3-colcon-common-extensions \
    python3-catkin-tools \
    ros-foxy-cartographer \
    ros-foxy-cartographer-ros \
    ros-foxy-navigation2 \
    ros-foxy-nav2-bringup \
    ros-foxy-gazebo-ros-pkgs \
    ros-foxy-cv-bridge \
    ros-foxy-vision-opencv \
    ros-foxy-pointcloud-to-laserscan \
    python3-pip \
    ros-noetic-ros-base \
    nano 

RUN pip3 install opencv-python
RUN pip3 install scipy numpy

RUN apt-get update && apt-get upgrade -y
# make bash automatically source our custom bashrc that we will put
# inside our volume
RUN echo '\n\n[[ -f /workspace/bashrc ]] && source /workspace/bashrc' >> $HOME/.bashrc

#RUN pip install --user argparse cerberus empy jinja2 numpy packaging pandas psutil pygments pyros-genmsg pyserial pyulog pyyaml setuptools six toml wheel rosdep
#RUN pip3 install --user --upgrade empy jinja2 numpy packaging pyros-genmsg toml pyyaml pymavlink \
#	rospkg netifaces

#COPY ./docker-workspace/install_geographiclib_datasets.sh / 
#RUN chmod +x /install_geographiclib_datasets.sh && /install_geographiclib_datasets.sh

#RUN apt-get update && apt-get upgrade -y
