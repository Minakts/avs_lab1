#!/bin/bash

cd ~/lab0 || exit 1
ls -lR | grep "^-" | sort -n -r -k 5,5 | head -n 5
grep -r -i -h -E "смен|лёва" claude_monet | grep -i -v "отчёт" | sort | head -n 6
grep -l "смен" claude_monet/kitchen/morning_shift/* claude_monet/kitchen/evening_shift/morning_backup/* | wc -l
tail -n 2 -q claude_monet/kitchen/morning_shift/*_tasks claude_monet/kitchen/evening_shift/*_tasks | grep -i -E "лёва|смен" | sort -r
grep -v -E "Сеня|Федя" claude_monet/kitchen/morning_report | sort -r | head -n 4 | wc -w
ls -lR | grep -E "^-.{9}[[:space:]]+2[[:space:]]+" | sort -k 9,9
ls -lR | grep "^l" | grep -vE "^([^[:space:]]+[[:space:]]+){8}[^[:space:]]*shift[^[:space:]]*" | sort -r -k 9,9
rm staff_room/late_report
rm staff_room/current_order
rm shift_kitchen
rm shift_message
rm claude_monet/kitchen/common_message
rm claude_monet/kitchen/evening_shift/denis_tasks
rmdir reserve_empty
rm -r claude_monet/kitchen/evening_shift/morning_backup
ls -lR