require 'telegram/bot'

TOKEN = '917524629:AAHHPMwd6TibTBBgFr-zXMYpXhPYNsOjtIg'

ANSWERS = []


Telegram::Bot::Client.run(TOKEN) do |bot|
    bot.listen do |message|
        case message.text
        when '/start'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Здравствуйте, #{message.from.first_name}"
            )
        else
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "https://www.railways.kz/ru/ 
                Я не понимаю, вот команды ниже
                /setname - change a bot's name
                /setdescription - change bot description
                /setabouttext - change bot about info
                /setuserpic - change bot profile photo
                /setcommands - change the list of commands
                /deletebot - delete a bot
                
                Bot Settings
                /token - generate authorization token
                /revoke - revoke bot access token
                /setinline - toggle inline mode (https://core.telegram.org/bots/inline)
                /setinlinegeo - toggle inline location requests (https://core.telegram.org/bots/inline#location-based-results)
                /setinlinefeedback - change inline feedback (https://core.telegram.org/bots/inline#collecting-feedback) settings
                /setjoingroups - can your bot be added to groups?
                /setprivacy - toggle privacy mode (https://core.telegram.org/bots#privacy-mode) in groups
                
                Games
                /mygames - edit your games (https://core.telegram.org/bots/games) [beta]
                /newgame - create a new game (https://core.telegram.org/bots/games)
                /listgames - get a list of your games
                /editgame - edit a game
                /deletegame - delete an existing game"
            )
            end
        end
    end
