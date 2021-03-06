require 'telegram/bot'

TOKEN = 'YOU TOKEN'

ANSWERS = []


Telegram::Bot::Client.run(TOKEN) do |bot|
    bot.listen do |message|
        case message.text
        when '/start'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Здравствуйте, #{message.from.first_name}, я помогу вам узнать об ошибках. Какая ошибка вас интересует?
                - ошибка 0103
                - ошибка 3468
                - ошибка 3451
                - ошибка 6181
                - ошибка 4154
                - ошибка 3827
                - ошибка 23
                - ошибка 63
                - ошибка 17

                Для этого отправте номер ошибки в чат 
                например ошибка 1234 или 1234
                "
            )
        when 'ошибка 0103', 'Ошибка 0103', '0103' ,'ОШИБКА 0103'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Рекомендовано брать разрешение по АРМ АГКР Ошибка 0103- Ошибка формата поля в позиционной части фразы
                "
            )

        when 'ошибка 3468', 'Ошибка 3468', '3468' ,'ОШИБКА 3468'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Пункты перехода отсутствует Нету возможности 
                добавить. пишет - Максимальное количество пограничных станций для текущей отправки: 1
                Действие отклонено / разрешение через АРМ
                Ошибка 4448-Станция отправления отсутствует в массиве НСИ 204 0.
                Ошибка 4525-Станция приема груза из заграницы не является экспортной.
                
                "
            )

        when 'ошибка 3451', 'Ошибка 3451', '3451' ,'ОШИБКА 3451'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Рекомендовано брать разрешение по АРМ АГКР
                Ошибка 3451 - Код рода груза ЕТСНГ 421-423, а вес не 
                равен нулю. Исключение: перевозка по ж. д. России в международном сообщении подвижного состава, оформленного полным комплектом перевозочных документов по правилам повагонных отправок. В этих случаях в поле вес груза необходимо проставить вес тары вагона:
                - для кода груза 421034, 421049 допустимо значение от 15000кг до 85000кг;
                - для остальных кодов грузов 421-423 кроме 421034, 421049 допустимо значение от 15000кг до 275000кг.
                При наличии вагона прикрытия вес может, как равняться нулю порожний вагон, так быть ненулевым для вагона прикрытия с контрольной рамой, но не более 15000кг."
            )
        when 'ошибка 6181', 'Ошибка 6181', '6181' ,'ОШИБКА 6181'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: " Ю1 01 260904 0000000 . 555 9961900: 
                код плательщик не формируются "
            )

        when 'ошибка 4154', 'Ошибка 4154', '4154' ,'ОШИБКА 4154'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Не указали род вагона, рекомендовано вернуть 
                на оформление для указания рода вагона
                Ошибка 4154-Неплатежные координаты не должны быть нулевые.
                
                
                "
            )

        when 'ошибка 3827', 'Ошибка 3827', '3827' ,'ОШИБКА 3827'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Нарушение технологии, делают раскредитование с.253 на станции отправления на свое с.410    
                "
            )

        when 'ошибка 23', 'Ошибка 23', '23' ,'ОШИБКА 23'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Нельзя переадресовать на станции вагон который был с. 410   
                "
            )
        when 'ошибка 17', 'Ошибка 17', '17' ,'ОШИБКА 17'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "НПлан берут повагонный, оформляют Мартшрутную 
                отправку.
                
                "
            )
        when 'ошибка 63', 'Ошибка 63', '63' ,'ОШИБКА 63'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "на вагон в нерабочем парке досылка не оформляется  
                "
            )

        
        
        else
            bot.api.send_message(
                chat_id: message.chat.id,
                text:  " План берут повагонный, оформляют Мартшрутную 
отправку.

                "
            )
            end
        end
    end
