import 'package:flutter/material.dart';
import '../dashboard_components/delivered_orders.dart';
import '../dashboard_components/preparing_orders.dart';
import '../dashboard_components/shipping_orders.dart';
import '../widgets/appbar_widgets.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const AppBarBackButton(),
          title: const AppBarTitle(
            title: 'Orders',
          ),
          bottom: const TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 8,
              tabs: [
                RepeatedTab(label: 'Preparing'),
                RepeatedTab(label: 'Shipping'),
                RepeatedTab(label: 'Delivered'),
              ]),
        ),
        body: const TabBarView(children: [
          Preparing(),
          Shipping(),
          Delivered(),
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
          child: Text(
        label,
        style: const TextStyle(color: Colors.grey),
      )),
    );
  }
}
