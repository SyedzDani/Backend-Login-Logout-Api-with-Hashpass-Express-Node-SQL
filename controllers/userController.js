const express = require("express");
const { queryRunner } = require("./../helper/queryRunner");
const { selectQuery, inserUserQuery } = require("./../constants/queries")
const jwt = require("jsonwebtoken");
const bcrypt=require('bcryptjs');
const { hashedPassword } = require("./../helper/hassPassword")


exports.signup = async (req, res)=>{
    const {fName, lName, email, password} = req.body;
    try{
        const selectResult = await queryRunner(selectQuery("user", "email"), [email]);
          if (selectResult[0].length > 0) {
            return res.status(200).json({
              message: "user Already Exist",
            });
        }else{
            const hashpass = await hashedPassword(password);
            const insertResult = await queryRunner(inserUserQuery, [
                fName,
                lName,
                email,
                hashpass
              ]);
              if(insertResult[0].affectedRows > 0 ){

                return res.status(200).json({ 
                    message: "User added successfully",
                    id : insertResult[0].insertId,
                  });
              }
        }

    }catch(error){
        res.status(500).json({
            message : "something Wents wrong",
            error : error.message
        })
    }
};


exports.signIn = async (req, res)=>{
    const { email, password} = req.body;
    try{

        const selectResult = await queryRunner(selectQuery("user", "email"), [email]);
          if (selectResult[0].length == 0) {
            return res.status(404).json({
              message: "user Not Exist",
            });
        }else if (await bcrypt.compare(password, selectResult[0][0].password)) {
            const id = selectResult[0][0].id;
            const secretKey = "dvg678&^fvbbgffd;jvdfjdjgibn";
            const token = jwt.sign({ email, id }, secretKey, {
              expiresIn: "3h",
            });
            return res.status(200).json({ 
              message: "SignIn successfully",
              id,
              token,
              data : selectResult[0] 
            });
        }
        else{
            return res.status(500).json({
                statusCode : 500, 
                message: "Incorrect Password",
              });
        }

    }catch(error){
        res.status(500).json({
            message : "something Wents wrong",
            error : error.message
        })
    }
};

