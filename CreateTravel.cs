using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class CreateTravel
    {
        ReadFinancialApplicationService readTraveService = new ReadFinancialApplicationService();
        FinancialManagementService travelService = new FinancialManagementService();

        public string createTravel(Travel saveTravel)
        {
            bool checkTravelDestination = readTraveService.checkUserTravelExistence(saveTravel.getTravelDestination());
            if(checkTravelDestination != true)
            {
                if(travelService .createTravelSaving (saveTravel .getTravelDestination (), saveTravel.getTravelType(), saveTravel.getTravelDuration (), saveTravel.getTravelPriority (), saveTravel.getTravelTravelers (), saveTravel.getTravelStartSaving (), saveTravel.getTravelEndSaving (), saveTravel.getTravelContributionType (), saveTravel.getTravelTargetAmount()) != false )
                {
                    return alertMessage("Travel Saving is successfully created");
                }
                else
                {
                    return alertMessage("Travel Saving is NOT successfully created");
                }
            }
            else if(checkTravelDestination != false )
            {
                return alertMessage("Travel Destination name already exists.......");
            }

            return "";
        }

        public string alertMessage(string travel_message)
        {
            return travel_message;
        }

        public bool createTravelSuccessfully(string successTravel, int travID)
        {
            return readTraveService.createTravelSuccessfully(successTravel , travID );
        }
    }
}