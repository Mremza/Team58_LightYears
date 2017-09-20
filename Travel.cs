using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class Travel
    {

        private string travelDestination;
        private string travelType;
        private int travelDuration;
        private int travelPriority;
        private int travelTravelers;
        private DateTime travelStartSaving;
        private DateTime travelEndSaving;
        private string travelContributionType;
        private double travelTargetAmount;

        public string getTravelDestination()
        {
            return travelDestination;
        }

        public string getTravelType()
        {
            return travelType;
        }

        public int getTravelDuration()
        {
            return travelDuration;
        }

        public int getTravelPriority()
        {
            return travelPriority;
        }

        public int getTravelTravelers()
        {
            return travelTravelers;
        }

        public DateTime getTravelStartSaving()
        {
            return travelStartSaving;
        }

        public DateTime getTravelEndSaving()
        {
            return travelEndSaving;
        }

        public string getTravelContributionType()
        {
            return travelContributionType;
        }

        public double getTravelTargetAmount()
        {
            return travelTargetAmount;
        }



        public void setTravelDetails(string travDestination, string travType, int travDuration, int travPriority, int travTravelers, DateTime travStartSave, DateTime travEndSave, string travContributionType, double travTargetAmount)
        {
            this.travelDestination = travDestination;
            this.travelType = travType;
            this.travelDuration = travDuration;
            this.travelPriority = travPriority;
            this.travelTravelers = travTravelers;
            this.travelStartSaving = travStartSave;
            this.travelEndSaving = travEndSave;
            this.travelContributionType = travContributionType;
            this.travelTargetAmount = travTargetAmount;
        }
    }
}