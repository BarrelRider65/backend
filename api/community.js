const express = require('express');
const router = express.Router();

const fs = require('fs');

/* GET
baseurl:port/community
*/

router.get('/',function(req,res){
    console.log(`${__dirname} and ${__filename}`)
    scanFiles(res);
})

/** POST
 * baseurl:port/community
 */

router.post('/',function(req,res){
    console.log(req.body);
    res.send(
        {   
            name:"Clark",
            secondName: "Kent",
            age:32
        }
        );
});


const imgDir = __dirname+"/../public/imgs/";
var imageList = [];

function scanFiles(res){
    fs.readdir(imgDir,(err,files) => {
        files.filter(
            function(element, index, array){
                // console.log(`=====${index}===${array}==`)
                return element!=".DS_Store"
            }
        )
        .forEach(file => {
            imageList.push(file);
        });
        res.json(decoratePath(imageList));;
        // imageList.forEach(path => {
        //     console.log(`get path ${path}`);
        // });       
    });
}

function decoratePath(imgs){
    let result = {
        errorCode: 412,
        errorMessage: "",
        data: {
            nextTag: "sax",
            users: []
        }
    };
    imgs.map(function(path){
        return imgurlbyName(path)
    }).forEach(path =>{
        result.data.users.push({
            name: "John",
            Age: path.length,
            avrtar: path
        })
    });
    return result;
}

const config = require('../configs/config');

function imgurlbyName(name){
    return config.domain+":"+config.port
        +"/img/"+name
}


module.exports = router;  