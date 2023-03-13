import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/router_genaretor.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/text_styles.dart';
import 'package:hackathon_talents/utils/helper.dart';
import 'package:provider/provider.dart';




void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HackathonTalents());
}



class HackathonTalents extends StatelessWidget {
  const HackathonTalents({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
       textTheme: TextTheme() 
      ),
      title: 'HackathonTalentss',
      checkerboardOffscreenLayers: false,
      scaffoldMessengerKey: UtilsConfig.scaffoldKey,
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenName.homeScreen,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      navigatorKey: AppRouter.navigatorKey,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text("Ahmad",style:AppTextStyles.title,),
    );
  }
}