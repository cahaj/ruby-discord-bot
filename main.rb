require 'discordrb'

token = "token"

bot = Discordrb::Bot.new token: token

$prefix = "rb!"

bot.message(content: "#{$prefix}hi") do |event|
    event.send_embed do |embed|
        embed.title = 'Hello from Ruby lang!'
        embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://www.ruby-lang.org/images/header-ruby-logo.png')
    end
end

bot.run