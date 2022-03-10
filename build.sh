#!/bin/bash

soelim from_different_angles.ms |groff -U -p -Tps -tk -Kutf8 -M/home/sigge/documents/tmac -ma4 -P-pa4 -ms -mpdfmark > from_different_angles.ps

ps2pdf from_different_angles.ps

gs -r300  -sDEVICE=jpeg -sOutputFile=from_different_angles_%d.jpeg - < from_different_angles.ps

pdftocairo from_different_angles.pdf -svg from_different_angles.svg

