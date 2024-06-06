var baseUrl = "https://apptest.dokandemo.com";

var logInUrl = "$baseUrl/wp-json/jwt-auth/v1/token";
var signupUrl = "$baseUrl/api/get-plot-details.php";

bool isSignedin = false;
String savedUserId = "",
    savedUserToken = "",
    savedUserEmail = "",
    savedUserNicename = "",
    savedUserDispayName = "";
