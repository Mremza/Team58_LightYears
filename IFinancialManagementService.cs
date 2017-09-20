using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PersonalFinanceManagement
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IFinancialManagementService" in both code and config file together.
    [ServiceContract]
    public interface IFinancialManagementService
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        bool creatBudget(string budgetName, double amount_to_spend, DateTime budgetStart, DateTime budgetEnd, double assign_amount);

        [OperationContract]
        bool createExpense(string expenseName, DateTime expensePur_date, double expense_price, int priority);

        [OperationContract]
        bool AddUser(String name, String surname, String username, String password, DateTime DOB, String email);
    }


}
