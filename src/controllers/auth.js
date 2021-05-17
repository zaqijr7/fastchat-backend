const userModel = require('../models/users')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
const { APP_KEY } = process.env
// const responseStatus = require('../helpers/responseStatus')
const { sendEmail } = require('../helpers/sendMail')

// <-------------CONTROLLERS--------->
exports.register = async (req, res) => {
  const { email } = req.body
  try {
    const emailExist = await userModel.getUsersByConditionAsync({ email })
    if (emailExist.length > 0) {
      const lengthPin = 5
      const pin = Math.floor(Math.pow(10, lengthPin - 1) + Math.random() * 9 * Math.pow(10, lengthPin - 1))
      const salt = await bcrypt.genSalt()
      const encryptedPin = await bcrypt.hash(pin.toString(), salt)
      const updatePin = await userModel.updateProfile(emailExist[0].id_user, { pin: encryptedPin })
      console.log(updatePin)
      const data = {
        email: email,
        subject: 'Pin Verification',
        html: ` <div>
        <h1>Pin Verification</h1>
        <h3>${pin}<h3>
        </div>`
      }
      sendEmail(data)
      const result = await userModel.getUserById(emailExist[0].id_user)
      const dataUser = {
        email: result[0].email,
        phoneNumber: result[0].phoneNumber
      }
      return res.status(200).json({
        success: true,
        message: 'Please check email to get PIN verification',
        result: dataUser
      })
    }
    const lengthPin = 5
    const pin = Math.floor(Math.pow(10, lengthPin - 1) + Math.random() * 9 * Math.pow(10, lengthPin - 1))

    const salt = await bcrypt.genSalt()
    const encryptedPin = await bcrypt.hash(pin.toString(), salt)
    const createUser = await userModel.createUserAsync({ email, pin: encryptedPin })
    if (createUser.affectedRows > 0) {
      const data = {
        email: email,
        subject: 'Pin Verification',
        html: ` <div>
        <h1>Pin Verification</h1>
        <h3>${pin}<h3>
        </div>`
      }
      sendEmail(data)
      const result = await userModel.getUserById(createUser.insertId)
      const dataUser = {
        email: result[0].email,
        phoneNumber: result[0].phoneNumber
      }
      return res.status(200).json({
        success: true,
        message: 'Please check email to get PIN verification',
        result: dataUser
      })
    }
  } catch (err) {
    return res.status(400).json({
      success: false,
      message: 'Please try again leter'
    })
  }
}
