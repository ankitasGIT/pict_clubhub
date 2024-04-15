const mongoose = require("mongoose");

const connection = mongoose
  .createConnection(
    "mongodb+srv://clubhub_backend:ct7B6YangENWhR@clubhub.nqohaao.mongodb.net/?retryWrites=true&w=majority&appName=clubhub"
  )
  .on("open", () => {
    console.log("MongoDB connected");
  })
  .on("error", () => {
    console.log("MongoDB connection error occurred");
  });

module.exports = connection;
