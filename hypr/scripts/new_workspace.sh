#!/bin/bash

# 获取当前最大工作区编号
max=$(hyprctl workspaces -j | jq '.[].id' | sort -n | tail -n1)

# 如果没有工作区，默认从1开始
if [ -z "$max" ]; then
    next=1
else
    next=$((max + 1))
fi

# 切换到新工作区（自动创建）
hyprctl dispatch workspace "$next"

