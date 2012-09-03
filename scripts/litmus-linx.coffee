# Litmus Linx - records all links posted in chat
#
# you need to set environment variable: LITMUS_LINX_URL
#
module.exports = (robot) ->

  url_regex = /(https?):\/\/[a-z0-9-]+(\.[a-z0-9-]+)+([\/?].*)?/gi
  linx_url  = process.env.LITMUS_LINX_URL

  linxify = (msg) ->
    return unless linx_url

    for url in msg.match
      link = { url: url }
      data = JSON.stringify { link: link }

      console.log data

      msg.http(linx_url)
        .header('Content-type', 'application/json')
        .header('Accept', 'application/json')
        .post(data) (err, res, body) -> console.log body

  robot.hear url_regex, linxify
