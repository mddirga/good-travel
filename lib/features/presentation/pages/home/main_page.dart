// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:good_travel/config/themes/theme.dart';
import 'package:good_travel/features/presentation/pages/home/home_page.dart';
import 'package:good_travel/features/presentation/pages/home/setting_page.dart';
import 'package:good_travel/features/presentation/pages/home/transaction_page.dart';
import 'package:good_travel/features/presentation/pages/home/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabBarView() {
      return TabBarView(
        children: <Widget>[
          HomePage(),
          TransactionPage(),
          WalletPage(),
          SettingPage(),
        ],
        controller: _tabController,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: tabBarView(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(40.0),
          ),
          child: Container(
            color: Colors.lightBlue,
            child: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              labelStyle: blackTextStyle.copyWith(
                fontSize: 10.0,
                fontWeight: semiBold,
              ),
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              indicatorColor: Colors.black54,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.book_online,
                    size: 24.0,
                  ),
                  text: 'Booking',
                ),
                Tab(
                  icon: Icon(
                    Icons.card_membership,
                    size: 24.0,
                  ),
                  text: 'Card',
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    size: 24.0,
                  ),
                  text: 'Setting',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
