# Scrum Puns
#
# scrum - Display a random scrum pun
#
# TODO: pull from a file

scrums = [
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
  robot.hear /scrum/i, (msg) ->
    msg.send msg.random scrums
