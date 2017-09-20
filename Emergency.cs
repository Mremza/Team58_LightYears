using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class Emergency
    {
        private string emergencyName;
        private double  emergencyTarget;
        private int emergencyPriority;
        private string emergencySaveOption;

        public string getEmergencyName()
        {
            return emergencyName;
        }

        public double  getEmergencyTarget()
        {
            return emergencyTarget;
        }

        public int getEmergencyPriority()
        {
            return emergencyPriority;
        }

        public string getEmergencySaveOption()
        {
            return emergencySaveOption;
        }


        public void setEmergencyDetails(string emerName, double  emerTarget, int emerPriority, string emerSaveOpt)
        {
            this.emergencyName = emerName;
            this.emergencyTarget = emerTarget;
            this.emergencyPriority = emerPriority;
            this.emergencySaveOption = emerSaveOpt;
        }
    }
}