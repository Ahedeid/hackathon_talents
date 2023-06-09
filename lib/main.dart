import 'package:flutter/material.dart';
import 'package:hackathon_talents/logics/provider/withdeawProvider.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/router_genaretor.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/helper.dart';
import 'package:provider/provider.dart';

import 'logics/provider/banck_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HackathonTalents());
}

class HackathonTalents extends StatelessWidget {
  const HackathonTalents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => AddBankService(),
        ),
        ChangeNotifierProvider(
          create: (context) => WithdrawProvider(),
        ),
      ],
        child: MaterialApp(
          theme: ThemeData(
            fontFamily: "Segoe UI",
            scaffoldBackgroundColor: const Color(AppColor.scaffoldBack),
          ),
          title: 'HackathonTalents',
          checkerboardOffscreenLayers: false,
          scaffoldMessengerKey: UtilsConfig.scaffoldKey,
          debugShowCheckedModeBanner: false,
          initialRoute: ScreenName.balanceScreen,
          onGenerateRoute: RouteGenerator.onGenerateRoute,
          navigatorKey: AppRouter.navigatorKey,
        ),
    );
  }
}
