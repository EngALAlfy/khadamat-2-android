import 'package:Mark_Classified/helpers/app_config.dart';
import 'package:Mark_Classified/models/membership_plan.dart';
import 'package:Mark_Classified/screens/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:Mark_Classified/screens/auth_screen.dart';
import 'package:Mark_Classified/screens/color_helper.dart';
import 'package:provider/provider.dart';
import 'package:launch_review/launch_review.dart';

import '../fab_with_icons.dart';
import '../fab_bottom_app_bar.dart';
import '../layout.dart';
import './all_categories_screen.dart';
import './start_screen.dart';
import '../tabs/account_tab.dart';
import '../tabs/home_tab.dart';
import '../tabs/messages_tab.dart';
import '../tabs/my_ads_tab.dart';
import '../helpers/api_helper.dart';
import '../helpers/current_user.dart';
import '../providers/languages.dart';
import '../models/location.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs';
  TabsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TabsScreenState createState() => new _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with TickerProviderStateMixin {
  int _lastSelected = 0;
  Map<String, String> langPack;
  List<MembershipPlan> membershipPlans = [];
  var membershipPlanUser;

  List<Widget> _tabs = [
    HomeTab(),
    NotificationsScreen(),
    NotificationsTab(),
    AccountTab(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  // set up the buttons
  Widget cancelButton(BuildContext ctx) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey[800]),
      ),
      child: Text(
        langPack['Cancel'],
        textDirection: CurrentUser.textDirection,
      ),
      onPressed: () {
        Navigator.of(ctx).pop();
      },
    );
  }

  Widget continueButton(BuildContext ctx) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey[800]),
      ),
      child: Text(
        langPack['Login'],
        textDirection: CurrentUser.textDirection,
      ),
      onPressed: () async {
        Navigator.of(context).pushNamed(AuthScreen.routeName, arguments: true);
      },
    );
  }

  void _updateAlert(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (ctx) {
          return AlertDialog(
            title: Text('New Version Available'),
            content: Text(
                'A new version of the application is available now for download. We have fixed few bugs and enhanced user experience. Please click on Upgrade Now button to update the application. It will not change any of your existing information.'),
            actions: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey[800]),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () async {
                  await LaunchReview.launch();
                },
                child: Text('Update Now'),
              ),
            ],
          );
        });
  }


  Future<void> fetchMembershipPlans(APIHelper apiHelper) async{
   apiHelper.fetchMembershipPlan().then((value) {
     print(value);
     setState(() {
       membershipPlans = value;
     });
   });
  }

  Future<void> fetchUserMembershipById(APIHelper apiHelper, String userId) async {
      membershipPlanUser = await apiHelper.fetchCurrentUserMembershipPlan(userId: userId);
      apiHelper.fetchCurrentUserMembershipPlan(userId: userId).then((value) {
        print(value);
        setState(() {
          membershipPlanUser = value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    if (CurrentUser.showUpdateAlert) {
      // Future.delayed(Duration.zero, () {
      //   print("server version ${AppConfig.appVersion}");
      //   if (AppConfig.appVersion != AppConfig.APP_VERION) _updateAlert(context);
      // });
      CurrentUser.showUpdateAlert = false;
    }
    langPack = Provider.of<Languages>(context).selected;
    print(
        'Current user info: ${CurrentUser.id}, ${CurrentUser.name}, ${CurrentUser.email}, ${CurrentUser.username}, ${CurrentUser.picture}, ${CurrentUser.isLoggedIn}, ');
    final apiHelper = Provider.of<APIHelper>(context);
    return Scaffold(
      body: _tabs[_lastSelected],
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: langPack['NEW'],
        color: Colors.grey[800],
        selectedColor: Colors.grey[800],
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(
              iconData: _lastSelected == 0 ? Icons.home : Icons.home_outlined,
              text: langPack['HOME']),
          FABBottomAppBarItem(
              iconData: _lastSelected == 1
                  ? Icons.notifications
                  : Icons.notifications_outlined,
              text: langPack['NOTIFI'],
          ),
          FABBottomAppBarItem(
              iconData:
                  _lastSelected == 2 ? Icons.favorite : Icons.favorite_outline,
              text: langPack['MY ADS']),
          FABBottomAppBarItem(
              iconData:
                  _lastSelected == 3 ? Icons.person : Icons.person_outline,
              text: langPack['ACCOUNT']),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.grey[800],
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        onPressed: () async {
          if (!CurrentUser.isLoggedIn) {
            showDialog(
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  title: Text(
                    langPack['Login'],
                    textDirection: CurrentUser.textDirection,
                  ),
                  content: Text(
                    langPack['You must be logged in to use this feature'],
                    textDirection: CurrentUser.textDirection,
                  ),
                  actions: [
                    cancelButton(ctx),
                    continueButton(ctx),
                  ],
                );
              },
            );
          } else if (CurrentUser.isLoggedIn) {

            await Navigator.of(context)
                .pushNamed(AllCategoriesScreen.routeName, arguments: {
              'newAd': true,
              'editAd': false,
            });
            CurrentUser.prodLocation = Location();
          }

          // apiHelper.deleteProducts(userId: CurrentUser.id, itemId: '54');

          // apiHelper.registerUser(
          //   name: 'Demo1',
          //   email: 'example@example.com',
          //   username: 'ExampleUserName',
          //   password: 'demo',
          //   fbLogin: '0',
          // );

          //apiHelper.fetchRelatedProducts();

          // await apiHelper.loginUserUsingUsername(
          //   username: 'demo',
          //   password: 'demo',
          // );

          //await apiHelper.logout();

          // apiHelper.forgetPassword(email: 'demouser@gmail.com');

          //apiHelper.getUserTransactions(userId: '1');

          //apiHelper.fetchProducts();

          //apiHelper.fetchExpireProductsForUser(userId: '1');

          // apiHelper.fetchProductsByCategory( // ????????????????????????
          //   categoryId: '4',
          // );

          //apiHelper.fetchRelatedProducts(categoryId: '3');

          //apiHelper.searchCity(dataString: 'baw');

          //apiHelper.fetchProductsDetails(itemId: '1');

          //apiHelper.fetchCountryDetails();

          //apiHelper.fetchCustomData(itemId: '1');

          //apiHelper.fetchStateDetailsByCountry(countryCode: 'IN');

          //apiHelper.fetchCityDetailsByState(stateCode: 'IN.38');

          // apiHelper.fetchAppConfiguration(langCode: 'EN');

          // apiHelper.fetchChatMessage(sesUserId: '3', clientId: '1'); // ????

          // apiHelper.fetchGroupChatMessage(sessionUserId: '1');

          // apiHelper.fetchLanguagePack();

          // apiHelper.makeAnOffer(); //?????????????????

          // apiHelper.sendChatMessage(
          //     fromId: '1', toId: '3', message: 'Helloooo!'); // userId ???

          //apiHelper.getNotificationMessage(userId: '1'); // ???????

          // apiHelper.addFirebaseDeviceToken(); //????????????

          // apiHelper.updateProfilePic(userId: '1'); // ?????????????

          // apiHelper.getUnReadMessageCount(userId: '1');

          //apiHelper.getAdStatus(); // Some info (firebase server key ???)

          // apiHelper.fetchPaymentVendorCredentials();

          // apiHelper.fetchMembershipPlan();

          // apiHelper.fetchCurrentUserMembershipPlan(userId: '1');

          // apiHelper.getUserData(userId: '1');
        },
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // Widget _buildFab(BuildContext context) {
  //   final icons = [Icons.sms, Icons.mail, Icons.phone];
  //   return AnchoredOverlay(
  //     showOverlay: true,
  //     overlayBuilder: (context, offset) {
  //       return CenterAbout(
  //         position: Offset(offset.dx, offset.dy - icons.length * 35.0),
  //         child: FabWithIcons(
  //           icons: icons,
  //           onIconTapped: _selectedFab,
  //         ),
  //       );
  //     },
  //     child: FloatingActionButton(
  //       onPressed: () {},
  //       tooltip: 'Add',
  //       child: Icon(Icons.add),
  //       //elevation: 2.0,
  //       //mini: false,
  //     ),
  //   );
  // }
}
