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

echo_and_run cd "/home/li/ROS/probot_course/src/rosserial/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/li/ROS/probot_course/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/li/ROS/probot_course/install/lib/python2.7/dist-packages:/home/li/ROS/probot_course/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/li/ROS/probot_course/build" \
    "/usr/bin/python2" \
    "/home/li/ROS/probot_course/src/rosserial/rosserial_arduino/setup.py" \
    build --build-base "/home/li/ROS/probot_course/build/rosserial/rosserial_arduino" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/li/ROS/probot_course/install" --install-scripts="/home/li/ROS/probot_course/install/bin"
