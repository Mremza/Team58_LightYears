using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonalFinanceManagement;

namespace PersonalFinanceManagement
{
    public class CreateEmergency
    {

        ReadFinancialApplicationService readEmergencyService = new ReadFinancialApplicationService();
        FinancialManagementService emergencyService = new FinancialManagementService();

        public string createEmergency(Emergency saveEmergency)
        {
            //We use the name to Identify the specific type of savings created by the user
            bool checkEmergencySavingName = readEmergencyService.checkUserEmergencyExistence(saveEmergency.getEmergencyName());
           

            if(checkEmergencySavingName != true)
            {
                if(emergencyService .createEmergencySaving (saveEmergency.getEmergencyName() , saveEmergency.getEmergencyTarget(), saveEmergency.getEmergencyPriority(), saveEmergency.getEmergencySaveOption()) != false )
                {
                    return alertMessage("Emergency Savings was successfully created");
                }
                else
                {
                    return alertMessage("Emergency Saving was NOT created successfully");
                }
            }
            else if(checkEmergencySavingName != false )
            {
                return alertMessage("Emergency name already exists...");
            }


            return "";
        }


        public string alertMessage(string emer_message)
        {
            return emer_message;
        }

        //This is to assure that the emergency saving is created succeessfully
        public bool createEmergencySuccessfully(string successEmergencyName, int emergID)
        {
            return readEmergencyService.createEmergencySuccessfully(successEmergencyName,emergID );
        }

       
    }
}