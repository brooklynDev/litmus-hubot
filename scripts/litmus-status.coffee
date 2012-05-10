# Litmus Status - Update the Litmus status page from chat
#
# you need to set environment variable: LITMUS_STATUS_URL
#
# update litmus status <site|email|browser|spam|analytics|api> <green|yellow> <your message>
#

datetime = require "datetime"

module.exports = (robot) ->
  robot.respond /update litmus status (site|email|browser|spam|analytics|api|interactive) (green|yellow) (.*)/i, (msg) ->
    timestamp = datetime.format(new Date, "%B %e%k, %Y at %i:%M%P")
    sender    = msg.message.user.name

    payload = { sections: {} }
    payload.sections[msg.match[1]] =
      light:    msg.match[2]
      message:  "#{timestamp}: " + msg.match[3]

    # try and use curl
    # because http.request() doesn't support digest auth
    # but will it still work at Heroku?

    cmd = "curl" +
      " -H 'Content-Type: application/json'" +
      " -d '#{JSON.stringify(payload)}'" +
      " --digest #{process.env.LITMUS_STATUS_URL}"
    msg.send cmd

    exec = require('child_process').exec
    exec cmd, (err) ->
      if err?
        msg.send "Error: " + err
      else
        msg.send "Updated!"
