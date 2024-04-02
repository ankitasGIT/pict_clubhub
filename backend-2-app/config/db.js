const mongoose = require('mongoose');

const connection = mongoose.createConnection('mongodb://localhost:27017/App_Flutter').on('open', ()=>{
    console.log('MongoDB connected');
}).on('error',()=>{
    console.log('MongoDB connection error occurred');
});

module.exports = connection;