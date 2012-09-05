# Litmus Linx - records all links posted in chat
#
# you need to set environment variable: LITMUS_LINX_URL
#
module.exports = (robot) ->

  url_regex = /(https?):\/\/[a-z0-9\-]+(\.[a-z0-9\-]+)+([\/\?].*?(?=\s|$))?/gi
  linx_url  = process.env.LITMUS_LINX_URL

  parse_links = (msg) ->
    return unless linx_url?

    for url in msg.match
      user    = msg.message.user
      source  = "#{user.name} @ #{user.room}"
      link    = { url: url, source: source }

      submit_link msg, JSON.stringify { link: link }

  submit_link = (msg, data) ->
    return unless data?

    console.log data

    msg.http(linx_url)
      .header('Content-type', 'application/json')
      .header('Accept', 'application/json')
      .post(data) (err, res, body) -> console.log body

  robot.hear url_regex, parse_links
