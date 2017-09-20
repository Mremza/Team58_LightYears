using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class CustomGoal
    {
        private string customGoalName;
        private double customGoalTarget;
        private int customGoalPriority;
        private string customGoalContributionType;
        private DateTime customGoalDueDate;

        public  string getCustomGoalName()
        {
            return customGoalName;
        }

        public double getCustomGoalTarget()
        {
            return customGoalTarget;
        }


        public int getCustomGoalPriority()
        {
            return customGoalPriority;
        }

        public string getCustomGoalContributionType()
        {
            return customGoalContributionType;
        }

        public DateTime getCustomGoalDueDate()
        {
            return customGoalDueDate;
        }


        public void setCustmGoalDetails(string goalName, double goalTarget, int goalPriority, string goalContributionType, DateTime goalDueDate)
        {
            this.customGoalName = goalName;
            this.customGoalTarget = goalTarget;
            this.customGoalPriority = goalPriority;
            this.customGoalContributionType = goalContributionType;
            this.customGoalDueDate = goalDueDate;
        }

    }
}