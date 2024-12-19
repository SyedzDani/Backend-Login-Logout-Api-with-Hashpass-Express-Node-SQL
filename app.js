const express = require('express');
const { connect } = require('./config/dbConnection')
const router = require("./routes/userRoutes");
const app = express();
app.use(express.json());
connect();

app.use("/user",router);



    app.listen(3200, ()=>{
        console.log('Example app listening on port 3200');
    })
