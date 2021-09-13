// require dependencies
const mysql = require('mysql');
const inquirer = require('inquirer');
const { promisify } = require('util');

// create the connection to myselg params
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: 'employeeTracker_DB',
});

const query = promisify(connection.query).bind(connection);

console.log(
    "~~~~~~~~~~~~EMPLOYEE MANAGER~~~~~~~~~~~~~~"
);

function menu() {
    inquirer
    .prompt([
        {
            type: 'list',
            name: 'listMenu',
            message: 'What woould you like to do?',
            choices: ["View", "Add", "Update", "Quit"],
        },
    ])
    .then((answer) => {
        switch (answer.listMenu) {
            case "View":
                view();
                break;
            case "Add":
                add();
                break;
            case "Update":
                update();
                break
            default:
                quit();

        }
    });
}

function view() {
    inquirer 
        .prompt([
            {
                type: 'list',
                name: 'viewContent',
                message: 'what would you like to view?',
                choices: [
                    'Employees',
                    'Department',
                    'Roles',
                    'Back',
                ],
            },
        ])
        .then(async (answer) => {
            switch (answer.viewContent) {
                case 'Employees':
                    const result = 
                        await query()
            }
        })
}

function add() {
    inquirer
        .prompt([
            {
                type: 'list',
                name: 'addContent',
                message: 'What would you like to add?',
                choices: ['Department', 'Employee', 'Roles', 'back'],
            },
        ])
        .then((answer) => {
            switch (answer.addContent) {
                case 'Department':
                    addDepartment();
                    break;
                case 'Employee':
                    addEmployee();
                    break;
                case 'Roles':
                    addRoles();
                    break;
                case 'back':
                    menu();
                    break;
            }
        });
}

async function addEmployee() {
    
}
  // function which prompts the user for what action they should take

menu()
// connect to the mysql server and sql database
connection.connect((err) => {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
  });