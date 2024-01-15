#!/bin/bash

# 执行构建命令
npm install && npm run build

# 更新上一次构建的时间戳
echo $(date +%s) > dist/last_build_timestamp.txt
