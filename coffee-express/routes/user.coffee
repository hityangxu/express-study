express = require 'express'
router = express.Router()

# GET users listing.
router.get '/', (req, res) ->
  res.send 'respond with a resource'

router.get '/mine', (req, res) ->
  res.render 'mine', {
    name: 'Yang xu'
    age: 29
  }

module.exports = router
