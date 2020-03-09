#!/bin/bash
$1~/Savage/ {print $1, $2};
/^Chet/ {print "$"$3,"$"$4,"$"$5};
$3~/^250/ {print $1" (Contributed $250 first month)"}