const express = require("express");

express()
  .get("/", (req, res) => {
    console.log("Got GET request!");
    res.send("You hit the server! new dpeloyment!!");
  })
  .listen(80, () => console.log("Server running!"));
