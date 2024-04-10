const mongoose = require('mongoose');

const connection = mongoose.createConnection("mongodb://localhost:27017").on('open', ()=>{
    console.log('MongoDB connected');
}).on('error',()=>{
    console.log('MongoDB connection error occurred');
});

module.exports = connection;