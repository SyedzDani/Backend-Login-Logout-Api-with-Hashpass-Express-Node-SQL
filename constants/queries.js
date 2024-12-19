exports.selectQuery = (table, ...field) => {
    if (field.length === 1) {
      return `SELECT * FROM ${table} WHERE ${field[0]} = ?`;
    } 
    else if (field.length > 1) {
      return `SELECT * FROM ${table} WHERE ${field[0]} = ? and ${field[1]} = ?`;
    } else {
      return `SELECT * FROM ${table}`;
    }
  };

  exports.inserUserQuery = "INSERT INTO user (fName, lName, email, password) VALUES (?,?,?,?)";