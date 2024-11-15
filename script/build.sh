#!/bin/bash

echo -e "\033[48;5;235;38;2;255;69;0m           _____                    _____                    _____                    _____            _____           \033[0m"; sleep 0.02 
echo -e "\033[48;5;235;38;2;255;69;0m          /\    \                  /\    \                  /\    \                  /\    \          /\    \          \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m         /::\    \                /::\____\                /::\    \                /::\____\        /::\    \         \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m        /::::\    \              /:::/    /                \:::\    \              /:::/    /       /::::\    \        \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m       /::::::\    \            /:::/    /                  \:::\    \            /:::/    /       /::::::\    \       \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m      /:::/\:::\    \          /:::/    /                    \:::\    \          /:::/    /       /:::/\:::\    \      \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m     /:::/__\:::\    \        /:::/    /                      \:::\    \        /:::/    /       /:::/  \:::\    \     \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m    /::::\   \:::\    \      /:::/    /                       /::::\    \      /:::/    /       /:::/    \:::\    \    \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m   /::::::\   \:::\    \    /:::/    /      _____    ____    /::::::\    \    /:::/    /       /:::/    / \:::\    \   \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m  /:::/\:::\   \:::\ ___\  /:::/____/      /\    \  /\   \  /:::/\:::\    \  /:::/    /       /:::/    /   \:::\ ___\  \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m /:::/__\:::\   \:::|    ||:::|    /      /::\____\/::\   \/:::/  \:::\____\/:::/____/       /:::/____/     \:::|    | \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m \:::\   \:::\  /:::|____||:::|____\     /:::/    /\:::\  /:::/    \::/    /\:::\    \       \:::\    \     /:::|____| \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m  \:::\   \:::\/:::/    /  \:::\    \   /:::/    /  \:::\/:::/    / \/____/  \:::\    \       \:::\    \   /:::/    /  \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m   \:::\   \::::::/    /    \:::\    \ /:::/    /    \::::::/    /            \:::\    \       \:::\    \ /:::/    /   \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m    \:::\   \::::/    /      \:::\    /:::/    /      \::::/____/              \:::\    \       \:::\    /:::/    /    \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m     \:::\  /:::/    /        \:::\__/:::/    /        \:::\    \               \:::\    \       \:::\  /:::/    /     \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m      \:::\/:::/    /          \::::::::/    /          \:::\    \               \:::\    \       \:::\/:::/    /      \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m       \::::::/    /            \::::::/    /            \:::\    \               \:::\    \       \::::::/    /       \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m        \::::/    /              \::::/    /              \:::\____\               \:::\____\       \::::/    /        \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m         \::/____/                \::/____/                \::/    /                \::/    /        \::/____/         \033[0m"; sleep 0.02
echo -e "\033[48;5;235;38;2;255;69;0m          ~~                       ~~                       \/____/                  \/____/          ~~               \033[0m"; sleep 0.2

current_path=$(pwd)
parent_dir=$(dirname "$current_path")
build_dir="$parent_dir/build"


if [ ! -d "$build_dir" ]; then
    echo "上一级目录中不存在build目录"
    exit 1
else
    cd "$build_dir"
    if [ -z "$(ls -A "$build_dir")" ]; then
        echo "Waiting for cmake"
        cmake ..
        make
    else
        echo "Updating these files"
        rm -rf *
        cmake ..
        make
    fi

fi





