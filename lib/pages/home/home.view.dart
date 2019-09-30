import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_m/pages/home/home.bloc.dart';
import 'package:app_m/common/colors.dart' as COLORS;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc _bloc = HomePageBloc.instance;

  @override
  void dispose() {
    this._bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: COLORS.LINE_SUNSET_LR,
        ),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: COLORS.SUNSET,
                      floating: false,
                      pinned: false,
                      primary: false,
                      // leading: const SizedBox(),
                      automaticallyImplyLeading: false,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Row(
                          children: <Widget>[
                            const SizedBox(width: 16),
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Hi Nguyen",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Expanded(
                              child: const SizedBox(),
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 16),
                          ],
                        ),
                        background: Container(
                          decoration: BoxDecoration(
                            gradient: COLORS.LINE_SUNSET_LR,
                          ),
                        ),
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: _SliverAppBarDelegate(
                        TabBar(
                          labelPadding:
                              const EdgeInsets.only(left: 3, right: 3),
                          labelStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),

                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: Color(0xFFFFFFFF),
                              width: 3.0,
                            ),
                            insets: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 10.0),
                          ),

                          // indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white54,
                          indicatorColor: Colors.white,
                          tabs: [
                            Tab(text: "COMING SOON"),
                            Tab(text: "NOW SHOWING"),
                            Tab(text: "FEEL SPECIAL"),
                          ],
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: Center(
                  child: Text('HomePage'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height + 80;
  @override
  double get maxExtent => _tabBar.preferredSize.height + 80;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipOval(
      clipper: OvalTopBorderClipper(),
      child: new Container(
        child: Column(
          children: <Widget>[
            _tabBar,
            SizedBox(
              height: 50,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: COLORS.LINE_SUNSET_LR,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class OvalTopBorderClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final Rect rect = Rect.fromLTWH(
      0.0 - size.width / 2,
      0.0 - size.width / 2,
      size.width * 2,
      size.height * 2,
    );

    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
