public class DeactiveAccountsController {
	public static void DeactiveAccounts() {
  		// Get list of account that have NumberOfEmployees > 10000
  		Account[] AccountsList = [SELECT Id, Name,Active__c,NumberOfEmployees  FROM Account where NumberOfEmployees > 10000];
  		// loop through them and update the Active__c field
  		for (Account acct : AccountsList) {
      		acct.Active__c = 'No';
  		}
  		// save the change you made
  		update AccountsList;
	}
}