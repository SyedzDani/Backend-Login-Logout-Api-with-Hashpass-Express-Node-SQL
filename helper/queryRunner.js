const { createConnection } = require("../config/dbConnection")

exports.queryRunner = async(query,data)=>{
    const connection = await createConnection();
    return await connection.execute(query,data)
}
