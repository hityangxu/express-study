express = require 'express'
app = express()

app.get '/', (req, res) ->
  res.send 'Hello World'

server = app.listen 3000, ->
  host = server.address().address
  port = server.address().port

  console.log "Example coffee app at http://#{host}:#{port}"