request = require 'superagent'
{ ARTSY_URL } = require('sharify').data

@index = (req, res) ->
  url = "#{ARTSY_URL}/contact/data"
  request
    .get(url)
    .end (err, data) ->
      res.render 'template', data: data.body
