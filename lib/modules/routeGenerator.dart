import 'package:flutter/material.dart';
import 'package:va_flutter_project/pages/homeApp.dart';
import 'package:va_flutter_project/pages/createApp.dart';
import 'package:va_flutter_project/pages/accountApp.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Here getting the arguement pushed by navigator.push
    final urlData = Uri.parse(settings.name);
    
    switch (urlData.path) {
      case '':
        return MaterialPageRoute(builder: (_) => HomeApp());
        break;
      case '/':
        return MaterialPageRoute(builder: (_) => HomeApp());
        break;
      case '/create':
        return MaterialPageRoute(
          builder: (_) => CreateAppSwitch(
            data: "",
          ),
        );
        break;
      case '/account':
        return MaterialPageRoute(
          builder: (_) => AccountSwitch(
            data: "",
          ),
        );
        break;
      case '/startDemo':
        return MaterialPageRoute(
          builder: (_) => HomeApp(
            code: "va",
          ),
        );
        break;
      case '/startSurvey':
        return MaterialPageRoute(
          builder: (_) => HomeApp(
            code: urlData.queryParameters["sc"],
          ),
        );
        break;
      default:
        return _errorRoute();
        break;
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Destination not found! :/'),
            centerTitle: true,
          ),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Error',
                  style: TextStyle(
                      fontFamily: 'Terminal',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 100),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class RouteStringParse {

}