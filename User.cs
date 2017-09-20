using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class User
    {
        private string name;
        private string surname;
        private string username;
        private string password;
        private DateTime dob;
        private string email;

        public String getName()
        {
            return name;
        }

        public String getSurname()
        {
            return surname;
        }

        public String getUsername()
        {
            return username;
        }

        public String getPassword()
        {
            return password;
        }

        public DateTime getDOB()
        {
            return dob;
        }

        public String getEmail()
        {
            return email;
        }

        public void setUserDetails(string name, string surname, string username, string password, DateTime dob, string email)
        {
            this.name = name;
            this.surname = surname;
            this.username = username;
            this.password = password;
            this.dob = dob;
            this.email = email;

        }

        // IFormatProvider.object u = benb;
        //bool true/false = u.adduser(name) 


        //public static void updateUser(User user)
        //{
        //    SqlConnection connection = new SqlConnection("");


        //    string strCmd = "UPDATE [End_User] Set First_name=@First_name, Last_name=@Last_name, username=@username, DOB=@DOB, Email=@Email, password=@password, dob=@dob, password=@password";
        //    SqlCommand cmd = new SqlCommand(strCmd, connection);
        //    cmd.Connection.Open();

        //    cmd.Parameters.AddWithValue("@First_name", user.Name);
        //    cmd.Parameters.AddWithValue("Last_name", user.Surname);
        //    cmd.Parameters.AddWithValue("@username", user.Username);
        //    cmd.Parameters.AddWithValue("@DOB", user.DOB);
        //    cmd.Parameters.AddWithValue("@Email", user.Email);
        //    cmd.Parameters.AddWithValue("@Password", user.Password);


        //    cmd.ExecuteNonQuery();
        //    cmd.Connection.Close();

        //}

        //public static List<User> getAllUsers()
        //{
        //    List<User> users = new List<User>();
        //    SqlConnection connect = new SqlConnection("");
        //    connect.Open();

        //    String cmdString = "SELECT * FROM End_User";
        //    SqlCommand cmd = new SqlCommand(cmdString, connect);

        //    SqlDataReader reader = cmd.ExecuteReader();

        //    while (reader.Read())
        //    {
        //        if (reader.HasRows)
        //        {
        //            users.Add(new User()
        //            {
        //                Name = reader.GetString(0),
        //                Surname = reader.GetString(1),
        //                Username = reader.GetString(2),
        //                Password = reader.GetString(3),
        //                DOB = reader.GetDateTime(4),
        //                Email = reader.GetString(5)

        //            });
        //        }
        //    }

        //    connect.Close();
        //    return users;

        //}

        //public static bool AddUser(User userInfo)
        //{
        //    bool canAddNewUser = true;

        //    List<User> users = getAllUsers();

        //    foreach (User u in users)
        //    {    // check if user exist
        //        if (u.Username.ToLower().Equals(userInfo.Username.ToLower()))
        //        {
        //            canAddNewUser = false;
        //            break;
        //        }
        //    }

        //    if (canAddNewUser)
        //    {

        //        SqlConnection connect = new SqlConnection("Data Source=hp-pc\\sqlexpress;Initial Catalog=FinancialManagementSystemDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
        //        string commandString = "INSERT INTO End_User(name, surname, Username, DOB, Email, Password, password) values (@username, @name, @surname, @title, @gender, @cellnumber, @dob, @password, @race, @address, 1, 0, 0)";
        //        SqlCommand cmd = new SqlCommand(commandString, connect);
        //        cmd.Connection.Open();

        //        cmd.Parameters.AddWithValue("@name", userInfo.Name);
        //        cmd.Parameters.AddWithValue("@surname", userInfo.Surname);
        //        cmd.Parameters.AddWithValue("@username", userInfo.Username);
        //        cmd.Parameters.AddWithValue("@DOB", userInfo.DOB);
        //        cmd.Parameters.AddWithValue("@email", userInfo.Email);
        //        cmd.Parameters.AddWithValue("@password", userInfo.Password);


        //        cmd.ExecuteNonQuery();
        //        cmd.Connection.Close();
        //    }

        //    return canAddNewUser;
        //}
    }
}