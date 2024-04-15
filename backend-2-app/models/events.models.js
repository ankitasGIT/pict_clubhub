const mongoose = require('mongoose')
const db = require('../config/db.js')
const UserModel = require('../models/user.models.js')
const {Schema} = mongoose;

const EventSchema = new Schema({
    Admin: {
        type: Schema.Types.ObjectId,
        ref: "User",
        required:true
    },
    EventId: {
        type: Number,
        default: 0
    },
    EventName: {
        type: String,
        uppercase: true,
        required: true
    },
    EventCategory: {
        type: String,
        required: true
    },
    EventContent: {
        type: String,
        required: true
    },
    EventLink: {
        type: String,
        required: true
    },
    EventStart: {
        type: Date,
        required: true
    },
    EventDeadline: {
        type: Date,
        required: true
    },
    EventImage: {
        type: String
    },
    EventFees: {
        type: Number,
    },
    EventTime: {
        type: String,
    },
    EventVenue: {
        type: String,
        required: true
    },

}, {timestamps : true});


const Event = db.model('Event', EventSchema);

module.exports = Event;