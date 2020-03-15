
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';

class CalculatorPage extends StatelessWidget {

  const CalculatorPage._({Key key}) : super(key: key);

  static const routeName = '/calculator';

  static Widget newInstance() {
    return ChangeNotifierProvider(
      child: const CalculatorPage._(),
      create: (context) => _Model(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            child: const Text('increment the value by 10!'),
            onPressed: () => Provider.of<AppModel>(context, listen: false)
                .incrementLastResult(10),
          ),
          MaterialButton(
            child: const Text('save current value!'),
            onPressed: () => Provider.of<AppModel>(context, listen: false)
                .saveLastResult(),
          ),
        ],
      ),
    );
  }
}

class _Model extends ChangeNotifier {
  @override
  void dispose() {
    super.dispose();
    print('dispose calc model');
  }
}
