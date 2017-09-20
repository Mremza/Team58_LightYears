using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalFinanceManagement
{
    public class CreateEducation
    {
        ReadFinancialApplicationService readEducationService = new ReadFinancialApplicationService();
        FinancialManagementService educationService = new FinancialManagementService();

        public string createEducation(Education saveEducation)
        {
            bool checkEducationInstitution = readEducationService.checkEmailExistence(saveEducation.getInstitutionName());

            if(checkEducationInstitution != true)
            {
                if (educationService.createEducationSaving(saveEducation.getInstitutionName(), saveEducation.getCourseName(), saveEducation.getStartStudyingDate(), saveEducation.getEndStudyingDate(), saveEducation.getEducationPrioriry(), saveEducation.getEducationTarget(), saveEducation.getEducationContributionType(), saveEducation.getEducationStartSaving(), saveEducation.getEducationEndSaving()) != false) 
                {
                    return alertMessage("Education Saving is created successfully");
                }
                else 
                {
                    return alertMessage("Education Saving is NOT created successfully");
                }
            }
            else if(checkEducationInstitution != false)
            {
                return alertMessage("Education Institution alredy exists.......");
            }

            return "";
        }

        public string alertMessage(string education_message)
        {
            return education_message;
        }

        public bool createEducationSuccessfully(string successEducation, int eduID)
        {
            return readEducationService.createEducationSuccessfully(successEducation, eduID);
        }
    }
}