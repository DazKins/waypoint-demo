const express = require('express')

express()
  .get('/', (req, res) => {
    console.log('Got GET request!')
    res.send('You hit the server v2! And here\'s a new deloyment!!!')
  })
  .listen(80, () => console.log('Server running!'))
