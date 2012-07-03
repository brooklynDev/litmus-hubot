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
  "“Die, rebel scrum!”"
]

module.exports = (robot) ->
  scrums = robot.brain.data.scrums or defaultScrums

  robot.hear /scrum(\b)+/i, (msg) ->
    msg.send msg.random scrums

  robot.respond /add scrumpun (.*)/i, (msg) ->
    scrums = robot.brain.data.scrums = scrums.concat msg.match[1]
    msg.reply "new scrum pun \"#{msg.match[1]}\" added!"
