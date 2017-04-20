#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/robert/ROS/src/detection/opencv_detector"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/robert/ROS/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/robert/ROS/install/lib/python2.7/dist-packages:/home/robert/ROS/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/robert/ROS/build" \
    "/usr/bin/python" \
    "/home/robert/ROS/src/detection/opencv_detector/setup.py" \
    build --build-base "/home/robert/ROS/build/detection/opencv_detector" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/robert/ROS/install" --install-scripts="/home/robert/ROS/install/bin"
