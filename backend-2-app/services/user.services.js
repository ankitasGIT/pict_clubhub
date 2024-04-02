const User = require('../models/user.models.js');
const jwt = require('jsonwebtoken');

class UserService{
    static async registerUser(username, email, password){
        try {
            const createUser = new User({username, email, password});
            return await createUser.save();
        } catch (error) {
            throw error;
        }
    }
    
    static async loginUser(email){
        try {
            return await User.findOne({email});
        } catch (error) {
            throw error;
        }
    }


    static async generateToken(tokenData, secretKey, jwtExpiry){
        return jwt.sign(tokenData, secretKey, {expiresIn: jwtExpiry});
    }
}

module.exports = UserService;