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

echo_and_run cd "/home/ajiang2/RSP/catkin_ws/moving_catkin/src/goal_assigner"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ajiang2/RSP/catkin_ws/moving_catkin/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ajiang2/RSP/catkin_ws/moving_catkin/install/lib/python2.7/dist-packages:/home/ajiang2/RSP/catkin_ws/moving_catkin/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ajiang2/RSP/catkin_ws/moving_catkin/build" \
    "/usr/bin/python" \
    "/home/ajiang2/RSP/catkin_ws/moving_catkin/src/goal_assigner/setup.py" \
    build --build-base "/home/ajiang2/RSP/catkin_ws/moving_catkin/build/goal_assigner" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ajiang2/RSP/catkin_ws/moving_catkin/install" --install-scripts="/home/ajiang2/RSP/catkin_ws/moving_catkin/install/bin"
