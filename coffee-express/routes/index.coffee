express = require 'express'
router = express.Router()

# GET home page.

title = 'Express'

router.all '/', (req, res, next) ->
  title += ' after all'
  next()

router.get '/', (req, res) ->
  res.render 'index', {title: title}

router.get '/about', (req, res) ->
  res.render 'index', {title: 'about'}

cb0 = (res, req, next) ->
  console.log 'cb0 executed...'
  next()

cb1 = (res, req, next) ->
  console.log 'cb1 executed...'
  next()

cb2 = (res, req, next) ->
  console.log 'cb2 executed...'
  next()


router.get '/route-handlers', [cb0, cb1, cb2], (req, res) ->
  res.render 'index', {title: 'route handlers'}

module.exports = router
