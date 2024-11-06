#!/usr/bin/env bash
# set -x
# set -e

# 获取项目根路径
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
# open_vins
OPEN_VINS_DIR="${PROJECT_DIR}/src/open_vins"

if [ ! -d "${OPEN_VINS_DIR}" ]; then
    echo "Downloading Open-Vins ..."
    git clone https://gitee.com/Derkai52/open_vins.git "${OPEN_VINS_DIR}"
    # git clone https://github.com/emNavi/open_vins.git "${OPEN_VINS_DIR}"
else
    echo "Open-Vins is already installed."
fi

catkin_make

popd >/dev/null

set +x
echo ""
echo "************************************"
echo "Open-Vins setup completed successfully!"
echo "************************************"