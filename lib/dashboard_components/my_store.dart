import 'package:flutter/material.dart';
import '../widgets/appbar_widgets.dart';

class MyStore extends StatelessWidget {
  const MyStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppBarBackButton(),
        title: const AppBarTitle(
          title: 'MyStore',
        ),
      ),
    );
  }
}
