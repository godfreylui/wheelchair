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

echo_and_run cd "/home/godfrey/wheelchair/src/rt_gene/rt_gene"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/godfrey/wheelchair/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/godfrey/wheelchair/install/lib/python2.7/dist-packages:/home/godfrey/wheelchair/build/rt_gene/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/godfrey/wheelchair/build/rt_gene" \
    "/usr/bin/python2" \
    "/home/godfrey/wheelchair/src/rt_gene/rt_gene/setup.py" \
    build --build-base "/home/godfrey/wheelchair/build/rt_gene" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/godfrey/wheelchair/install" --install-scripts="/home/godfrey/wheelchair/install/bin"
