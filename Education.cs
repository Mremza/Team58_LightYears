using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class Education
    {
        private string institutionName;
        private string courseName;
        private DateTime startStudyingDate;
        private DateTime endStudyingDate;
        private int educationPriority;
        private double educationTarget;
        private DateTime educationDueSaving;
        private DateTime educationStartSaving;
        private string educationContributionType;

        public string getInstitutionName()
        {
            return institutionName;
        }

        public string getCourseName()
        {
            return courseName;
        }

        public DateTime getStartStudyingDate()
        {
            return startStudyingDate;
        }

        public DateTime getEndStudyingDate()
        {
            return endStudyingDate;
        }

        public int getEducationPrioriry()
        {
            return educationPriority;
        }

        public double getEducationTarget()
        {
            return educationTarget;
        }

        public DateTime getEducationStartSaving()
        {
            return educationStartSaving;
        }

        public DateTime getEducationEndSaving()
        {
            return educationDueSaving;
        }

        public string getEducationContributionType()
        {
            return educationContributionType;
        }


        public void setEducationDetails(string instName, string courName, DateTime startStudy, DateTime endStudy, int eduPriority, double eduTarget,  string eduContribution, DateTime startSave, DateTime endSave)
        {
            this.institutionName = instName;
            this.courseName = courName;
            this.startStudyingDate = startStudy;
            this.endStudyingDate = endStudy;
            this.educationPriority = eduPriority;
            this.educationTarget = eduTarget;
            this.educationStartSaving = startSave;
            this.educationDueSaving = endSave;
            this.educationContributionType = eduContribution;
        }

    }
}