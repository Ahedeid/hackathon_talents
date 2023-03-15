class EndPoints {
  static const String baseUrl = "https://talents-valley-backend.herokuapp.com/api";


  static const int receiveTimeout = 35000;
  static const int connectTimeout = 35000;

  // login && signUp
  static const String loginEndPoint = '/user/login';
  static const String signUpEndPoint = '/user/signup';


  // Bank Account/Payout Methods
  static const String sendCodeVerification = '/bank/send-code';
  static const String addBankAccount = '/bank/add';
  static const String editBankAccount = '/bank/edit/';
  static const String getBankAccountDetails = '/bank/details/';
  static const String getBankAccountsList = '/bank/listing';
  static const String deleteBankAccount = '/bank/delete/';

  // Recipient
  static const String sendCodeToAddEditRecipient = '/recipient/send-code';
  static const String addRecipient = '/recipient/create';
  static const String updateRecipient = '/recipient/edit/';
  static const String getRecipientList = '/recipient/list';
  static const String getRecipientDetails = '/recipient/details/';
  static const String deleteRecipient = '/recipient/delete/';

  //Withdraw
  static const String requestCashWithdrawal = '/withdraw/request-cash';
  static const String requestBankWithdrawal = '/withdraw/request-bank';
  static const String confirmRecievePayout = '/withdraw/confirm-payout/';
  static const String getWithdrawalRequestDetails = '/withdraw/details/';
  static const String getWithdrawalRequestList = '/withdraw/list';
  static const String cancelWithdrawRequest = '/withdraw/cancel/';
  static const String getLastWithdrawalRequest = '/withdraw/last-request';
  static const String getOfficeList = '/withdraw/office-list';


}
