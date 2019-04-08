#!/bin/bash

# Init
source "$(dirname $(readlink -f $0))/lib_update.bash"
clone "libffi" --github "libffi/libffi" --ver "v3.2.1.tar.gz" $@

# Build
./autogen.sh
./configure --prefix=$LOCAL_PREFIX
make
make install
