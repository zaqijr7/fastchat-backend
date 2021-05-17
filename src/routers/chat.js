const routes = require('express').Router()
const chatController = require('../controllers/chat')
const authMiddleware = require('../middlewares/auth')

routes.post('/', authMiddleware.authCheck, chatController.sendMessage)
routes.get('/:receipentId', authMiddleware.authCheck, chatController.chatHistoryReceipent)

module.exports = routes
