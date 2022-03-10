const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const cohortName = process.argv[2];

pool.query(
  `SELECT  teachers.name as teacher, cohorts.name as cohort
  FROM cohorts
  INNER JOIN students ON cohorts.id = students.cohort_id
  INNER JOIN assistance_requests ar ON  ar.student_id = students.id
  INNER JOIN teachers ON teachers.id = ar.teacher_id
  WHERE cohorts.name = '${cohortName}'
  GROUP BY teachers.name, cohorts.name
  ORDER BY teachers.name;
  `)
  .then(res => {
    //console.log(res.rows);
    res.rows.forEach(teacher => {
      console.log(`${teacher.teacher} assisted in the ${teacher.cohort} cohort`);
      
    });
  })
  .catch(err => console.error('query error', err.stack));