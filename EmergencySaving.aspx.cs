using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PersonalFinanceManagement;

namespace PersonalFinanceManagement.WebPages
{
    public partial class EmergencySaving : System.Web.UI.Page
    {

        ReadFinancialApplicationService checkUser = new ReadFinancialApplicationService();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void createEmergencySaving()
        {
            string emergencyName = txtEmergencyName.Value.ToString();
            double  emergencyTarget = Convert .ToDouble  ( txtEmergencyTarget.Value.ToString());
            int emergencyPriority = Convert .ToInt32 ( dropEmergencyPriority.Value.ToString());
            string emergencyContribution = emergencyRadio.ToString();

            Emergency emergency = new Emergency();

            CreateEmergency createEmergency_ = new CreateEmergency();

            emergency.setEmergencyDetails(emergencyName, emergencyTarget, emergencyPriority, emergencyContribution);
            createEmergency_.createEmergency(emergency);

            Response.Redirect("Home.aspx");
        }

        public void createCustomGoal()
        {
            string customName = txtCustomName.Value.ToString();
            double  customTarget = Convert.ToDouble(txtCustomTarget.Value.ToString());
            int customPriority = Convert .ToInt32( dropCustomPriority.Value.ToString());
            DateTime customDue =  DateTime.Today;
            string customContribution = customRadio.ToString();

            CustomGoal customGoal = new CustomGoal();

            CreateCustomGoal createCustomGoal_ = new CreateCustomGoal();

            customGoal.setCustmGoalDetails(customName, customTarget, customPriority, customContribution,customDue );
            createCustomGoal_.createCustomGoal(customGoal);

            Response.Redirect("Budget.aspx");


        }

        public void createEducationSaving()
        {
            string educationInstitution = txtEducationInstitutionName.Value.ToString();
            string educationCourse = txtEducationCourseName.Value.ToString();
            DateTime educationStartStudy = DateTime.Today;
            DateTime educationEndStudy = DateTime.Today;
            int educationPriority = Convert .ToInt32 ( dropEducationPriority.Value.ToString());
            double  educationCost = Convert .ToDouble ( txtEducationCost.Value.ToString());
            string educationContribution = educationRadio.ToString();
            DateTime educationStartSave = DateTime.Today;
            DateTime educationEndSave = DateTime.Today;

            Education education = new Education();

            CreateEducation createEducation_ = new CreateEducation();

            education.setEducationDetails(educationInstitution, educationCourse, educationStartStudy, educationEndStudy, educationPriority, educationCost, educationContribution, educationStartSave, educationEndSave);
            createEducation_.createEducation(education);

            Response.Redirect("Debt.aspx");

        }

        public void createTravelSaving()
        {

            string travelDestination = txtTravelDestination.Value.ToString();
            string travelType = dropTravelType.Value.ToString();
            int travelDuration = Convert .ToInt32 ( txtTravelDuration.Value.ToString());
            int travelPriority = Convert .ToInt32 ( dropTravelPriority.Value.ToString());
            int travelNumberOfTraveler = Convert .ToInt32( txtTravelTravelers.Value.ToString());
            string travelContribution = travelRadio.ToString();
            DateTime travelStartSave = DateTime.Today;
            DateTime travelEndSave = DateTime.Today;
            double travelTarget = Convert.ToDouble(txtTravelSavingDue.Value.ToString());

            Travel travel = new Travel();

            CreateTravel createTravel_ = new CreateTravel();

            travel.setTravelDetails(travelDestination, travelType, travelDuration, travelPriority, travelNumberOfTraveler, travelStartSave, travelEndSave, travelContribution, travelTarget);
            createTravel_.createTravel(travel);

            Response.Redirect("Notification.aspx");

        }

        protected void BtnCreatesaving_Click(object sender, EventArgs e)
        {

        }

       
        protected void SubmitEmergency_Click(object sender, EventArgs e)
        {
            createEmergencySaving();
        }

        protected void SubmitCustomGoal_Click(object sender, EventArgs e)
        {
            createCustomGoal();
        }

        protected void SubmitEducation_Click(object sender, EventArgs e)
        {
            createEducationSaving();
        }

        protected void SubmitTravel_Click(object sender, EventArgs e)
        {
            createTravelSaving();
        }
    }
}