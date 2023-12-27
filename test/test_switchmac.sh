#!/bin/bash

programm="../switchmac"
ether=""

if [ -n "$1" ]
then
	ether=$1
else
	echo "Пример: ./test_switchmac.sh ether0"
	exit 0
fi

function mac_rand(){
	echo "    [Смена случайного mac адреса]"
	echo "----------------------------------------"
	$programm -r $ether
	echo "----------------------------------------"
	echo ""
}

function set_mac(){
	echo "    [Смена mac адреса]"
	echo "----------------------------------------"
	echo "mac адрес: 50:2a:14:af:b5:A4"
	$programm -m 50:2a:14:af:b5:A4 $ether
	echo "----------------------------------------"
	echo ""
	
	echo "    [Неверный mac адрес]"
	echo "----------------------------------------"
	echo "mac адрес: 49:2a:14:af:b5:A4"
	$programm -m 49:2a:14:af:b5:A4 $ether
	echo "----------------------------------------"
	echo ""
}

function get_mac(){
	echo "    [Текущий mac адрес]"
	echo "----------------------------------------"
	$programm -g $ether
	echo "----------------------------------------"
	echo ""
}

function main(){
	mac_rand
	set_mac
	get_mac
}

main
