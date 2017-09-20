using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PersonalFinanceManagement
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FinancialManagementService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select FinancialManagementService.svc or FinancialManagementService.svc.cs at the Solution Explorer and start debugging.
    public class FinancialManagementService : IFinancialManagementService
    {
        public void DoWork()
        {
        }

        public bool AddUser(String name, String surname, String username, String password, DateTime DOB, String email)
        {
            // bool canAddNewUser = true;

            using (ConnectorDataContext connectUser = new ConnectorDataContext())
            {
                End_User end_user = connectUser.End_Users.SingleOrDefault(x => x.User_name == username);
                // String thaban = end_user.Email;

                if (end_user != null)
                {
                    end_user.First_name = name;
                    end_user.Last_name = surname;
                    end_user.User_name = username;
                    end_user.DOB = DOB;
                    end_user.Email = email;
                    end_user.Password = password;

                    connectUser.SubmitChanges();
                    return false;
                }
                else
                {
                    End_User user = new End_User
                    {
                        First_name = name,
                        Last_name = surname,
                        User_name = username,
                        DOB = DOB,
                        Email = email,
                        Password = password
                    };

                    connectUser.End_Users.InsertOnSubmit(user);
                    connectUser.SubmitChanges();
                }
            }
                
            return true;
            //WebApplication1.User user = new WebApplication1.User();

            //List<WebApplication1.User> users = getAllUsers();

            //foreach (WebApplication1.User u in users)
            //{    // check if user exist
            //    if (u.Username.ToLower().Equals(username.ToLower()))
            //    {
            //        canAddNewUser = false;
            //        break;
            //    }
            //}

            //if (canAddNewUser)
            //{

            //    SqlConnection connect = new SqlConnection("Data Source=hp-pc\\sqlexpress;Initial Catalog=FinancialManagementSystemDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
            //    string commandString = "INSERT INTO End_User(name, surname, Username, DOB, Email, Password, password) values (@username, @name, @surname, @title, @gender, @cellnumber, @dob, @password, @race, @address, 1, 0, 0)";
            //    SqlCommand cmd = new SqlCommand(commandString, connect);
            //    cmd.Connection.Open();

            //    cmd.Parameters.AddWithValue("@name", userInfo.Name);
            //    cmd.Parameters.AddWithValue("@surname", userInfo.Surname);
            //    cmd.Parameters.AddWithValue("@username", userInfo.Username);
            //    cmd.Parameters.AddWithValue("@DOB", userInfo.DOB);
            //    cmd.Parameters.AddWithValue("@email", userInfo.Email);
            //    cmd.Parameters.AddWithValue("@password", userInfo.Password);


            //    cmd.ExecuteNonQuery();
            //    cmd.Connection.Close();
            //}

            // return canAddNewUser;
        }

        public bool creatBudget(string budgetName, double amount_to_spend, DateTime budgetStart, DateTime budgetEnd, double assign_amount)
        {
            using (ConnectorDataContext connect = new ConnectorDataContext())
            {
                Budget budget = connect.Budgets.SingleOrDefault(x => x.Budget_Name == budgetName);

                if (budget != null)
                {
                    budget.Budget_Name = budgetName;
                    budget.Budget_amount = Convert.ToDecimal(amount_to_spend);
                    budget.Budget_startdate = budgetStart;
                    budget.Budget_enddate = budgetEnd;
                    budget.Total_income = Convert.ToDecimal(assign_amount);
                    connect.SubmitChanges();
                    return false;
                }
                else
                {

                    Budget b = new Budget
                    {
                        Budget_Name = budgetName,
                        Budget_amount = Convert.ToDecimal(amount_to_spend),
                        Budget_startdate = budgetStart,
                        Budget_enddate = budgetEnd,
                        Total_income = Convert.ToDecimal(assign_amount)
                    };

                    connect.Budgets.InsertOnSubmit(b);
                    connect.SubmitChanges();

                }

            }
            return true;
        }

        public bool createExpense(string expenseName, DateTime expensePur_date, double expense_price, int priority)
        {
            using (ConnectorDataContext connect = new ConnectorDataContext())
            {
                Expense expense = connect.Expenses.SingleOrDefault(x => x.Expense_name == expenseName);

                if (expense != null)
                {
                    expense.Expense_name = expenseName;
                    expense.Expensepur_date = expensePur_date;
                    expense.Expense_price = Convert.ToDecimal(expense_price);
                    expense.Expense_priority = Convert.ToString(priority);
                    connect.SubmitChanges();
                    return false;
                }
                else
                {
                    Expense exp = new Expense
                    {
                        Expense_name = expenseName,
                        Expensepur_date = expensePur_date,
                        Expense_price = Convert.ToDecimal(expense_price),
                        Expense_priority = Convert.ToString(priority)
                    };

                    connect.Expenses.InsertOnSubmit(exp);
                    connect.SubmitChanges();
                }
            }
            return true;
        }


        public bool createEmergencySaving(string emergencyName, double targetAmount, int priority, string contributionType)
        {
            using (ConnectorDataContext connectEmergency = new ConnectorDataContext())
            {
                EmergencySaving emergencySaving = connectEmergency.EmergencySavings.SingleOrDefault(x => x.Emergency_Save_Name == emergencyName);

                if( emergencySaving != null)
                {
                    emergencySaving.Emergency_Save_Name = emergencyName;
                    emergencySaving.Emergency_Save_Target_Amount = Convert.ToDecimal(targetAmount);
                    emergencySaving.Emergency_Save_Priority = priority;
                    emergencySaving.Emergency_Save_Contribution_Type = contributionType;

                    connectEmergency.SubmitChanges();
                    return false;  
                }
                else
                {
                    EmergencySaving newEmergency = new PersonalFinanceManagement.EmergencySaving
                    {
                        Emergency_Save_Name = emergencyName,
                        Emergency_Save_Target_Amount = Convert.ToDecimal(targetAmount),
                        Emergency_Save_Priority =  priority,
                        Emergency_Save_Contribution_Type = contributionType
                    };
                    connectEmergency.EmergencySavings.InsertOnSubmit(newEmergency);
                    connectEmergency.SubmitChanges();  
                }
            }
            return true;
        }



        public bool createCustomGoalSaving(string customGoalName, double customGoalTargetAmount, int customGoalPriority, string customGoalContributionType, DateTime customGoalDueDate)
        {
            using (ConnectorDataContext connectCustom = new ConnectorDataContext())
            {
                CustomGoalSaving customGoal = connectCustom.CustomGoalSavings.SingleOrDefault(x => x.Custom_Goal_Name == customGoalName);   

                if(customGoal  != null)
                {
                    customGoal.Custom_Goal_Name = customGoalName;
                    customGoal.Custom_Goal_Target_Amount = Convert.ToDecimal(customGoalTargetAmount);
                    customGoal.Custom_Goal_Priority =  customGoalPriority;
                    customGoal.Custom_Goal_Contribution_Type = customGoalContributionType;
                    customGoal.Custom_Goal_Due_Date = customGoalDueDate;

                    connectCustom.SubmitChanges();
                    return false; 
                }
                else
                {
                    CustomGoalSaving newCustomGoal = new CustomGoalSaving
                    {
                        Custom_Goal_Name = customGoalName,
                        Custom_Goal_Target_Amount = Convert.ToDecimal(customGoalTargetAmount),
                        Custom_Goal_Priority = customGoalPriority,
                        Custom_Goal_Contribution_Type = customGoalContributionType,
                        Custom_Goal_Due_Date = customGoalDueDate
                    };
                    connectCustom.CustomGoalSavings.InsertOnSubmit(newCustomGoal);
                    connectCustom.SubmitChanges();
                }
            }
                return true;
        }


        public bool createEducationSaving(string educationInstitution, string educationCourse, DateTime educationStart, DateTime educationEnd, int educationPriority, double educationCost, string educationContributionType, DateTime educationStartSaving, DateTime educationEndSaving)
        {
            using (ConnectorDataContext connectEducation = new PersonalFinanceManagement.ConnectorDataContext())
            {
                EducationSaving education = connectEducation.EducationSavings.SingleOrDefault(x => x.Education_Institution == educationInstitution);

                if( education != null)
                {
                    education.Education_Institution = educationInstitution;
                    education.Education_Course = educationCourse;
                    education.Education_Start_Date = educationStart;
                    education.Education_End_Date = educationEnd;
                    education.Education_Priority = educationPriority;
                    education.Education_Cost = Convert.ToDecimal(educationCost);
                    education.Education_Contribution_Type = educationContributionType;
                    education.Education_Start_Save_Date = educationStartSaving;
                    education.Education_End_Save_Date = educationEndSaving;

                    connectEducation.SubmitChanges();
                    return false;
                }
                else
                {
                    EducationSaving newEducation = new EducationSaving
                    {
                    Education_Institution = educationInstitution,
                    Education_Course = educationCourse,
                    Education_Start_Date = educationStart,
                    Education_End_Date = educationEnd,
                    Education_Priority = educationPriority,
                    Education_Cost = Convert.ToDecimal(educationCost),
                    Education_Contribution_Type = educationContributionType,
                    Education_Start_Save_Date = educationStartSaving,
                    Education_End_Save_Date = educationEndSaving
                };
                    connectEducation.EducationSavings.InsertOnSubmit(newEducation );
                    connectEducation.SubmitChanges();
                }
            }
                return true;
        }


        public bool createTravelSaving(string travelDestination, string travelType, int travelDuration, int travelPriority, int travelTravelers, DateTime travelStartSaving, DateTime travelEndSaving, string travelContributionType, double travelTargetAmount)
        {
            using (ConnectorDataContext connectTravel = new ConnectorDataContext())
            {
                TravelSaving travel = connectTravel.TravelSavings.SingleOrDefault(x => x.Travel_Destination == travelDestination);

                if(travel != null)
                {
                    travel.Travel_Destination = travelDestination;
                    travel.Travel_Type = travelType;
                    travel.Travel_Duration = travelDuration;
                    travel.Travel_Priority = travelPriority;
                    travel.Travel_Number_of_Travelers = travelTravelers;
                    travel.Travel_Target_Amount = Convert.ToDecimal(travelTargetAmount);
                    travel.Travel_Start_Save_Date = travelStartSaving;
                    travel.Travel_End_Save_Date = travelEndSaving;
                    travel.Travel_Contribution_Type = travelContributionType;

                    connectTravel.SubmitChanges();
                    return false;
                }
                else
                {
                    TravelSaving newTravel = new TravelSaving
                    {
                    Travel_Destination = travelDestination,
                    Travel_Type = travelType,
                    Travel_Duration = travelDuration,
                    Travel_Priority = travelPriority,
                    Travel_Number_of_Travelers = travelTravelers,
                    Travel_Target_Amount = Convert.ToDecimal(travelTargetAmount),
                    Travel_Start_Save_Date = travelStartSaving,
                    Travel_End_Save_Date = travelEndSaving,
                    Travel_Contribution_Type = travelContributionType

                };
                    connectTravel.TravelSavings.InsertOnSubmit(newTravel);
                    connectTravel.SubmitChanges();
                }
            }
                return true;
        }
    }
}
