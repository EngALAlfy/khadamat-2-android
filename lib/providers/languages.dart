import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../helpers/current_user.dart';

class Languages with ChangeNotifier {
  Map<String, String> get selected {
    switch (CurrentUser.language) {
      case 'English':
        CurrentUser.textDirection = TextDirection.ltr;
        return _english;
        break;
      case 'French':
        CurrentUser.textDirection = TextDirection.ltr;
        return _french;
        break;
      case 'Arabic':
        CurrentUser.textDirection = TextDirection.rtl;
        return _arabic;
        break;
      default:
        CurrentUser.textDirection = TextDirection.ltr;
        return _english;
    }
  }

  Map<String, String> _english = {
    'HOME':"HOME",
    'ACCOUNT':"ACCOUNT",
    'NEW':"NEW",
    'MY ADS':"MY ADS",
    'NOTIFI':"NOTIFI",
    'Welcome': 'Welcome',
    'Welcome log title':'Log in yourself to proceed',
    'By signing up you agree to our Terms & Conditions and Privacy Policy':
        "By signing up you agree to our Terms & Conditions and Privacy Policy",
    'Something went wrong, we are working on it to fix it as soon as possible':
        "Something went wrong, we are working on it to fix it as soon as possible",
    'Enter your email and we\'ll send you a link to create a new password':
        "Enter your email and we'll send you a link to create a new password",
    'You have cancelled facebook login, please login to continue':
        "You have cancelled facebook login, please login to continue",
    'Looks like owner has not shared his email id':
        "Looks like owner has not shared his email id",
    'You must be logged in to use this feature':
        "You must be logged in to use this feature",
    'Username or email is already occupied':
        "Username or email is already occupied",
    'Please check your internet connection':
        "Please check your internet connection",
    'Login to know more about the seller':
        "Login to know more about the seller",
    'Your offer submitted to the owner': "Your offer submitted to the owner",
    'I am interested in your property': "I am interested in your property",
    'Log in or sign up to continue': "Log in or sign up to continue",
    'What are you looking for?': "What are you looking for?",
    'We can have discussion on': "We can have discussion on",
    'Top Picks in Classifieds': "Top Picks in Classifieds",
    'Seller asking price is': "Seller asking price is",
    'Logged in successfully': "Logged in successfully",
    'RESET YOUR PASSWORD': "RESET YOUR PASSWORD",
    'SIGN UP WITH EMAIL': "SIGN UP WITH EMAIL",
    'Log in with email': "Log in with email",
    'Email or Username': "Email or Username",
    'Email/Username': "Email/Username",
    'Log in or sign up': "Log in or sign up",
    'Make an Offer': "Make an Offer",
    'My Saved Searches': "My Saved Searches",
    'Continue Browsing': "Continue Browsing",
    'Property status': "Property status",
    'Loading countries..': "Loading countries..",
    'Loading states..': "Loading states..",
    'Loading cities..': "Loading cities..",
    'Select country': "Select country",
    'Select state': "Select state",
    'Select city': "Select city",
    'Select language': "Select language",
    'Login required': "Login required",
    'My Favorites': "My Favorites",
    'Privacy Policy': "Privacy Policy",
    'Terms & Condition': "Terms & Condition",
    'Forgot Password': "Forgot Password",
    'Type a message': "Type a message",
    'Send email???': "Send email???",
    'Light Usage': "Light Usage",
    'Share using': "Share using",
    'My Account': "My Account",
    'Enter text': "Enter text",
    'Posted By': "Posted By",
    'Language': "Language",
    'Confirm': "Confirm",
    'Regards': "Regards",
    'Classifieds': "Classifieds",
    'Age': "Age",
    'Usage': "Usage",
    'Condition': "Condition",
    'SMS': "SMS",
    'Call': "Call",
    'Chat': "Chat",
    'Map': "Map",
    'Excellent': "Excellent",
    'Search': "Search",
    'Cancel': "Cancel",
    'Login': "Login",
    'LOG IN': "LOG IN",
    'Signup': "Signup",
    'Sign In': "Sign In",
    'Sign Out': "Sign Out",
    'Email': "Email",
    'Hidden': "Hidden",
    'Password': "Password",
    'Show': "Show",
    'Hide': "Hide",
    'My Ads': "My Ads",
    'Setting': "Setting",
    'Country': "Country",
    'STATE': "STATE",
    'City': "City",
    'Support': "Support",
    'Username': "Username",
    'Phone': "Phone",
    'Description': "Description",
    'Location': "Location",
    'Please enter your full name': "Please enter your full name",
    'Username can contain only Alphanumeric characters':
        "Username can contain only Alphanumeric characters",
    'Please enter minimum 6 characters of Username':
        "Please enter minimum 6 characters of Username",
    'Please enter correct Email id': "Please enter correct Email id",
    'Please enter minimum 6 characters of Password':
        "Please enter minimum 6 characters of Password",
    'Offer from': "Offer from",
    'is interested to buy': "is interested to buy",
    'at': "at",
    'Sending???': "Sending???",
    'All': "All",
    'Search Result': "Search Result",
    'No products found, please refine your search':
        "No products found, please refine your search",
    'Searching???': "Searching???",
    'Continue last Search': "Continue last Search",
    'It seems you have not started your chat yet':
        "It seems you have not started your chat yet",
    'My Notifications': "My Notifications",
    'You have not received any notification':
        "You have not received any notification",
    'What are you listing?': "What are you listing?",
    'Choose the category that your ad fits into.':
        "Choose the category that your ad fits into.",
    'Choose sub category that your ad fits into.':
        "Choose sub category that your ad fits into.",
    'Select sub category': "Select sub category",
    'Enter title': "Enter title",
    'First, enter a short title to describe your listing':
        "First, enter a short title to describe your listing",
    'add_photo': "add_photo",
    'OK': "OK",
    'Please enable location service to continue. We require it to get your current Ad location':
        "Please enable location service to continue. We require it to get your current Ad location",
    'Place an Ad': "Place an Ad",
    'Upload Details': "Upload Details",
    'Submit Details': "Submit Details",
    'Please wait..': "Please wait..",
    'Filter by': "Filter by",
    'Enter your keyword to search': "Enter your keyword to search",
    'Congratulations!! You have successfully posted':
        "Congratulations!! You have successfully posted",
    'Tap on map to Pin Location': "Tap on map to Pin Location",
    'Additional Info': "Additional Info",
    'Newest to Oldest': "Newest to Oldest",
    'Oldest to Newest': "Oldest to Newest",
    'Price Highest to Lowest': "Price Highest to Lowest",
    'Price Lowest to Highest': "Price Lowest to Highest",
    'Enter Keyword': "Enter Keyword",
    'Please wait, map is getting initialized':
        "Please wait, map is getting initialized",
    'Phone number': "Phone number",
    'Price': "Price",
    'Filter by Keyword': "Filter by Keyword",
    'Some thing went wrong, please restart the upload process':
        "Some thing went wrong, please restart the upload process",
    'Salary': "Salary",
    'Post': "Post",
    'Hide phone number': "Hide phone number",
    'Negotiable': "Negotiable",
    'Sort by': "Sort by",
    'Pin Location': "Pin Location",
    'Categories': "Categories",
    'Featured and Urgent Ads': "Featured and Urgent Ads",
    'Featured': "Featured",
    'Urgent': "Urgent",
    'Choose your language': "Choose your language",
    'Forget your password?': "Forget your password?",
    'Log out': "Log out",
    'Settings': "Settings",
    'State': "State",
    'Terms & Conditions': "Terms & Conditions",
    'Offline': "Offline",
    'Search???': "Search???",
    'CONTINUE': "CONTINUE",
    'This will be listed in': "This will be listed in",
    'First name': "First name",
    'Sign up to': "Sign up to",
    'SIGN UP': "SIGN UP",
    'ADD PHOTO': "ADD PHOTO",
    'Add More Info': "Add More Info",
    'Posted by': "Posted by",
    'Professional': "Professional",
    'MAKE AN OFFER': "MAKE AN OFFER",
    'Are you sure you want to log out': "Are you sure you want to log out",
    'YES': "YES",
    'NO': "NO",
    'Enter message': "Enter message",
    'Upgrade To Premium': "Upgrade To Premium",
    'Awesome!! You are just one step away from Premium':
        "Awesome!! You are just one step away from Premium",
    'Your all posted ads will become premium for 30 days':
        "Your all posted ads will become premium for 30 days",
    'All Ads Premium': "All Ads Premium",
    'Your issues will be solved at the earliest':
        "Your issues will be solved at the earliest",
    'Priority Support': "Priority Support",
    'No third party ads. Ex Google Ads': "No third party ads. Ex Google Ads",
    'Ads Free': "Ads Free",
    'Please select at least one premium feature to continue, click + button to add':
        "Please select at least one premium feature to continue, click + button to add",
    'Featured ads attract higher-quality viewer and are displayed prominently in the Featured ads section home page':
        "Featured ads attract higher-quality viewer and are displayed prominently in the Featured ads section home page",
    'Make your ad highlighted with border in listing search result page. Easy to focus':
        "Make your ad highlighted with border in listing search result page. Easy to focus",
    'Make your ad stand out and let viewer know that your advertise is time sensitive':
        "Make your ad stand out and let viewer know that your advertise is time sensitive",
    'Highlighted': "Highlighted",
    'Total price': "Total price",
    'Pay Using': "Pay Using",
    'Please enter the card details to proceed':
        "Please enter the card details to proceed",
    'Payment Successful': "Payment Successful",
    'Payment Failure': "Payment Failure",
    'Congratulations your payment is successful':
        "Congratulations your payment is successful",
    'Unfortunately your payment is failed, please retry':
        "Unfortunately your payment is failed, please retry",
    'Package': "Package",
    'Pending': "Pending",
    'Premium Membership': "Premium Membership",
    'Successfully Upgraded': "Successfully Upgraded",
    'Ad Post Limit': "Ad Post Limit",
    'Ad Expiry in': "Ad Expiry in",
    'Featured Ad fee': "Featured Ad fee",
    'Urgent Ad fee': "Urgent Ad fee",
    'Highlight Ad fee': "Highlight Ad fee",
    'Top in search results and category': "Top in search results and category",
    'Show ad on home page premium ad section':
        "Show ad on home page premium ad section",
    'Show ad on home page search result': "Show ad on home page search result",
    'Your Current Plan': "Your Current Plan",
    'for': "for",
    'days': "days",
    'yes': "yes"
  };
  Map<String, String> _arabic = {
    'HOME':"????????????????",
    'ACCOUNT':"??????????",
    'NEW':"????????",
    'MY ADS':"????????????????",
    'NOTIFI':"??????????????????",
    'Welcome':"???????? ????",
    'Welcome log title':'?????? ?????????? ?????????? ?????????? ????????',
    ' Please enable location service to continue. We require it to get your current Ad location':
        "???????? ?????????? ???????? ???????????? ????????????????. ???????????? ???????????? ?????? ?????????? ???????????????? ????????????",
    'By signing up you agree to our Terms & Conditions and Privacy Policy':
        "???????????????? ?? ?????? ?????????? ?????? ???????????? ???????????????? ???????????? ???????????????? ???????????? ??????",
    'Something went wrong, we are working on it to fix it as soon as possible':
        "?????? ?????? ???? ?? ?????? ???????? ???????? ?????????????? ???? ???????? ?????? ????????",
    'Enter your email and we\'ll send you a link to create a new password':
        "???????? ?????????? ???????????????????? ???????????? ???? ???????????? ???????????? ???????? ???????? ??????????",
    'You have cancelled facebook login, please login to continue':
        "???????? ?????????? ???????????????????? ???????????? ???? ????????????",
    'Some thing went wrong, please restart the upload process':
        "?????? ?????? ???? ?? ???????? ?????????? ?????????? ?????????? ??????????????",
    'First, enter a short title to describe your listing':
        "?????????? ?? ???????? ?????????????? ???????????? ???????? ????????????",
    'Username can contain only Alphanumeric characters':
        "???????? ???? ?????????? ?????? ???????????????? ?????? ???????? ???????????? ?????????? ??????",
    'Congratulations!! You have successfully posted':
        "??????????????!! ?????? ???????? ??????????",
    'Please enter minimum 6 characters of Username':
        "???????? ?????????? 6 ???????? ?????? ?????????? ???? ?????? ????????????????",
    'Please enter minimum 6 characters of Password':
        "???????????? ?????????? 6 ???????? ?????? ?????????? ???? ???????? ????????????",
    'No products found, please refine your search':
        "???? ?????? ???????????? ?????? ???????????? ?? ???????? ?????????? ????????",
    'It seems you have not started your chat yet':
        "???????? ?????? ???? ???????? ?????????????? ??????",
    'Choose the category that your ad fits into.':
        "???????? ?????????? ???????? ?????????????? ????????????.",
    'Choose sub category that your ad fits into.':
        "???????? ?????? ?????????? ?????????????? ????????????.",
    'Looks like owner has not shared his email id':
        "???????? ???? ???????????? ???? ?????????? ???????? ?????????? ????????????????????",
    'You must be logged in to use this feature':
        "?????? ???????? ?????????? ???????????? ???????????????? ?????? ????????????",
    'You have not received any notification': "???? ?????????? ???? ??????????",
    'Please wait, map is getting initialized':
        "???????????? ???????????????? ?? ?????? ?????????? ??????????????",
    'Username or email is already occupied':
        "?????? ???????????????? ???? ???????????? ???????????????????? ?????????? ????????????",
    'Please check your internet connection':
        "???????????? ???????????? ???? ?????????? ???????????????? ?????????? ????",
    'Login to know more about the seller':
        "?????????? ???????????? ???????????? ???????????? ???? ????????????",
    'Your offer submitted to the owner': "???????? ???????????? ?????? ????????????",
    'I am interested in your property': "?????? ???????? ???? ?????????????????? ???????????? ????",
    'Log in or sign up to continue': "?????????? ???????????? ???? ?????????????? ????????????????",
    'Please enter correct Email id':
        "???????????? ?????????? ???????? ???????????? ???????????????????? ????????????",
    'Please enter your full name': "???? ???????? ???????? ???????? ????????????",
    'Enter your keyword to search': "???????? ?????????? ???????????????? ??????????",
    'Tap on map to Pin Location': "???????? ?????? ?????????????? ???????????? ????????????",
    'Price Highest to Lowest': "?????????? ???? ???????????? ?????? ????????????",
    'Price Lowest to Highest': "?????????? ???? ?????????? ?????? ????????????",
    'What are you looking for?': "?????? ??????????",
    'We can have discussion on': "???????????? ????????????",
    'Top Picks in Classifieds': "???????? ?????????????? ???? ?????????????????? ??????????????",
    'Seller asking price is': "???????????? ?????? ?????????? ????",
    'Logged in successfully': "???? ?????????? ???????????? ??????????",
    'RESET YOUR PASSWORD': "?????? ?????? ???????? ????????",
    'SIGN UP WITH EMAIL': "?????? ???? ???????? ???????????? ????????????????????",
    'Log in with email': "?????????? ???????????? ???? ???????????? ????????????????????",
    'Email or Username': "???????????? ???????????????????? ???? ?????? ????????????????",
    'Email/Username': "?????? ????????????????",
    'Log in or sign up': "?????????? ???????????? ???? ????????????????",
    'Make an Offer': "?????????? ??????",
    'My Saved Searches': "???????????? ?????????? ???????????????? ???????????? ????",
    'is interested to buy': "?????????? ??????????????",
    'Continue last Search': "???????????? ?????????? ????????????",
    'What are you listing?': "???? ???????? ????????????",
    'Select sub category': "???????? ?????????? ??????????????",
    'Newest to Oldest': "???????????? ?????? ????????????",
    'Oldest to Newest': "???? ???????????? ?????? ????????????",
    'Filter by Keyword': "?????????? ?????? ?????????????? ????????????????",
    'Hide phone number': "?????????? ?????? ????????????",
    'Place an Ad': "???? ????????????",
    'My Notifications': "?????????????????? ???????????? ????",
    'Continue Browsing': "???????? ????????????",
    'Property status': "???????? ??????????????",
    'Loading countries..': "?????????? ?????????? ..",
    'Loading states..': "?????????? ?????????? ..",
    'Loading cities..': "?????????? ?????????? ..",
    'Select country': "?????? ????????????",
    'Select state': "???????? ??????????",
    'Select city': "???????? ??????????",
    'Select language': "?????????? ??????????",
    'Login required': "?????????? ???????????? ??????????",
    'My Favorites': "????????????",
    'Privacy Policy': "?????????? ????????",
    'Terms & Condition': "???????????? ????????????????",
    'Forgot Password': "???? ???????? ???????? ????????????",
    'Type a message': "???????? ??????????",
    'Send email???': "???????? ???????? ???????????????????",
    'Light Usage': "?????????????? ??????????",
    'Share using': "???????????? ????????????????",
    'My Account': "??????????",
    'Enter text': "???????? ????????",
    'Posted By': "?????????? ???? ??????",
    'Upload Details': "?????????? ????????????????",
    'Submit Details': "?????????? ????????????????",
    'Please wait..': "?????????? ??????????..",
    'Pin Location': "???????? ????????????",
    'Additional Info': "?????????????? ????????????",
    'Enter Keyword': "???????? ???????????? ??????????????????",
    'Phone number': "?????? ????????????",
    'Search Result': "?????????? ??????????",
    'Offer from': "?????? ????",
    'Enter title': "???????? ??????????????",
    'Filter by': "???????? ????????????",
    'Sort by': "?????????? ??????",
    'Description': "??????",
    'Location': "??????????",
    'Negotiable': "???????? ??????????????",
    'Categories': "??????????????",
    'add_photo': "?????????? ????????",
    'Searching???': "?????????? ...",
    'Sending???': "?????????????",
    'Language': "??????",
    'Confirm': "????????",
    'Regards': "???? ????????????",
    'Classifieds': "?????????????? ??????????",
    'Condition': "??????",
    'Usage': "??????????????",
    'My Ads': "????????????????",
    'Sign In': "?????????? ????????????",
    'LOG IN': "?????????? ????????????",
    'Sign Out': "????????",
    'Excellent': "??????????",
    'Search': "??????",
    'Cancel': "??????????",
    'Login': "?????????? ????????????",
    'Signup': "??????",
    'Email': "???????????? ????????????????????",
    'Hidden': "????????",
    'Password': "???????? ????????",
    'Setting': "??????",
    'Country': "??????",
    'STATE': "????????",
    'City': "??????????",
    'Support': "??????????",
    'Username': "?????? ????????????????",
    'Phone': "????????",
    'Price': "??????????",
    'Salary': "????????",
    'Show': "????????",
    'Hide': "??????????",
    'Post': "????????",
    'Chat': "??????????",
    'Call': "????????????",
    'SMS': "?????????? ??????????",
    'Age': "??????",
    'Map': "??????????",
    'All': "????????",
    'OK': "????????",
    'at': "????",
    'Featured and Urgent Ads': "?????????????? ?????????? ????????????",
    'Featured': "??????????",
    'Urgent': "??????????????",
    'Choose your language': "???????? ????????",
    'Forget your password?': "???????? ???????? ??????????????",
    'Log out': "????????????",
    'Settings': "??????????????????",
    'State': "????????",
    'Terms & Conditions': "???????????? ?? ????????????",
    'Offline': "?????? ???????? ?????? ????????????????",
    'Search???': "??????",
    'CONTINUE': "??????????",
    'This will be listed in': "???????? ?????? ?????? ????",
    'First name': "?????????? ??????????",
    'Sign up to': "?????????????? ??????",
    'SIGN UP': "??????",
    'ADD PHOTO': "?????????? ????????",
    'Add More Info': "?????????? ???????????? ???? ??????????????????",
    'Posted by': "?????????? ???? ??????",
    'Professional': "??????????????????",
    'MAKE AN OFFER': "?????????? ??????",
    'Are you sure you want to log out': "???? ?????? ?????????? ?????? ???????? ?????????? ????????????",
    'YES': "?????? ????????",
    'NO': "????",
    'Enter message': "???????? ??????????",
    'Upgrade To Premium': "?????????????? ?????? ??????????????",
    'Awesome!! You are just one step away from Premium':
        "????????!! ?????? ?????? ?????? ???????? ?????????? ?????? ???? ????????????????",
    'Your all posted ads will become premium for 30 days':
        "?????????? ???????? ?????????????????? ???????????????? ???????????? ???????? 30 ??????????",
    'All Ads Premium': "???????? ?????????????????? ??????????????",
    'Your issues will be solved at the earliest':
        "???????? ???? ???????????? ???? ???????? ?????? ????????",
    'Priority Support': "?????? ????????????????",
    'No third party ads. Ex Google Ads':
        "???? ?????????????? ?????? ????????. ???????????????? ?????????????? ????????",
    'Ads Free': "?????????????? ????????????",
    'Please select at least one premium feature to continue, click + button to add':
        "???????? ?????????? ???????? ?????????? ?????? ?????????? ???????????????? ?? ???????? ?????? ???? + ??????????????",
    'Featured ads attract higher-quality viewer and are displayed prominently in the Featured ads section home page':
        "?????????????????? ?????????????? ???????? ?????????????? ???????? ???????????? ???????? ?????????? ???????? ???????? ???? ???????????? ???????????????? ???????? ?????????????????? ??????????????",
    'Make your ad highlighted with border in listing search result page. Easy to focus':
        "???????? ???????????? ?????????????? ?????????? ???? ???????? ?????????? ?????? ??????????????. ???? ?????????? ??????????????",
    'Make your ad stand out and let viewer know that your advertise is time sensitive':
        "???????? ???????????? ???????????? ?????????? ?????????????? ???? ?????????????? ???????? ??????????",
    'Highlighted': "?????? ??????????",
    'Total price': "?????????? ??????????",
    'Pay Using': "?????????? ????????????????",
    'Please enter the card details to proceed':
        "???????????? ?????????? ???????????? ?????????????? ????????????????",
    'Payment Successful': "?????????? ????????????",
    'Payment Failure': "?????? ??????????",
    'Congratulations your payment is successful': "?????????? ?????????? ??????????",
    'Unfortunately your payment is failed, please retry':
        "???????? ???????? ?? ???????? ?????????? ?? ???????? ?????????? ????????????????",
    'Package': "????????",
    'Pending': "?????? ????????????????",
    'Premium Membership': "?????????? ??????????",
    'Successfully Upgraded': "?????? ???????????? ??????????",
    'Ad Post Limit': " ???? ???????????? ??????????????",
    'Ad Expiry in': " ???????????? ???????????? ?????????????? ????",
    'Featured Ad fee': " ???????? ?????????????????? ??????????????",
    'Urgent Ad fee': " ???????? ?????????????????? ??????????????",
    'Highlight Ad fee': " ?????????? ?????????? ?????? ???????? ??????????????",
    'Top in search results and category': "???????? ???? ?????????? ?????????? ????????????",
    'Show ad on home page premium ad section':
        "?????? ?????????????? ?????? ?????? ?????????????????? ?????????????? ???????????? ????????????????",
    'Show ad on home page search result':
        "?????? ?????????????? ?????? ?????????? ?????????? ???? ???????????? ????????????????",
    'Your Current Plan': "???????? ??????????????",
    'for': "?????? ???? ??????",
    'days': "????????",
    'yes': "??????"
  };
  Map<String, String> _french = {
    'Welcome':' Bienvenue',
    'Welcome log title':'Connectez-vous pour continuer',
    'By signing up you agree to our Terms & Conditions and Privacy Policy':
        "En vous inscrivant, vous acceptez nos Conditions d'utilisation et notre politique de confidentialit??",
    'Something went wrong, we are working on it to fix it as soon as possible':
        "Une erreur s'est produite, nous y travaillons pour le r??parer le plus rapidement possible",
    'Enter your email and we\'ll send you a link to create a new password':
        "Entrez votre email et nous vous enverrons un lien pour cr??er un nouveau mot de passe",
    'You have cancelled facebook login, please login to continue':
        "Vous avez annul?? la connexion ?? Facebook, veuillez vous connecter pour continuer",
    'Looks like owner has not shared his email id':
        "On dirait que le propri??taire n'a pas partag?? son identifiant de messagerie",
    'You must be logged in to use this feature':
        "Vous devez ??tre connect?? pour utiliser cette fonctionnalit??",
    'Username or email is already occupied':
        "Le nom d'utilisateur ou l'email est d??j?? occup??",
    'Please check your internet connection':
        "Veuillez v??rifier votre connexion Internet",
    'Login to know more about the seller':
        "Connectez-vous pour en savoir plus sur le vendeur",
    'Your offer submitted to the owner': "Votre offre soumise au propri??taire",
    'I am interested in your property': "Je suis int??ress?? par votre bien",
    'Log in or sign up to continue':
        "Connectez-vous ou inscrivez-vous pour continuer",
    'What are you looking for?': "Que cherchez-vous?",
    'We can have discussion on': "Nous pouvons discuter",
    'Top Picks in Classifieds': "Meilleurs choix dans les annonces",
    'Seller asking price is': "Le prix demand?? par le vendeur est",
    'Logged in successfully': "Connect?? avec succ??s",
    'RESET YOUR PASSWORD': "RESET YOUR PASSWORD",
    'SIGN UP WITH EMAIL': "INSCRIVEZ-VOUS AVEC UN EMAIL",
    'Log in with email': "Se connecter avec un email",
    'Email or Username': "Email ou nom d'utilisateur",
    'Email/Username': "Email / Nom d'utilisateur",
    'Log in or sign up': "Connectez-vous ou inscrivez-vous",
    'Make an Offer': "Faire une offre",
    'My Saved Searches': "Mes recherches sauvegard??es",
    'Continue Browsing': "Continuer la navigation",
    'Property status': "Statut de la propri??t??",
    'Loading countries ..': "Chargement des pays ..",
    'Loading states ..': "Chargement des ??tats ..",
    'Loading cities ..': "Chargement des villes ..",
    'Select country': "S??lectionnez un pays",
    'Select state': "Select state",
    'Select city': "Choisir la ville",
    'Select language': "Select language",
    'Login required': "Connexion requise",
    'My Favorites': "Mes favoris",
    'Privacy Policy': "Politique de confidentialit??",
    'Terms & Condition': "Termes & Conditions",
    'Forgot Password': "Forgot Password",
    'Type a message': "Tapez un message",
    'Send email???': "Envoyer un email ...",
    'Light Usage': "Utilisation l??g??re",
    'Share using': "Partager avec",
    'My Account': "Mon compte",
    'Enter text': "Enter text",
    'Posted By': "Publi?? par",
    'My Ads': "Mes annonces",
    'Sign In': "Sign In",
    'Sign Out': "D??connexion",
    'LOG IN': "CONNEXION",
    'Login': "Connexion",
    'Signup': "Inscription",
    'Language': "Langue",
    'Confirm': "Confirmer",
    'Regards': "Cordialement",
    'Classifieds': "Classifieds",
    'Age': "Age",
    'Usage': "Utilisation",
    'Condition': "Condition",
    'SMS': "SMS",
    'Call': "Call",
    'Chat': "Chat",
    'Map': "Carte",
    'Excellent': "Excellent",
    'Search': "Chercher",
    'Cancel': "Annuler",
    'Email': "Email",
    'Hidden': "cach??",
    'Password': "Mot de passe",
    'Show': "montre",
    'Hide': "Cacher",
    'Setting': "Setting",
    'Pays': "Pays",
    'STATE': "STATE",
    'City': "Ville",
    'Support': "Support",
    'Username': "Nom d'utilisateur",
    'Phone': "T??l??phone",
    'Description': "Description",
    'Location': "Lieu",
    'Please enter your full name': "S'il vous pla??t entrer votre nom complet",
    'Username can contain only Alphanumeric characters':
        "Le nom d'utilisateur ne peut contenir que des caract??res alphanum??riques",
    'Please enter minimum 6 characters of Username':
        "Merci d'entrer au moins 6 caract??res de nom d'utilisateur",
    'Please enter correct Email id':
        "S'il vous pla??t entrer l'id email correct",
    'Please enter minimum 6 characters of Password':
        "Veuillez entrer un minimum de 6 caract??res de mot de passe",
    'Offer from': "Offre de",
    'is interested to buy': "est int??ress?? ?? acheter",
    'at': "??",
    'Sending???': "Envoi???",
    'All': "Tout",
    'Search Result': "R??sultat de la recherche",
    'No products found, please refine your search':
        "Aucun produit trouv??, veuillez affiner votre recherche",
    'Searching???': "Recherche???",
    'Continue last Search': "Continuer la derni??re recherche",
    'It seems you have not started your chat yet':
        "Il semble que tu n'as pas encore commenc?? ton chat",
    'My Notifications': "mes notifications",
    'You have not received any notification':
        "Vous n'avez re??u aucune notification",
    'What are you listing?': "Qu'est-ce que vous listez?",
    'Choose the category that your ad fits into.':
        "Choisissez la cat??gorie de votre annonce.",
    'Choose sub category that your ad fits into.':
        "Choisissez la sous-cat??gorie ?? laquelle votre annonce appartient.",
    'Select sub category': "S??lectionner une sous cat??gorie",
    'Enter title': "Entrer titre",
    'First, enter a short title to describe your listing':
        "Tout d'abord, entrez un titre court pour d??crire votre annonce",
    'add_photo': "ajouter une photo",
    'OK': "D'accord",
    'Please enable location service to continue. We require it to get your current Ad location':
        "Veuillez activer le service de localisation pour continuer. Nous en avons besoin pour obtenir votre emplacement de l'annonce actuelle",
    'Place an Ad': "Passer une annonce",
    'Upload Details': "D??tails du t??l??chargement",
    'Submit Details': "Soumettre les d??tails",
    'Please wait..': "S'il vous pla??t attendez ..",
    'Filter by': "Filtrer par",
    'Enter your keyword to search': "Entrez votre mot-cl?? ?? rechercher",
    'Congratulations!! You have successfully posted':
        "F??licitations !! Vous avez post?? avec succ??s",
    'Tap on map to Pin Location':
        "Appuyez sur la carte pour l'emplacement de la localisation",
    'Additional Info': "Informations compl??mentaires",
    'Newest to Oldest': "Du plus r??cent au plus ancien",
    'Oldest to Newest': "Du plus ancien au plus r??cent",
    'Price Highest to Lowest': "Prix le plus ??lev?? au plus bas",
    'Price Lowest to Highest': "Prix le plus bas au plus ??lev??",
    'Enter Keyword': "Entrer mot cl??",
    'Please wait, map is getting initialized':
        "Veuillez patienter, la carte est en cours d'initialisation",
    'Phone number': "Num??ro de t??l??phone",
    'Price': "Prix",
    'Filter by Keyword': "Filtrer par mot cl??",
    'Some thing went wrong, please restart the upload process':
        "Une erreur s'est produite, veuillez red??marrer le processus de t??l??chargement",
    'Salary': "Un salaire",
    'Post': "Poster",
    'Hide phone number': "Masquer le num??ro de t??l??phone",
    'Negotiable': "N??gociable",
    'Sort by': "Trier par",
    'Pin Location': "Emplacement Pin",
    'Categories': "Les cat??gories",
    'Featured and Urgent Ads': "Annonces en vedette et urgentes",
    'Featured': "En vedette",
    'Urgent': "Urgent",
    'Choose your language': "Choisissez votre langue",
    'Forget your password?': "Mot de passe oubli???",
    'Log out': "Connectez - Out",
    'Settings': "R??glages",
    'State': "Etat",
    'Terms & Conditions': "termes et conditions",
    'Offline': "Hors ligne",
    'Search???': "Chercher???",
    'CONTINUE': "CONTINUER",
    'This will be listed in': "Ce sera r??pertori?? dans",
    'First name': "Pr??nom",
    'Sign up to': "Inscrivez-vous pour",
    'SIGN UP': "S'INSCRIRE",
    'ADD PHOTO': "AJOUTER UNE PHOTO",
    'Add More Info': "Ajouter plus d'infos",
    'Posted by': "post?? par",
    'Professional': "Professionnel",
    'MAKE AN OFFER': "FAIRE UNE OFFRE",
    'Are you sure you want to log out':
        "??tes-vous s??r de vouloir vous d??connecter",
    'YES': "OUI",
    'NO': "NON",
    'Enter message': "Entrez le message",
    'Upgrade To Premium': "Passer ?? la version premium",
    'Awesome!! You are just one step away from Premium':
        "Impressionnant!! Vous n'??tes plus qu'?? une ??tape de Premium",
    'Your all posted ads will become premium for 30 days':
        "Toutes vos annonces publi??es deviendront premium pendant 30 jours",
    'All Ads Premium': "Toutes les annonces Premium",
    'Your issues will be solved at the earliest':
        "Vos probl??mes seront r??solus au plus t??t",
    'Priority Support': "Support prioritaire",
    'No third party ads. Ex Google Ads':
        "Pas d'annonces tierces. Ex Google Ads",
    'Ads Free': "Annonces gratuites",
    'Please select at least one premium feature to continue, click + button to add':
        "Veuillez s??lectionner au moins une fonctionnalit?? premium pour continuer, cliquez sur le bouton + pour ajouter.",
    'Featured ads attract higher-quality viewer and are displayed prominently in the Featured ads section home page':
        "Les annonces pr??sent??es attirent des internautes de qualit?? sup??rieure et sont bien visibles sur la page d'accueil de la section Annonces s??lectionn??e.",
    'Make your ad highlighted with border in listing search result page. Easy to focus':
        "Mettez votre annonce en surbrillance avec une bordure dans la page de r??sultats de recherche. Facile ?? se concentrer",
    'Make your ad stand out and let viewer know that your advertise is time sensitive':
        "Faites en sorte que votre annonce se d??marque et faites savoir au spectateur que votre annonce est sensible au temps",
    'Highlighted': "Soulign??",
    'Total price': "Prix total",
    'Pay Using': "Payer en utilisant",
    'Please enter the card details to proceed':
        "S'il vous pla??t entrer les d??tails de la carte pour continuer",
    'Payment Successful': "Paiement r??ussi",
    'Payment Failure': "??chec du paiement",
    'Congratulations your payment is successful':
        "F??licitations, votre paiement est r??ussi",
    'Unfortunately your payment is failed, please retry':
        "Malheureusement, votre paiement a ??chou??, veuillez r??essayer.",
    'Package': "Paquet",
    'Pending': "En attente",
    'Premium Membership': "Adh??sion Premium",
    'Successfully Upgraded': "Mise ?? niveau r??ussie",
    'Ad Post Limit': "Limite de publication d'annonces",
    'Ad Expiry in': "Expiration de l'annonce dans",
    'Featured Ad fee': "Frais d'annonce en vedette",
    'Urgent Ad fee': "Frais d'annonce urgente",
    'Highlight Ad fee': "HMettre en ??vidence les frais de publicit??",
    'Top in search results and category':
        "Top des r??sultats de recherche et cat??gorie",
    'Show ad on home page premium ad section':
        "Afficher l'annonce sur la page d'annonces premium de la page d'accueil",
    'Show ad on home page search result':
        "Afficher l'annonce sur le r??sultat de la recherche sur la page d'accueil",
    'Your Current Plan': "Votre plan actuel",
    'for': "pour",
    'days': "journ??es",
    'yes': "Oui"
  };
}
