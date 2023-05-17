#!/bin/bash

dirname=`dirname $0`
tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
dirname=$PWD/$dirname
fi

export LD_LIBRARY_PATH=$dirname/lib:$LD_LIBRARY_PATH
export QT_PLUGIN_PATH=$dirname/plugins:$QT_PLUGIN_PATH
export QML2_IMPORT_PATH=$dirname/qml:$QML2_IMPORT_PATH

appname=`basename $0 | sed s,\.sh$,,`
$dirname/$appname "$@"
