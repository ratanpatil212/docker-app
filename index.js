var express = require('express');
var app = express();
const port = 8080;

app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/index.html');
});

app.listen(port,()=>{
    console.log("Example app is listening on " + port);
})