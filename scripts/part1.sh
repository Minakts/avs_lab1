#!/bin/bash

mkdir ~/lab0
cd ~/lab0
mkdir -p claude_monet/kitchen/morning_shift claude_monet/kitchen/evening_shift claude_monet/hall claude_monet/office staff_room reserve_empty
echo -e "Сеня принимает мясо в начале смены\nДо открытия нужно подготовить горячий цех\nЛёва ждёт отчёт о продуктах\nПосле обеда проверить остатки на складе" > claude_monet/kitchen/morning_shift/senya_tasks
echo -e "Федя проверяет свежесть рыбы\nУтром подготовить холодные закуски\nПеред подачей показать блюдо Лёве\nВ конце смены убрать рабочее место" > claude_monet/kitchen/morning_shift/fedya_tasks
echo -e "Макс приходит на вечернюю смену\nПервое блюдо готовится для седьмого столика\nБаринов поручил Максу новый соус\nПосле закрытия помочь Лёве с отчётом" > claude_monet/kitchen/evening_shift/max_tasks
echo -e "Денис выступает перед гостями вечером\nДо концерта он помогает на кухне\nВ середине смены приготовить заказ Нагиева\nПоследнее блюдо передать официантам" > claude_monet/kitchen/evening_shift/denis_tasks
echo -e "Лёва распределяет задачи между поварами\nУтренняя смена готовит ресторан к открытию\nВечерняя смена отвечает за банкет\nВсе отчёты передать Лёве после закрытия" > claude_monet/kitchen/leva_order
echo -e "Столик один обслуживает Настя\nСтолик три оставить для постоянных гостей\nСтолик семь принимает большой заказ\nБанкетный стол подготовить к вечеру" > claude_monet/hall/table_plan
echo -e "Гость долго ждал блюдо от Макса\nЗа третьим столиком забыли принести напитки\nОдин заказ вернули на кухню\nВика просит разобрать жалобы после смены" > claude_monet/hall/complaints
echo -e "Баринов приходит на кухню до открытия\nВ полдень шеф проверяет утреннюю смену\nПеред банкетом проходит общее собрание\nЛёва докладывает шефу после закрытия" > claude_monet/office/barinov_schedule
echo -e "Сеня опоздал на утреннюю смену\nМакс перепутал время собрания\nЛёва записал объяснения поваров\nПовторные опоздания передадут Баринову" > staff_room/late_report
echo -e "Команда собирается за час до открытия\nЛёва назначен старшим на текущую смену\nВика проверяет готовность зала\nБаринов ждёт общий отчёт утром" > shift_message
chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/kitchen
chmod 750 claude_monet/kitchen/morning_shift
chmod u=rw,g=r,o= claude_monet/kitchen/morning_shift/senya_tasks
chmod 640 claude_monet/kitchen/morning_shift/fedya_tasks
chmod u=rwx,g=rx,o= claude_monet/kitchen/evening_shift
chmod 644 claude_monet/kitchen/evening_shift/max_tasks
chmod u=rw,g=r,o=r claude_monet/kitchen/evening_shift/denis_tasks
chmod 660 claude_monet/kitchen/leva_order
chmod u=rwx,g=rx,o=rx claude_monet/hall
chmod 644 claude_monet/hall/table_plan
chmod u=rw,g=rw,o=r claude_monet/hall/complaints
chmod 750 claude_monet/office
chmod u=rw,g=r,o= claude_monet/office/barinov_schedule
chmod u=rwx,g=rx,o= staff_room
chmod 640 staff_room/late_report
chmod 700 reserve_empty
chmod u=rw,g=r,o=r shift_message
ls -lR