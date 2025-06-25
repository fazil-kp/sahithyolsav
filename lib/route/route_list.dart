import 'package:sahithyolsav/model/route_model.dart';
import 'package:sahithyolsav/view/home/home_screen.dart';
import 'package:sahithyolsav/view/score_board/score_board.dart';
import 'package:sahithyolsav/widget/ssf_placeholder.dart';

const String home = "home";
const String scoreBoard = "score-board";
const String progress = "Point";

List<RouteModel> mainRouteList = [
  //! important : First three route for bottomNavigation
  RouteModel(
    id: 0,
    name: "Home",
    darkSvg: 'assets/icons/home_fill.svg',
    lightSvg: 'assets/icons/home_light.svg',
    routeName: home,
    widget: SsfPlaceHolder(child: HomeScreen()),
  ),
  RouteModel(
    id: 1,
    name: "Score Board",
    darkSvg: 'assets/icons/home_fill.svg',
    lightSvg: 'assets/icons/home_light.svg',
    routeName: scoreBoard,
    widget: SsfPlaceHolder(enableBackButton: true, title: "Score Board", child: ScoreBoard()),
  ),
  // RouteModel(
  //   id: 1,
  //   name: "Programs",
  //   darkSvg: 'assets/icons/meal_fill.svg',
  //   lightSvg: 'assets/icons/meal_light.svg',
  //   routeName: meal,
  //   widget: SsfPlaceHolder(child: SizedBox()),
  // ),
  // RouteModel(
  //   id: 2,
  //   name: "Point",
  //   darkSvg: 'assets/icons/progress_fill.svg',
  //   lightSvg: 'assets/icons/progress_light.svg',
  //   routeName: progress,
  //   widget: SsfPlaceHolder(child: SizedBox()),
  // ),
];
