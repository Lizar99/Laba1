#!/bin/bash
	echo "Программа laba1"
	echo "Терехина Елизавета, группа 730-1"
	echo "Эта программа предназначена для навигации по файловой системе"
while true; do

show_current_directory() {
	pwd
}
go_up_directory() {
	cd . .
	echo "Переход в каталог выше"
}
list_directories() {
	echo "Доступные каталоги: "
	select d in */; do
		if [ -n "$d" ];
		then cd "$d" || exit
		break
		else echo "Некорректный ввод"
		fi
	done
}
while true; do
	read -p "Выберете действие (показать каталог/подняться выше/перейти в каталог)" action
	if [ "$action" = "показать каталог"];
	then show_current_directory
	elif [ "$action" = "подняться выше"];
	then go_up_directory
	elif [ "$action" = "перейти в каталог"];
	then list_directories
	else
		echo "Некорректное действие"
		break
	fi
done
	echo "Программа была завершена. Хотите продолжить? (y/n)"
		read yn
		if [ "$yn" = "y"]
		then continue
	else break
fi
done