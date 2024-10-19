#!/bin/bash
a=$(cat ~/.config/tint2/tint2rc | grep launcher_item_app*)
echo $a > userapplications.txt

