const routes = require('express').Router()
const chatController = require('../controllers/chat')
const authMiddleware = require('../middlewares/auth')

routes.get('/', authMiddleware.authCheck, chatController.historyInteractions)

module.exports = routes
