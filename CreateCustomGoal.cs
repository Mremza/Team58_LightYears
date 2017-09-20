using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class CreateCustomGoal
    {
        ReadFinancialApplicationService readCustomGoalService = new ReadFinancialApplicationService();
        FinancialManagementService customGoalService = new FinancialManagementService();

        public string createCustomGoal(CustomGoal saveCustomGoal)
        {
            bool checkCustomGoalSavingName = readCustomGoalService.checkUserCustomGoalExistence(saveCustomGoal.getCustomGoalName());

            if(checkCustomGoalSavingName != true)
            {
                if(customGoalService .createCustomGoalSaving (saveCustomGoal.getCustomGoalName(), saveCustomGoal.getCustomGoalTarget (), saveCustomGoal.getCustomGoalPriority (), saveCustomGoal.getCustomGoalContributionType (), saveCustomGoal.getCustomGoalDueDate ()) != false )
                {
                    return alertMessage("Custom Goal Saving was successfully created");
                }
                else
                {
                    return alertMessage("Custom Goal Saving was NOT successfully created");
                }
            }
            else if(checkCustomGoalSavingName != false)
            {
                return alertMessage("Custom Goal name already exists.......");
            }

            return "";
        }

        public string alertMessage(string custom_message)
        {
            return custom_message;
        }

        public bool createCustomGoalSuccessfully(string successCustomGoal, int custID)
        {
            return readCustomGoalService.createCustomGoalSuccessfully(successCustomGoal, custID);
        }

    }
}