const db = require("../config/dbcon");
const crypto = require("crypto");

const defaultapi = (req, res) => {
  res.setHeader("Content-Type", "application/json");
  res.send({ Message: "Welcome to our school management system" });
};

const signup = (req, res) => {
  const sql = "SELECT * FROM `signupstep1`";

  db.query(sql, (err, data) => {
    if (err) {
      return res.json("Error");
    } else {
      return res.json(data);
    }
  });
};
const signupemail = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const emailid = req.params.email;
  const sql = "SELECT * FROM `signupstep1` WHERE email=?";
  db.query(sql, emailid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const signuppost = (req, res) => {
  const schoolname = req.body.schoolname;
  const schoolurl = req.body.schoolurl;
  const email = req.body.email;
  const phone = req.body.phone;
  const user_token = req.body.user_token;

  const sql =
    "INSERT INTO `signupstep1`(`schoolname`,`schoolurl`,`email`,`phone`,`user_token`) VALUES (?,?,?,?,?)";

  db.query(
    sql,
    [schoolname, schoolurl, email, phone, user_token],
    (err, data) => {
      if (err) {
        return res.json(err);
      }

      return res.json(data);
    }
  );
};

const apisignupid = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const userid = req.params.id;
  const sql = "SELECT * FROM `signupstep1` WHERE user_token=?";
  db.query(sql, userid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const register_address_post = (req, res) => {
  const user_token = req.body.user_token;
  const country = req.body.country;
  const address = req.body.address;

  const sql =
    "INSERT INTO `signupstep2-address`(`user_token`,`country`,`schooladdress`) VALUES (?,?,?)";

  db.query(sql, [user_token, country, address], (err, data) => {
    if (err) {
      return res.json(err);
    }

    return res.json(data);
  });
};
const register_address_get_id = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const userid = req.params.id;
  const sql = "SELECT * FROM `signupstep2-address` WHERE user_token=?";
  db.query(sql, userid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const register_address_get = (req, res) => {
  const sql = "SELECT * FROM `signupstep2-address`";

  db.query(sql, (err, data) => {
    if (err) {
      return res.json("Error");
    } else {
      return res.json(data);
    }
  });
};
const admindata_post = (req, res) => {
  const user_token = req.body.user_token;
  const admin_name = req.body.admin_name;
  const admin_email = req.body.admin_email;
  const admin_password = req.body.admin_password;
  const admin_phone = req.body.admin_phone;
  const admin_confirmPassword = req.body.admin_confirmPassword;
  const school_id = req.body.school_id;

  const sql =
    "INSERT INTO `signup-info`(`user_token`,`admin_name`,`admin_email`, `admin_password`, `admin_phone`,`admin_confirmPassword`,`school_id`) VALUES (?,?,?,?,?,?,?)";

  db.query(
    sql,
    [
      user_token,
      admin_name,
      admin_email,
      admin_password,
      admin_phone,
      admin_confirmPassword,
      school_id,
    ],
    (err, data) => {
      if (err) {
        return res.json(err);
      }

      return res.json(data);
    }
  );
};
const admindata_get_id = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const userid = req.params.id;
  const sql = "SELECT * FROM `signup-info` WHERE user_token=?";
  db.query(sql, userid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};

const admindata_get_email = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const userid = req.params.id;
  const sql = "SELECT * FROM `signup-info` WHERE admin_email=?";
  db.query(sql, userid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const admindata_get = (req, res) => {
  res.setHeader("Content-Type", "application/json");

  const sql = "SELECT * FROM `signup-info`";
  db.query(sql, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};

const classes_get = (req, res) => {
  const sql = "SELECT * FROM `studentclasses`";
  res.setHeader("Content-Type", "application/json");

  db.query(sql, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const classes_post = (req, res) => {
  const class_name = req.body.class_name;
  const user_token = req.body.user_token;
  const class_descripition = req.body.class_descripition;

  const sql =
    "INSERT INTO `studentclasses`(`class_name`,`user_token`,`class_descripition`) VALUES (?,?,?)";
  db.query(sql, [class_name, user_token, class_descripition], (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const classes_get_id = (req, res) => {
  const userid = req.params.id;
  const sql = "SELECT * FROM `studentclasses` WHERE user_token=?";
  db.query(sql, userid, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};

const classes_get_search = (req, res) => {
  const searchTerm = req.params.id;
  const query = "SELECT * FROM `studentclasses` WHERE `class_name` LIKE ?";
  db.query(query, [`%${searchTerm}%`], (error, results) => {
    if (error) {
      console.error("Error occurred:", error);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.json(results);
    }
  });
};
const classes_get_all_search = (req, res) => {
  const sql = "SELECT * FROM `studentclasses`";
  res.setHeader("Content-Type", "application/json");

  db.query(sql, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const class_delete = (req, res) => {
  const key = req.query.key;
  const sql = "DELETE FROM `studentclasses` WHERE id=?";
  db.query(sql, key, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const class_limit = (req, res) => {
  const { page, limit } = req.query;
  const offset = (page - 1) * limit;

  const query = "SELECT * FROM `studentclasses` LIMIT ? OFFSET ?";
  db.query(query, [limit, offset], (error, results) => {
    if (error) {
      console.error("Error executing MySQL query:", error);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.json(results);
    }
  });
};
const studenthouse_get = (req, res) => {
  const query = "SELECT * FROM `studenthouses`";
  db.query(query, (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};
const studenthouse_post = (req, res) => {
  const reqdata = [req.body.house_name, req.body.user_token];
  const query =
    "INSERT INTO `studenthouses`(`house_name`,`user_token`) VALUES (?,?)";
  db.query(query, reqdata, (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};
const studenthouse_get_id = (req, res) => {
  const token = req.params.id;
  const query = "SELECT * FROM `studenthouses` WHERE user_token=?";
  db.query(query, token, (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};
const studenthouse_scan_dublicate = (req, res) => {
  const { name, school_id } = req.params;
  const query =
    "SELECT * FROM `studenthouses` WHERE house_name=? AND user_token=?";
  db.query(query, [name, school_id], (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};

const studenthouse_delete = (req, res) => {
  const key = req.params.key;
  const sql = "DELETE FROM `studenthouses` WHERE id=?";
  db.query(sql, key, (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
function generateRandomCode() {
  const min = 100000; // Minimum 6-digit number
  const max = 999999; // Maximum 6-digit number
  const randomCode = Math.floor(Math.random() * (max - min + 1) + min);
  return randomCode.toString();
}
const Student_post = (req, res) => {
  const { file1, file2 } = req.files;
  const randomCode = crypto.randomBytes(6).toString("hex").toUpperCase();
  const student_school_side_code = generateRandomCode();
  const studentdata = [
    req.body.student_name,
    req.body.date_of_birth,
    req.body.father_name,
    req.body.mother_name,
    req.body.address,
    req.body.nationality,
    req.body.admission_no,
    req.body.age,
    req.body.religion,
    req.body.city,
    req.body.phone,
    req.body.parents_phone,
    req.body.previous_school_name,
    req.body.email,
    req.body.transfer_certificate,
    req.body.physical_handicap,
    req.body.house,
    req.body.student_category,
    req.body.select_class,
    req.body.section,
    req.body.state,
    req.body.blood_group,
    file1[0].path || "",
    req.body.birth_certificate,
    file2[0].path || "",
    req.body.additional_information,
    req.body.gender,
    req.body.admin_token,
    randomCode,
    student_school_side_code,
  ];
  const FeeListEntryData = [
    randomCode,
    req.body.admin_token,
    req.body.student_name,
    req.body.father_name,
    req.body.mother_name,
    req.body.select_class,
    req.body.section,
    req.body.admission_no,
    req.body.gender,
    req.body.parents_phone,
    req.body.email,
    student_school_side_code,
  ];
  const sql =
    "INSERT INTO `studentdata`(`student_name`, `date_of_birth`, `father_name`, `mother_name`, `address`, `nationality`, `admission_no`, `age`, `religion`, `city`, `phone`, `parents_phone`, `previous_school_name`, `email`, `transfer_certificate`, `physical_handicap`, `house`, `student_category`, `select_class`, `section`, `state`, `blood_group`, `student_document`, `birth_certificate`, `student_image`, `additional_information`, `gender`, `admin_token`, `student_code`,`student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  const FeeListEntry = `INSERT INTO studentfeesdb (student_id, school_id, student_name, father_name ,mother_name, student_class, section, admission_no, gender, phone, email, student_school_side_code) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)`;
  db.query(sql, studentdata, (err, data) => {
    if (err) {
      return err;
    } else {
      db.query(FeeListEntry, FeeListEntryData, (err, data) => {
        if (err) {
          res.status(501).json({ Message: err });
        }
      });
      res.send(data);
    }
  });
};

const getstudent_data = (req, res) => {
  const id = req.params.school_id;
  const sql = "SELECT * FROM `studentdata` WHERE admin_token=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const getstudent_data_by_gender = (req, res) => {
  const { school_id, gender } = req.params;
  const sql = "SELECT * FROM `studentdata` WHERE admin_token=? AND gender=?";
  db.query(sql, [school_id, gender], (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const getstudent_data_by_class_section = (req, res) => {
  const { classes, section, school_id } = req.params;
  const sql =
    "SELECT * FROM `studentdata` WHERE select_class=? AND section=? AND admin_token=?";
  db.query(sql, [classes, section, school_id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};

const getstudent_data_by_class = (req, res) => {
  const { classes, school_id } = req.params;
  const sql =
    "SELECT * FROM `studentdata` WHERE select_class=? AND admin_token=?";
  db.query(sql, [classes, school_id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const getstudent_data_admission_no = (req, res) => {
  const {id,school_id} = req.params;
  const sql = "SELECT * FROM `studentdata` WHERE admission_no=? AND admin_token=?";
  db.query(sql, [id,school_id], (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
function generateRandomCodeinExcel() {
  const min = 100000; // Minimum 6-digit number
  const max = 999999; // Maximum 6-digit number
  const randomCode = Math.floor(Math.random() * (max - min + 1) + min);
  return randomCode.toString();
}
const xlsx = require("xlsx");




// const poststudentdata_excel = (req, res) => {
//     const workbook = xlsx.readFile(req.file.path);
//     const worksheet = workbook.Sheets[workbook.SheetNames[0]];
//     const dbPromises = [];

//     let range = xlsx.utils.decode_range(worksheet["!ref"]);

//     for (let row = range.s.r; row <= range.e.r; row++) {
//         let data = [];

//         for (let col = range.s.c; col <= range.e.c; col++) {
//             let cell = worksheet[xlsx.utils.encode_cell({ r: row, c: col })];

//             if (cell && cell.v !== undefined) {
//                 data.push(cell.v);
//             } else {
//                 data.push(null); // or handle the case where cell is undefined
//             }
//         }

//         const baseDate = new Date(Date.UTC(1900, 0, 1));
//         const realDate = new Date(
//             baseDate.getTime() + (data[1] || 0 - 2) * 86400000
//         ).toISOString().slice(0, 10);

//         const randomCode = crypto.randomBytes(6).toString("hex").toUpperCase();
//         const student_school_side_code = generateRandomCodeinExcel(); // You should define this function

//         const studentdata = [
//             data[0] || "",
//             realDate || 0,
//             data[2] || "",
//             data[3] || "",
//             data[4] || "",
//             data[5] || "",
//             data[6] || "",
//             data[7] || "",
//             data[8] || "",
//             data[9] || "",
//             data[10] || "",
//             data[11] || "",
//             data[12] || "",
//             data[13] || "",
//             data[14] || "",
//             data[15] || "",
//             data[16] || "",
//             data[17] || "",
//             req.body.class,
//             req.body.section,
//             data[18] || "",
//             data[19] || "",
//             data[20] || "",
//             req.body.admin_token,
//             randomCode,
//             student_school_side_code,
//         ];

//         const FeeListEntryData = [
//             randomCode,
//             req.body.admin_token,
//             data[0] || "",
//             data[2] || "",
//             data[3] || "",
//             req.body.class,
//             req.body.section,
//             data[6] || "",
//             data[20] || "",
//             data[11] || "",
//             data[13] || "",
//             student_school_side_code,
//         ];
    
//         const sql =
//             "INSERT INTO `studentdata`(`student_name`, `date_of_birth`, `father_name`, `mother_name`, `address`, `nationality`, `admission_no`, `age`, `religion`, `city`, `phone`, `parents_phone`, `previous_school_name`, `email`, `transfer_certificate`, `physical_handicap`, `house`, `student_category`, `select_class`, `section`, `state`, `blood_group`, `gender`, `admin_token`, `student_code`, `student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

//         const FeeListEntry =
//             "INSERT INTO `studentfeesdb` (`student_id` , `school_id`, `student_name`, `father_name`, `mother_name`, `student_class`, `section`, `admission_no`, `gender`, `phone`, `email` , `student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

//             dbPromises.push(
//               new Promise((resolve, reject) => {
//                   db.query(sql, studentdata, (err, studentDataResult) => {
//                       if (err) {
//                           reject(err);
//                       } else {
//                           // Insert FeeListEntry data
//                           db.query(FeeListEntry, FeeListEntryData, (err, feeListResult) => {
//                               if (err) {
//                                   reject(err);
//                               } else {
//                                   resolve({ success: true });
//                               }
//                           });
//                       }
//                   });
//               })
//           );
//     }
//     Promise.all(dbPromises)
//     .then(results => {
//         // All queries executed successfully
//         res.status(200).json({ success: true });
//     })
//     .catch(err => {
//         // Handle errors here
//         res.status(500).json({ error: "An error occurred." });
//     });
// };





const poststudentdata_excel = (req, res) => {
  const workbook = xlsx.readFile(req.file.path);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const dbPromises = [];

  let range = xlsx.utils.decode_range(worksheet["!ref"]);

  for (let row = range.s.r; row <= range.e.r; row++) {
    let data = [];

    for (let col = range.s.c; col <= range.e.c; col++) {
      let cell = worksheet[xlsx.utils.encode_cell({ r: row, c: col })];

      if (cell && cell.v !== undefined) {
        data.push(cell.v);
      } else {
        data.push(null); // or handle the case where cell is undefined
      }
    }

    // Check if all data fields in the row are empty or null
    const isRowEmpty = data.every(value => value === null || value === '');

    if (!isRowEmpty) {
      // Proceed with data insertion
      const baseDate = new Date(Date.UTC(1900, 0, 1));
      const realDate = new Date(
        baseDate.getTime() + (data[1] || 0 - 2) * 86400000
      ).toISOString().slice(0, 10);

      const randomCode = crypto.randomBytes(6).toString("hex").toUpperCase();
      const student_school_side_code = generateRandomCodeinExcel(); // You should define this function

      const studentdata = [
        data[0] || "",
        realDate || 0,
        data[2] || "",
        data[3] || "",
        data[4] || "",
        data[5] || "",
        data[6] || "",
        data[7] || "",
        data[8] || "",
        data[9] || "",
        data[10] || "",
        data[11] || "",
        data[12] || "",
        data[13] || "",
        data[14] || "",
        data[15] || "",
        data[16] || "",
        data[17] || "",
        req.body.class,
        req.body.section,
        data[18] || "",
        data[19] || "",
        data[20] || "",
        req.body.admin_token,
        randomCode,
        student_school_side_code,
      ];

      const FeeListEntryData = [
        randomCode,
        req.body.admin_token,
        data[0] || "",
        data[2] || "",
        data[3] || "",
        req.body.class,
        req.body.section,
        data[6] || "",
        data[20] || "",
        data[11] || "",
        data[13] || "",
        student_school_side_code,
      ];

      const sql =
        "INSERT INTO `studentdata`(`student_name`, `date_of_birth`, `father_name`, `mother_name`, `address`, `nationality`, `admission_no`, `age`, `religion`, `city`, `phone`, `parents_phone`, `previous_school_name`, `email`, `transfer_certificate`, `physical_handicap`, `house`, `student_category`, `select_class`, `section`, `state`, `blood_group`, `gender`, `admin_token`, `student_code`, `student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

      const FeeListEntry =
        "INSERT INTO `studentfeesdb` (`student_id` , `school_id`, `student_name`, `father_name`, `mother_name`, `student_class`, `section`, `admission_no`, `gender`, `phone`, `email` , `student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

      dbPromises.push(
        new Promise((resolve, reject) => {
          db.query(sql, studentdata, (err, studentDataResult) => {
            if (err) {
              reject(err);
            } else {
              // Insert FeeListEntry data
              db.query(FeeListEntry, FeeListEntryData, (err, feeListResult) => {
                if (err) {
                  reject(err);
                } else {
                  resolve({ success: true });
                }
              });
            }
          });
        })
      );
    }
  }

  if (dbPromises.length === 0) {
    // No non-empty rows found
    res.status(400).json({ error: 'No valid data found in the Excel file.' });
    return;
  }

  // Wait for all promises to resolve or reject
  Promise.all(dbPromises)
    .then(results => {
      // All queries executed successfully
      res.status(200).json({ success: true });
    })
    .catch(err => {
      // Handle errors here
      console.error('Error inserting data:', err);
      res.status(500).json({ error: 'An error occurred while inserting data.' });
    });
};








const postteacher_data = (req, res) => {
  const randomCode = crypto.randomBytes(6).toString("hex").toUpperCase();

  const { file1, file2 } = req.files;

  const data = [
    req.body.name,
    req.body.dob,
    req.body.gender,
    req.body.religion,
    req.body.bloodgroup,
    req.body.email,
    req.body.phone,
    req.body.qualification,
    req.body.martial_status,
    req.body.address,

    req.body.department,
    req.body.dateofjoining,
    req.body.joiningsalary,
    req.body.status,
    req.body.accountholdername,
    req.body.accountnumber,
    req.body.bankname,
    req.body.branch,
    file1[0].path,
    file2[0].path,
    req.body.school_id,
    randomCode,
  ];

  const sql =
    "INSERT INTO `teachersdata`(`name`, `dob`, `gender`, `religion`, `bloodgroup`, `email`, `phone`, `qualification`, `martialstatus`, `address`, `department`, `dateofjoining`, `joiningsalary`, `status`, `accountholdername`, `accountnumber`, `bankname`, `branch`, `identifydocument`, `img`, `school_id`, `teacher_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  db.query(sql, data, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};

const nonteacher_post = (req, res) => {
  const randomCode = crypto.randomBytes(6).toString("hex").toUpperCase();

  const { file1, file2 } = req.files;
  const sqldata = [
    req.body.name,
    req.body.dob,
    req.body.gender,
    req.body.religion,
    req.body.bloodgroup,
    req.body.email,
    req.body.phone,
    req.body.qualification,
    req.body.martial_status,
    req.body.address,
    req.body.department,
    req.body.dateofjoining,
    req.body.joiningsalary,
    req.body.status,
    req.body.accountholdername,
    req.body.accountnumber,
    req.body.bankname,
    req.body.branch,
    file1[0].path || "",
    file2[0].path || "",
    req.body.school_id,
    randomCode,
  ];
  const sql =
    "INSERT INTO `nonteachingstaff`(`name`, `dob`, `gender`, `religion`, `bloodgroup`, `email`, `phone`, `qualification`, `martialstatus`, `address`, `department`, `dateofjoining`, `joiningsalary`, `status`, `accountholdername`, `accountnumber`, `bankname`, `branch`, `identitydocument`, `img`, `school_id`, `teacher_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const nonteacher_get = (req, res) => {
  const { school_id } = req.params;
  const sql = "SELECT * FROM `nonteachingstaff` WHERE `school_id`=?";
  db.query(sql, school_id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const nonteacher_get_id = (req, res) => {
  const { school_id, id } = req.params;
  const sql = "SELECT * FROM `nonteachingstaff` WHERE `school_id`=? AND id=?";
  db.query(sql, [school_id, id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const class_section = (req, res) => {
  const class_name = req.body.class_name;
  const user_token = req.body.user_token;
  const class_section = req.body.section_name;

  const sql =
    "INSERT INTO `class_sections`(`user_token`, `class`, `section`) VALUES (?,?,?)";
  db.query(sql, [user_token, class_name, class_section], (err, data) => {
    if (err) {
      return err;
    } else {
      return res.json(data);
    }
  });
};
const class_section_get = (req, res) => {
  const sql = "SELECT * FROM `class_sections`";
  db.query(sql, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const class_section_get_id = (req, res) => {
  const token = req.params.id;
  const query = "SELECT * FROM `class_sections` WHERE user_token=?";
  db.query(query, token, (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};
const class_section_get_class = (req, res) => {
  const { classes, user_id } = req.params;

  const query = "SELECT * FROM `class_sections` WHERE class=? AND user_token=?";
  db.query(query, [classes, user_id], (err, data) => {
    if (err) {
      res.status(500).json({ err: "Internal Server Error" });
    } else {
      res.json(data);
    }
  });
};
const getstudentdatabyadmin = (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `studentdata` WHERE admin_token=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};

const getteacherdatabyadmin = (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `teachersdata` WHERE school_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const getteacherdatabyadmin_by_gender = (req, res) => {
  const { school_id, gender } = req.params;
  const sql = "SELECT * FROM `teachersdata` WHERE `school_id`=? AND `gender`=?";
  db.query(sql, [school_id, gender], (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const getteacherdatabyid = (req, res) => {
  const { admin_id, id } = req.params;
  const sql = "SELECT * FROM `teachersdata` WHERE id=? AND school_id=?";
  db.query(sql, [id, admin_id], (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const getteacherdatabyteacher_id = (req, res) => {
  const { teacher_id, admin_id } = req.params;
  const sql = "SELECT * FROM `teachersdata` WHERE teacher_id=? AND school_id=?";
  db.query(sql, [teacher_id, admin_id], (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const studentdetailbyid = (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `studentdata` WHERE student_code=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      return err;
    } else {
      res.send(data);
    }
  });
};
const schooltimetable_post = (req, res) => {
  const admin_id = req.body.admin_id;
  const classes = req.body.class;
  const startday = req.body.startday;
  const endday = req.body.endday;
  const teachername = req.body.teacher_name;
  const subject = req.body.subject;
  const section = req.body.section;
  const startinghour = req.body.starthour;
  const startingminutes = req.body.startminutes;
  const endhour = req.body.endhour;
  const endminutes = req.body.endminutes;
  const startampm = req.body.startampm;
  const endampm = req.body.endampm;
  const teacher_id = req.body.teacher_id;
  const sqldata = [
    admin_id,
    classes,
    startday,
    startinghour + ":" + startingminutes + " " + startampm,
    endhour + ":" + endminutes + " " + endampm,
    endday,
    teachername,
    subject,
    section,
    teacher_id,
  ];
  const sql =
    "INSERT INTO `schooltimetable`(`admin_id`, `class`, `startday`, `startingtime`, `endingtime`, `endday`, `assign_teacher`, `subject`, `section`,`teacher_id`) VALUES (?,?,?,?,?,?,?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schooltimetable_get = (req, res) => {
  const sql = "SELECT * FROM `schooltimetable`";
  db.query(sql, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schooltimetable_get_by_id = (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `schooltimetable` WHERE admin_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schooltimetable_get_teacher = (req, res) => {
  const { teacher_id, admin_id } = req.params;
  const sql =
    "SELECT * FROM `schooltimetable` WHERE teacher_id=? AND admin_id=?";
  db.query(sql, [teacher_id, admin_id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolsubject_post = (req, res) => {
  const sqldata = [
    req.body.subject,
    req.body.admin_id,
    req.body.class,
    req.body.stream || "",
  ];
  const sql =
    "INSERT INTO `schoolsubject`(`subject`, `admin_id`, `class`,`stream`) VALUES (?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolsubject_get = (req, res) => {
  const sql = "SELECT * FROM `schoolsubject`";
  db.query(sql, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};

const schoolsubject_get_id = (req, res) => {
  const { classes, id } = req.params;
  const sql = "SELECT * FROM `schoolsubject` WHERE class=? AND admin_id=?";
  db.query(sql, [classes, id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolsubject_get_id_class = (req, res) => {
  const { classes } = req.params;
  const sql = "SELECT * FROM `schoolsubject` WHERE class=?";
  db.query(sql, [classes], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolsubject_delete = (req, res) => {
  const { key } = req.params;
  const sql = "DELETE FROM `schoolsubject` WHERE id=?";
  db.query(sql, key, (err, data) => {
    if (err) {
      return res.send(err);
    } else {
      return res.send(data);
    }
  });
};
const schoolholiday_post = (req, res) => {
  const sqldata = [
    req.body.user_token,

    req.body.holiday_name,
    req.body.startdate,
    req.body.enddate,
  ];
  const sql =
    "INSERT INTO `schoolholiday`(`user_id`, `holiday_name`, `startdate`, `enddate`) VALUES (?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolholiday_get = (req, res) => {
  const sql = "SELECT * FROM `schoolholiday`";
  db.query(sql, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolholiday_get_user_id = (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `schoolholiday` WHERE user_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolholiday_delete = (req, res) => {
  const id = req.params.id;

  const sql = "DELETE FROM `schoolholiday` WHERE id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolcalenders = (req, res) => {
  const sqldata = [
    req.body.school_id,
    req.body.start,
    req.body.end,
    req.body.title,
  ];

  const sql =
    "INSERT INTO `schoolcalender`(`school_id`, `start`, `end`, `title`) VALUES (?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolcalender_get = (req, res) => {
  const sql = "SELECT * FROM `schoolcalender`";
  db.query(sql, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schoolcalender_get_id = (req, res) => {
  const id = req.params.id;
  const sql =
    "SELECT  `id`, `start`, `end`, `title` FROM `schoolcalender` WHERE school_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const schooltimetable_get_class_section = (req, res) => {
  const { classes, section, school_id } = req.params;
  const sql =
    "SELECT * FROM `schooltimetable` WHERE class=? AND section=? AND admin_id=?";
  db.query(sql, [classes, section, school_id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const managestudentfee_post = (req, res) => {
  const sqldata = [
    req.body.month,
    req.body.amount,
    req.body.fee_status,
    req.body.year,
    req.body.date,
    req.body.student_id,
    req.body.class,
    req.body.section,
    req.body.student_name,
    req.body.school_id,
    req.body.remain_balance,
  ];
  const sql =
    "INSERT INTO `manage_student_fee`(`month`, `amount`, `status`, `year`, `date`, `student_id`, `class`, `section`, `student_name`,`school_id`,`remain_balance`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const managestudentfee_get_by_school_id = (req, res) => {
  const school_id = req.params.school_id;
  const student_id = req.params.student_id;
  const sql =
    "SELECT * FROM `manage_student_fee` WHERE school_id=? AND student_id=?";
  db.query(sql, [school_id, student_id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const managestudentfee_get_by_school_id_class = (req, res) => {
  const school_id = req.params.school_id;
  const classes = req.params.classes;
  const sql =
    "SELECT * FROM `manage_student_fee` WHERE school_id=? AND class=?";
  db.query(sql, [school_id, classes], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const managestudentfee_get_by_school_id_student_id = (req, res) => {
  const { student_id, school_id, month, year } = req.params;
  const sql =
    "SELECT * FROM `manage_student_fee` WHERE school_id=? AND student_id=? AND month=? AND year=?";
  db.query(sql, [school_id, student_id, month, year], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_announcement_post = (req, res) => {
  const sqldata = [
    req.body.heading,
    req.body.notice,
    req.body.date,
    req.body.school_id,
  ];
  const sql =
    "INSERT INTO `new_announcement`(`heading`, `notice`, `date`, `school_id`) VALUES (?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_announcement_get = (req, res) => {
  const id = req.params.school_id;
  const sql = "SELECT * FROM `new_announcement` WHERE school_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_announcement_delete = (req, res) => {
  const id = req.params.id;
  const sql = "DELETE FROM `new_announcement` WHERE id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_announcement_update = (req, res) => {
  const id = req.params.id;
  const sqldata = [
    req.body.heading,
    req.body.notice,
    req.body.date,
    req.body.school_id,
    id,
  ];
  const sql =
    "UPDATE `new_announcement` SET `heading`=?,`notice`=?,`date`=?,`school_id`=? WHERE id=?";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_announcement_id = (req, res) => {
  const { school_id, id } = req.params;
  const sql = "SELECT * FROM `new_announcement` WHERE school_id=? AND id=?";
  db.query(sql, [school_id, id], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_section_dublicate = (req, res) => {
  const { section, classes, school_id } = req.params;
  const sql =
    "SELECT * FROM `class_sections` WHERE section=? AND user_token=? AND class=?";
  db.query(sql, [section, school_id, classes], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};

const section_delete = (req, res) => {
  const { id } = req.params;
  const sql = "DELETE FROM `class_sections` WHERE id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const school_subject_dublicate = (req, res) => {
  const { subject, school_id, classes } = req.params;
  const sql =
    "SELECT * FROM `schoolsubject` WHERE subject=? AND admin_id=? AND class=?";
  db.query(sql, [subject, school_id, classes], (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
};
const update_student_data = (req, res) => {
  const student_code = req.params.id;
  const studentdata = [
    req.body.student_name,
    req.body.date_of_birth,
    req.body.father_name,
    req.body.mother_name,
    req.body.address,
    req.body.admission_no,
    req.body.age,
    req.body.religion,
    req.body.city,
    req.body.phone,
    req.body.parents_phone,
    req.body.previous_school_name,
    req.body.email,
    req.body.house,
    req.body.select_class,
    req.body.section,
    req.body.state,
    req.body.select_document,
    student_code,
  ];
  const sql =
    "UPDATE `studentdata` SET `student_name`=?,`date_of_birth`=?,`father_name`=?,`mother_name`=?,`address`=? ,`admission_no`=?,`age`=?,`religion`=?,`city`=?,`phone`=?,`parents_phone`=?,`previous_school_name`=?,`email`=?,`house`=?,`select_class`=?,`section`=?,`state`=?,`birth_certificate`=? WHERE `student_code`=?";
  db.query(sql, studentdata, (err, data) => {
    if (err) {
      res.status(404).json({ message: "not updated" });
    } else {
      res.status(200).json({ message: "student updated successfully" });
    }
  });
};
const studentdocupdate = (req, res) => {
  const studentcode = req.params.id;
  const fileUpdateSql =
    "UPDATE `studentdata` SET `student_document`=? WHERE `student_code`=?";
  db.query(fileUpdateSql, [req.files.file1[0].path, studentcode], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};

const studentimageupdate = (req, res) => {
  const studentcode = req.params.id;
  const fileUpdateSql =
    "UPDATE `studentdata` SET `student_image`=? WHERE `student_code`=?";
  db.query(fileUpdateSql, [req.files.file2[0].path, studentcode], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};
const updateteacher = (req, res) => {
  const { id } = req.params;
  const sqldata = [
    req.body.name,
    req.body.dob,
    req.body.religion,
    req.body.email,
    req.body.phone,
    req.body.qualification,
    req.body.martial_status,
    req.body.address,
    req.body.department,
    req.body.joiningsalary,
    req.body.status,
    req.body.accountholdername,
    req.body.accountnumber,
    req.body.bankname,
    req.body.branch,
    id,
  ];
  const sql =
    "UPDATE `teachersdata` SET `name`=?,`dob`=?,`religion`=?,`email`=?,`phone`=?,`qualification`=?,`martialstatus`=?,`address`=?,`department`=?,`joiningsalary`=?,`status`=?,`accountholdername`=?,`accountnumber`=?,`bankname`=?,`branch`=? WHERE `id`=?";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.status(200).json({ message: "Updated Successfully" });
    }
  });
};

const updatenonteacher = (req, res) => {
  const { id } = req.params;
  const sqldata = [
    req.body.name,
    req.body.dob,
    req.body.religion,
    req.body.email,
    req.body.phone,
    req.body.qualification,
    req.body.martial_status,
    req.body.address,
    req.body.department,
    req.body.joiningsalary,
    req.body.status,
    req.body.accountholdername,
    req.body.accountnumber,
    req.body.bankname,
    req.body.branch,
    id,
  ];
  const sql =
    "UPDATE `nonteachingstaff` SET `name`=?,`dob`=?,`religion`=?,`email`=?,`phone`=?,`qualification`=?,`martialstatus`=?,`address`=?,`department`=?,`joiningsalary`=?,`status`=?,`accountholdername`=?,`accountnumber`=?,`bankname`=?,`branch`=? WHERE `id`=?";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.send(err);
    } else {
      res.status(200).json({ message: "Updated Successfully" });
    }
  });
};
const teacherdocupdate = (req, res) => {
  const code = req.params.id;
  const fileUpdateSql =
    "UPDATE `teachersdata` SET `identitydocument`=? WHERE `id`=?";
  db.query(fileUpdateSql, [req.files.file1[0].path, code], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};
const teacherimgupdate = (req, res) => {
  const code = req.params.id;
  const fileUpdateSql = "UPDATE `teachersdata` SET `img`=? WHERE `id`=?";
  db.query(fileUpdateSql, [req.files.file2[0].path, code], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};
const nonteacherdocupdate = (req, res) => {
  const code = req.params.id;
  const fileUpdateSql =
    "UPDATE `nonteachingstaff` SET `identitydocument`=? WHERE `id`=?";
  db.query(fileUpdateSql, [req.files.file1[0].path, code], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};
const nonteacherimgupdate = (req, res) => {
  const code = req.params.id;
  const fileUpdateSql = "UPDATE `nonteachingstaff` SET `img`=? WHERE `id`=?";
  db.query(fileUpdateSql, [req.files.file2[0].path, code], (err) => {
    if (err) {
      return err;
    } else {
      res.status(200).json("Successfully Updated");
    }
  });
};
const feedetails = (req, res) => {
  const { id } = req.params;
  const sql = "SELECT * FROM `studentfeesdb` WHERE school_id=?";
  db.query(sql, id, (err, data) => {
    if (err) {
      res.status(501).json({ Message: err });
    } else {
      res.status(200).send(data);
    }
  });
};
const PaymentUpdatefeedetails = (req, res) => {
  const { id, student_id } = req.params;
  const currentDate = new Date();

  const options = {
    day: "numeric",
    month: "short",
    year: "numeric",
  };

  const formattedDate = currentDate.toLocaleString("en-US", options);

  const Paymenttoken = crypto.randomBytes(16).toString("hex");

  const sqldata = [
    Paymenttoken,
    req.body.method,
    req.body.months,
    req.body.year,
    req.body.status,
    formattedDate,
    req.body.remain_amount === "" ? 0 : req.body.remain_amount,
    req.body.tuition_amount,
    req.body.exam_amount,
    req.body.transport_amount,
    req.body.admission_amount,
    req.body.sports_amount,
    id,
    student_id,
  ];
  const total_amount =
    Number(req.body.tuition_amount) +
    Number(req.body.exam_amount) +
    Number(req.body.transport_amount) +
    Number(req.body.admission_amount) +
    Number(req.body.sports_amount);

  const paymentsql =
    "INSERT INTO `allfeepaymentdetails`(`student_id`, `student_name`, `payment_id`, `payment_method`, `tuition_amount`, `transport_amount`, `sports_amount`, `admission_amount`, `exam_amount`, `total_amount`, `date`, `months`, `year`,`school_id`,`remain_amount`,`status`,`student_class`,`reciept_no`,`father_name`,`student_school_side_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  const sql =
    "UPDATE `studentfeesdb` SET `payment_id`=?,`payment_method`=?,`payment_month`=?,`payment_year`=?,`payment_status`=?,`date`=?, `payment_remain`=?,`tuition_amount`=?,`exam_amount`=?,`transport_amount`=?,`admission_amount`=?,`sports_amount`=? WHERE school_id=? AND student_id=? ";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.status(501).json({ Message: err });
    } else {
      db.query(
        paymentsql,
        [
          student_id,
          req.body.student_name,
          Paymenttoken,
          req.body.method,
          req.body.tuition_amount || 0,
          req.body.transport_amount || 0,
          req.body.sports_amount || 0,
          req.body.admission_amount || 0,
          req.body.exam_amount || 0,
          total_amount || 0,
          formattedDate,
          req.body.months,
          req.body.year,
          id,
          req.body.remain_amount === "" ? 0 : req.body.remain_amount,
          req.body.status,
          req.body.student_class,
          req.body.reciept_no,
          req.body.father_name,
          req.body.student_school_side_code,
        ],
        (err, data) => {
          if (err) {
            res.status(501).json({ Message: err });
          }
        }
      );

      res.status(200).send({ Response: "Updated" });
    }
  });
};
const OtherExtraFees = (req, res) => {
  const { school_id, student_id } = req.params;
  const sqldata = [
    req.body.feereason,
    req.body.amountpaid,
    school_id,
    student_id,
    req.body.otherfeemonth,
    req.body.year,
  ];
  const sql =
    "INSERT INTO `otherextrafees`(`reasonforfees`,`amount`,`school_id`, `student_id`,`curr_month`,`curr_year`) VALUES (?,?,?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.status(404).json({ Response: err });
    } else {
      res.status(200).json({ Response: "Updated" });
    }
  });
};
const cron = require("node-cron");

const update_sql = async (req, res) => {
  const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  const currentYear = new Date().getFullYear();

  const currentDate = new Date();
  const currentMonth = months[currentDate.getMonth()];
  const sql = `UPDATE studentfeesdb SET payment_status='' WHERE SUBSTRING_INDEX(payment_month, ',', -1)=? AND payment_status="Balance Clear" AND payment_year=?`;
  db.query(sql, [currentMonth, currentYear], (err, data) => {
    if (err) {
      console.log(err);
    } else {
      console.log(data);
    }
  });
};
cron.schedule("0 0 28-31 * *", update_sql);
const paymenthistory = async (req, res) => {
  const { school_id, student_id } = req.params;
  const sql =
    "SELECT * FROM `allfeepaymentdetails` WHERE school_id=? AND student_id=? ORDER BY id DESC  LIMIT 10";
  db.query(sql, [school_id, student_id], (err, data) => {
    if (err) {
      res.status(404).json({ Response: err });
    } else {
      res.send(data);
    }
  });
};

const Allpaymenthistory = (req, res) => {
  const { school_id } = req.params;
  const sql =
    "SELECT * FROM `allfeepaymentdetails` WHERE school_id=? ORDER BY id DESC";
  db.query(sql, [school_id], (err, data) => {
    if (err) {
      res.status(404).json({ Response: err });
    } else {
      res.send(data);
    }
  });
};
const paymenthistorybyamount = (req, res) => {
  const { school_id, student_id } = req.params;
  const sql = "SELECT * FROM `allfeepaymentdetails` WHERE school_id=? AND id=?";
  db.query(sql, [school_id, student_id], (err, data) => {
    if (err) {
      res.status(404).json({ Response: err });
    } else {
      res.send(data);
    }
  });
};
const SchoolExam_Post = (req, res) => {
  const { school_id } = req.params;
  const sqldata = [
    req.body.exam_name === "Other Examination"
      ? req.body.other_exam
      : req.body.exam_name,
    school_id,
    req.body.start_date,
    req.body.end_date,
    req.body.session,
  ];
  const sql =
    "INSERT INTO `schoolexamination`(`exam_name`, `school_id`, `start_date`, `end_date`, `session`) VALUES (?,?,?,?,?)";
  db.query(sql, sqldata, (err, data) => {
    if (err) {
      res.status(401).json({ response: err });
    } else {
      res.status(200).json({ response: true });
    }
  });
};
const SchoolExam_Get = (req, res) => {
  const { school_id } = req.params;
  const sql = "SELECT * FROM `schoolexamination` WHERE school_id=?";
  db.query(sql, [school_id], (err, data) => {
    if (err) {
      res.status(404).json({ response: err });
    } else {
      res.status(200).json({ response: data });
    }
  });
};

const StudentMarksUpload = async (req, res) => {
  const workbook = xlsx.readFile(req.file.path);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const StudentData = [];

  let range = xlsx.utils.decode_range(worksheet["!ref"]);

  for (let row = range.s.r; row <= range.e.r; row++) {
      let data = [];

      for (let col = range.s.c; col <= range.e.c; col++) {
          let cell = worksheet[xlsx.utils.encode_cell({ r: row, c: col })];
          if (cell && cell.v !== undefined) {
            data.push(cell.v);
          }

      }
      if (data.length > 0) {
        StudentData.push(data);
      }
   }
  const [headers, ...data] = StudentData;
  const studentsData = data.map((student) => {
      const studentObject = {};
      headers.forEach((heading, index) => {
          if (heading === "Total Marks obtained") {
              studentObject["total"] = { total: student[index] };
          } else {
              studentObject[heading] = student[index];
          }
      });
      return studentObject;
  });

  try {
      for (const student of studentsData) {
          const studentJSON = JSON.stringify(student);
          const studentId = student["Student ID"];

          const sql =
              "INSERT INTO `student_exam_marks`(`school_id`, `student_class`, `exam_name`, `student_id`, `marksdata`) VALUES (?,?,?,?,?)";
          const values = [
              req.body.school_id,
              req.body.student_class,
              req.body.exam_name,
              studentId,
              studentJSON,
          ];

          db.query(sql, values);
      }

      res.status(200).json({ response: true });
  } catch (err) {
      res.status(500).json({ response: err.message });
  }
};
const getstudentmarks=(req,res)=>{
  const {id,exam}=req.params;
  const sql="SELECT * FROM  `student_exam_marks` WHERE student_id=? AND exam_name=?"
  db.query(sql,[id,exam],(err,data)=>{
    if(err){
      res.status(404).json({response:err});
    }else{
      res.status(200).json({response:data});
    }
  })
}

const UpdateStudentMarks=(req,res)=>{
  const {school_id,student_id}=req.params;
  const sqldata=[
    JSON.stringify(req.body.marks),
    school_id,
    student_id,
    req.body.exam,
  ]
  const sql="UPDATE `student_exam_marks` SET `marksdata`=? WHERE school_id=? AND student_id=? AND exam_name=?";
  db.query(sql,sqldata,(err,data)=>{
    if(err){
      res.status(404).json({Response:err});
    }else{
      res.status(200).json({Response:true});
    }
  })

}
module.exports = {
  getstudentmarks,
  UpdateStudentMarks,
  SchoolExam_Get,
  StudentMarksUpload,
  SchoolExam_Post,
  paymenthistorybyamount,
  Allpaymenthistory,
  OtherExtraFees,
  paymenthistory,
  admindata_get_email,
  studentdocupdate,
  updatenonteacher,
  PaymentUpdatefeedetails,
  nonteacherdocupdate,
  nonteacherimgupdate,
  teacherimgupdate,
  teacherdocupdate,
  updateteacher,
  feedetails,
  studentimageupdate,
  update_student_data,
  school_subject_dublicate,
  admindata_post,
  section_delete,
  studenthouse_scan_dublicate,
  school_section_dublicate,
  school_announcement_id,
  school_announcement_update,
  school_announcement_delete,
  schoolsubject_get_id_class,
  school_announcement_get,
  school_announcement_post,
  nonteacher_post,
  managestudentfee_get_by_school_id_class,
  getstudent_data_by_gender,
  managestudentfee_get_by_school_id_student_id,
  managestudentfee_get_by_school_id,
  managestudentfee_post,
  getstudent_data_by_class_section,
  schooltimetable_get_class_section,
  schoolcalender_get_id,
  schoolcalender_get,
  schoolcalenders,
  schoolholiday_delete,
  schoolholiday_get_user_id,
  schoolholiday_get,
  nonteacher_get,
  schoolholiday_post,
  schoolsubject_delete,
  nonteacher_get_id,
  schoolsubject_get_id,
  getteacherdatabyteacher_id,
  getteacherdatabyid,
  schoolsubject_get,
  schoolsubject_post,
  schooltimetable_get_by_id,
  schooltimetable_get,
  schooltimetable_post,
  studentdetailbyid,
  signup,
  getteacherdatabyadmin,
  getstudentdatabyadmin,
  class_section_get_class,
  class_section_get_id,
  class_section_get,
  poststudentdata_excel,
  signupemail,
  class_section,
  getstudent_data_by_class,
  signuppost,
  apisignupid,
  schooltimetable_get_teacher,
  register_address_post,
  register_address_get_id,
  register_address_get,
  admindata_get_id,
  defaultapi,
  postteacher_data,
  admindata_get,
  classes_get,
  classes_post,
  classes_get_id,
  classes_get_search,
  classes_get_all_search,
  class_delete,
  class_limit,
  studenthouse_get,
  getstudent_data,
  studenthouse_post,
  getteacherdatabyadmin_by_gender,
  studenthouse_get_id,
  studenthouse_delete,
  Student_post,
  getstudent_data_admission_no,
};
