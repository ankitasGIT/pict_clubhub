const EventModel = require('../models/events.models.js');

class EventService{
    static async createEvent(EventId, EventName, EventCategory, EventContent, EventLink,
        EventStart, EventDeadline, EventFees, EventTime, EventVenue)
    {
        const createEvent = new EventModel({EventId, EventName, EventCategory, EventContent, EventLink,
            EventStart, EventDeadline, EventFees, EventTime, EventVenue});
        return await createEvent.save();
    }
}

module.exports = EventService;