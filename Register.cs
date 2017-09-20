using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonalFinanceManagement;

namespace PersonalFinanceManagement
{
    public class Register
    {
        ReadFinancialApplicationService readService = new ReadFinancialApplicationService();
        FinancialManagementService userService = new FinancialManagementService();



        public string registerUser(User user)
        {
            bool checkUsername = readService.checkUsernameExistence(user.getUsername());
            bool checkEmail = readService.checkEmailExistence(user.getEmail());
            bool checkPassword = readService.checkPasswordStrength(user.getPassword());

            if (checkEmail != true && checkUsername != true && checkPassword != false)
            {
                if (userService.AddUser(user.getName(), user.getSurname(), user.getUsername(), user.getPassword(), user.getDOB(), user.getEmail()) != false)
                {
                    return alertMessage("Registration was succcessful");
                }
                else
                {
                    return alertMessage("Registration was unsuccessful");
                }

            }
            else if (checkUsername != false)
            {
                return alertMessage("Username exist");
            }
            else if (checkUsername != false && checkEmail != false)
            {
                return alertMessage("Email and username exist");

            }
            else if (checkPassword != true)
            {
                return alertMessage("Password is weak");
            }


            return "";
        }

        public String alertMessage(String message)
        {
            return message;
        }

        public bool loguser(String username, string password)
        {
            return readService.login(username, password);
        }

        public string getName(string email)
        {
            return readService.getEndUserEmail(email);
        }
    }
}