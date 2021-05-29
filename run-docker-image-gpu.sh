
CONTAINER_NAME="thesis_docker-tester"
IMAGE_NAME="thesis_docker"

docker attach $CONTAINER_NAME
if [ $? -eq 0 ]; then
    exit 0
fi

# xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $CONTAINER_NAME`
# docker start $CONTAINER_NAME
# if [ $? -eq 0 ]; then
#     $0 $1
#     exit 0
# fi

# get this directory's full path
HERE="$(dirname "$(realpath ${BASH_SOURCE[0]})")"
echo "$HERE"

# create the directory that will be mapped into docker image
docker_ws="$HERE/docker-workspace"
mkdir -p "$docker_ws"

# xhost +si:localuser:root
xhost +local:docker
# xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $CONTAINER_NAME`
# run the container that has previously been built from the Dockerfile
#   e.g. with a command:
#       docker build --tag orocos-ros-kinetic:v1 .
# run it in interactive mode, remove everything after exiting, but create a volume
# mapping to local directory
docker run \
    --net=host \
    --tty \
    --interactive \
    --rm \
    --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=all \
    -e NVIDIA_DRIVER_CAPABILITIES=graphics,display \
    --env="DISPLAY=$DISPLAY" \
    -v $XSOCK:$XSOCK \
    -v $HOME/.Xauthority:/root/.Xauthority \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume "$docker_ws:/workspace" \
    --name=$CONTAINER_NAME \
    --privileged \
    -p 127.0.0.1:8080:8080 \
    $IMAGE_NAME \
    bash

# if [ $? -eq 0 ]; then
#         $0 $1
#         exit 0
# fi
# echo "Can't find 'Dockerfile'!"
# exit 1
