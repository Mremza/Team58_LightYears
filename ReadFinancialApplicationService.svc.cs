using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PersonalFinanceManagement
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ReadFinacialApplicationService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ReadFinacialApplicationService.svc or ReadFinacialApplicationService.svc.cs at the Solution Explorer and start debugging.
    public class ReadFinancialApplicationService : IReadFinancialApplicationService
    {
        public void DoWork()
        {
        }

        public bool checkEmailExistence(string email)
        {

            return false;
        }



        public bool checkUsernameExistence(string username)
        {
            using (ConnectorDataContext verify = new ConnectorDataContext())
            {
                End_User end_user = verify.End_Users.SingleOrDefault(x => x.User_name == username);

                if (end_user != null)
                {
                    if (end_user.User_name != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                    
                }
                return false;
            }
        }

        //This is for checking if the emergency saving for the user is existing
        public bool checkUserEmergencyExistence(string userEmergency)
        {
            using (ConnectorDataContext verifyUserEmergency = new ConnectorDataContext())
            {
                EmergencySaving emerSaving = verifyUserEmergency.EmergencySavings.SingleOrDefault(x => x.Emergency_Save_Name == userEmergency);

                if(emerSaving != null)
                {
                    if(emerSaving.Emergency_Save_Name != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
                return false;
        }

        //This is for checking for the existence of the custom goal of the user
        public bool checkUserCustomGoalExistence(string userCustomGoal)
        {
            using (ConnectorDataContext verifyUserCustomGoal = new ConnectorDataContext())
            {
                CustomGoalSaving custSaving = verifyUserCustomGoal.CustomGoalSavings.SingleOrDefault(x => x.Custom_Goal_Name == userCustomGoal);
                if(custSaving != null)
                {
                    if(custSaving .Custom_Goal_Name != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }

                return false;
        }


        //This is for checking for the existence of the EDUCATION of the user
        public bool checkUserEducationExistence(string userEducation)
        {
            using (ConnectorDataContext verifyUserEducation = new ConnectorDataContext())
            {
                EducationSaving eduSaving = verifyUserEducation.EducationSavings.SingleOrDefault(x => x.Education_Institution == userEducation);
                if(eduSaving != null)
                {
                    if(eduSaving .Education_Institution != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
                return false;
        }


        //This is for checking for the existence of the TRAVEL of the user
        public bool checkUserTravelExistence(string userTravel)
        {
            using (ConnectorDataContext verifyUserTravel = new ConnectorDataContext())
            {
                TravelSaving travelSaving = verifyUserTravel.TravelSavings.SingleOrDefault(x => x.Travel_Destination == userTravel);
                if (travelSaving != null)
                {
                    if (travelSaving.Travel_Destination  != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            return false;
        }

        public bool checkPasswordStrength(string password)
        {
            return true;
        }

        public End_User getEndUserInfo(String username)
        {
            using (ConnectorDataContext check_username = new ConnectorDataContext())
            {
                End_User end_user = check_username.End_Users.SingleOrDefault(x => x.User_name == username);

                return end_user;
            }
        }

        //This is for checking if  the name of the emeregency Saving does exists in the database
        public EmergencySaving getUserEmergencyInfo(string emergencySavingName)
        {
            using (ConnectorDataContext checkEmergencySavingName = new ConnectorDataContext())
            {
                EmergencySaving emergency_Name = checkEmergencySavingName.EmergencySavings.SingleOrDefault(x => x.Emergency_Save_Name == emergencySavingName);

                return emergency_Name;
            }
        }

        //Checking for the name of the custom goal saving if it does exists in the database
        public CustomGoalSaving getCustomGoalInfo(string customGoalSavingName)
        {
            using (ConnectorDataContext checkCustomGoalName = new ConnectorDataContext())
            {
                CustomGoalSaving customGoal_Name = checkCustomGoalName.CustomGoalSavings.SingleOrDefault(x => x.Custom_Goal_Name == customGoalSavingName);

                return customGoal_Name;
            }
        }

        //Checking for the name of the EDUCATION saving if it does exists in the database
        public EducationSaving getEducationInfo(string educationInstitution)
        {
            using (ConnectorDataContext checkEducationInstitution = new ConnectorDataContext())
            {
                EducationSaving education_Institution = checkEducationInstitution.EducationSavings.SingleOrDefault(x => x.Education_Institution == educationInstitution);

                return education_Institution;
            }
            
        }

        //Checking for the name of the TRAVEL saving if it does exists in the database
        public TravelSaving getTravelInfo(string travelDestination)
        {
            using (ConnectorDataContext checkTravelDestination = new ConnectorDataContext())
            {
                TravelSaving travel_Destination = checkTravelDestination.TravelSavings.SingleOrDefault(x => x.Travel_Destination == travelDestination );

                return travel_Destination;
            }
        }

        //this is the function to be used to create the energency savings successfully
        //
        //
        //I must use the User ID as well to 
        public bool createEmergencySuccessfully(String Emergency_Name , int emergencyID)
        {
            EmergencySaving emergency_name = this.getUserEmergencyInfo(Emergency_Name);
            if(emergency_name != null)
            {
                if(emergency_name .Emergency_Save_Name == Emergency_Name && emergency_name .User_ID == emergencyID )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }

        public bool createCustomGoalSuccessfully(String CustomGoal_Name, int customID)
        {
            CustomGoalSaving customGoal_name = this.getCustomGoalInfo(CustomGoal_Name);
            if(customGoal_name != null)
            {
                if(customGoal_name .Custom_Goal_Name == CustomGoal_Name && customGoal_name .User_ID == customID )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            
            return false;
        }

        public bool createEducationSuccessfully(String _Education_Instiution, int educationID)
        {
            EducationSaving education_name = this.getEducationInfo(_Education_Instiution );
            if(education_name != null)
            {
                if(education_name .Education_Institution == _Education_Instiution && education_name .User_ID ==educationID  )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;

        }


        public bool createTravelSuccessfully( String _Travel_Destination, int travelID)
        {
            TravelSaving travel_name = this.getTravelInfo(_Travel_Destination);
            if(travel_name != null)
            {
                if(travel_name .Travel_Destination == _Travel_Destination && travel_name .User_ID == travelID  )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            return false;
        }

        //public EmergencySaving getUserEmergencyInfo(string emergencySavingName)
        //{
        //    using (ConnectorDataContext checkEmergencySavingName = new ConnectorDataContext())
        //    {
        //        EmergencySaving emergency_Name = checkEmergencySavingName.EmergencySavings.SingleOrDefault(x => x.Emergency_Save_Name == emergencySavingName);

        //        return emergency_Name;
        //    }
        //}

        public bool login(String username, String password)
        {
            End_User end_user = this.getEndUserInfo(username);

            if (end_user != null)
            {
                if (end_user.User_name == username && end_user.Password == password)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }


            return false;
        }

        public string getEndUserEmail(string username)
        {
            using (ConnectorDataContext getemail = new ConnectorDataContext())
            {
                End_User end_user = getemail.End_Users.SingleOrDefault(x => x.User_name == username);

                if (end_user != null)
                {
                    var _username = end_user.User_name;
                    return _username;
                }
                else
                {
                    return "email not found";
                }
            }

        }











    }
}
