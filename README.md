# Twitter Bot 

> A simple bot for twitter created in Ruby.

![screenshot](/src/img/BenderBotPage.png)

A witty bot for twitter that will answer and fav all your replies with a phrase and a Card (Twitter metadata link)
for you to click and land in a page with more information.

It will also post a random facts (within 29 in total) about the show every 12 hours. The facts do not repeat until they're all done and it
starts over again.

The bot checks for and replies/fav every 60 seconds.

## Built With

- Ruby,
- chatterbot (GEM),
- HTML,
- CSS

## Live Demo

[Live Demo Link](https://twitter.com/BenderBot101)

## Examples of it working. Replying and posting.

![screenshot](/src/img/Screenshot10.png)
![screenshot](/src/img/Screenshot11.png)
![screenshot](/src/img/Screenshot12.png)
![screenshot](/src/img/Screenshot13.png)

## Getting Started

To get a local copy up and running follow these simple example steps.

**Install gem Chatterbot**

Go to your command line and put:
```gem install chatterbot -v 1.0.1 ```

**Download this repository**
In your command line and in the folder you want to install Bender-Bot do:
```git clone https://github.com/Bismarck-GM/microverse-ruby-bot.git ```

**For it to run you'll have to get your Token, Secret Toke, Consumer Key and Consumer_Secret to connect with Twitter API**
After you get those open bender_bot.rb and paste that information in the field with those names.

Do the same thing in bender_bot.yml

**After all of that is done. Simply run bender_bot.rb**
```ruby bender_bot.rb```


### Modifications

You can modify the amount of trivias. They're stored at ```lib/trivia_info.rb``` as a hash.

You also can modify wich words will triger a response at ```lib/text_matching.rb```

### Run tests

To run test just run ```rspec``` inside of the folder.


## Authors

👤 **Gerónimo Morisot**

- Github: [@Bismarck-GM](https://github.com/Bismarck-GM)
- Twitter: [@Rewritablee](https://twitter.com/Rewritablee)
- Linkedin: [geronimomorisot](https://linkedin.com/in/geronimomorisot)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
