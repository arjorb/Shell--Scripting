#!/bin/bash
#Script that returns the current server status.
server_name=$(hostname)

function memoryCheck(){
    echo ""
        echo "The current memory usage on ${server_name} is: "
        check_disk_usage
        check_cpu_usage
        check_memory_usage
        check_kernel_version
}

function check_disk_usage(){
    echo "Current Disk usage: "
    df -h
    echo ""
}

function check_cpu_usage(){
    echo "Current CPU usage: "
    top -l 1 | grep "CPU usage"
    echo ""

}

function check_memory_usage(){
    echo "Current RAM usage: "
    top -l 1 | grep PhysMem
    echo ""

}

function check_kernel_version(){
    echo "Exact Kernel version: "
    uname -r
    echo ""
}

memoryCheck