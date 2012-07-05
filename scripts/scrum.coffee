# Scrum Puns
#
# scrum - Display a random scrum pun
# add scrumpun <message> - Adds a new scrum pun to the list!
#

defaultScrums = [
  "Scrum Master Flex",
  "Scrum & Coke",
  "Scrumdog Millionaire",
  "Scrum on down!",
  "Scrumdiddilyumptious",
  "Call the Scrumbulance",
  "Scrumwhere Over the Rainbow",
  "Nothing but pond scrum",
  "Cogito, ergo scrum (I think, therefore I scrum)",
  "Dumplings and Dim Scrum",
  "Cinnamon scrum cake",
  "Scrum(ble) in the Bronx",
  "Scrumbob Squarepants",
  "Scrumbled eggs",
  "SCRUMAGEDDON",
  "“Die, rebel scrum!”",
  "Scrumfy",
   "Scrumpelstilskin",
   "Scrumpletion",
   "Scrumble beginnings",
   "Scrumpty dumpty",
   "Scrum hither",
   "Scrum of the earth",
   "Scrum on over baby",
   "Scrumming home",
   "Folscrum prison blues",
   "Scrummy dearest",
   "The Scrummy Returns",
   "Crash Test Scrummies",
   "Scrummy ache",
   "Scrummy afternoon",
   "Rainy days scrumdays",
   "Scrum with me if you want to live",
   "That's the way the cookie scrumbles",
   "I'll have my eggs scrumbled",
   "Scrumble bumble",
   "Scrumble bee",
   "Robitusscrum",
  "Scrumpy old men",
   "Scrumpy old fart",
   "Ren and Scrumpy",
   "Let's get ready to Scrumble",
   "Rough and Scrumble",
   "Scrumblr",
   "Scrumbleweed",
   "Took a Scrumble",
   "Soap scrum",
   "Up came the scrum and dried up all the rain",
   "I don't want no scrum",
   "You scrumplete me",
   "I am scrumpletely miserable",
   "I’d like to file a scrumplaint",
   "Scrumply",
   "I know what you did last scrummer",
   "Boys of scrummer",
   "First day of scrummer",
   "Scrummer vacation",
   "A mid scrummer night’s dream",
   "Schools out for scrummer",
   "Scrummer solstice",
   "Scrummer heat",
   "Scrum rain or shine",
   "Scrum like it hot",
   "What dreams may scrum",
   "We take all scrummers",
   "Why is the scrum gone?!",
   "Spiced scrum",
   "Scrum and scrummer",
   "Scrumbo",
   "Scrombalaya",
   "Scrumander in chief",
   "Master and scrumander",
   "Professor Scrum",
   "Scrum out of luck",
   "I'll see you again scrumday",
   "Scrumwhere out there",
   "Scrumday my prince will come",
   "Scrum one scrum all",
   "To scrum it all up for you",
   "The scrum of all fear",
   "More than the scrum of your parts",
   "Don't you want scrumbody to love",
   "There's scrumthing about Mary",
   "Scrumthing’s gotta give",
   "Scrumtimes love … it is a river",
   "Scrumtime today maybe?",
   "I've got scrumshine on a cloudy day",
   "Little miss scrumshine",
   "The scrum’ll come out tomorrow, bet your bottom dollar that tomorrow there'll be scrum",
   "There’s scrumthing in the way she moves",
   "Scrum together",
   "Happiness is a warm scrum",
   "Scrumbler party",
   "Scrums n roses",
   "Bubblescrum",
   "Scrumby",
   "Fun in the scrum",
   "Girls just wanna have scrum",
   "Scrump in your throat",
   "Fort Scrumpter",
   "Scrum burn",
   "Scrum dried tomatoes",
  "Fried green scrumatoes",
   "It's all scrum and games until scrumone gets hurt",
   "Scrumone to grow old with",
   "I'm sorry, I'm seeing scrumone else",
   "Scrumquat",
   "Cuscrumber",
   "Southern scrumfort",
   "Scrumford and sons",
   "Comfortably scrum",
   "Scrumfortably numb",
   "Scrumpet player",
   "Scrumbone",
   "Scrum one, scrum all",
   "Mild discrumfort",
   "Scrumfort food",
   "Let me slip into something a little more scrumfortable",
   "Suma Scrumlaude",
   "I wanna soak up the scrum",
   "Forrest Scrump",
   "Scrum sucker",
   "Scrum ’n get it",
   "Scrumpty dance"
]

module.exports = (robot) ->
  scrums = robot.brain.data.scrums or defaultScrums

  robot.hear /scrum(\b)+/i, (msg) ->
    msg.send msg.random scrums

  robot.respond /add scrumpun (.*)/i, (msg) ->
    scrums = robot.brain.data.scrums = scrums.concat msg.match[1]
    msg.reply "new scrum pun \"#{msg.match[1]}\" added!"
