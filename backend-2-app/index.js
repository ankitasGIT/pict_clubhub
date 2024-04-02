const app = require('./app');
const db = require('./config/db.js')
const port = 3000
const User = require('./models/user.models.js')

app.get('/', (req, res) =>{
    console.log("Hello server!");
})

app.listen(port, () =>{
    console.log(`Server listening on port http://localhost:${port}`);
})