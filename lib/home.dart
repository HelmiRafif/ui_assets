import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class IndexDashboard extends StatelessWidget {
  // const IndexDashboard({Key? key}) : super(key: key);
  List<List> menuList = [
    [
      "Al-Qur'an",
      "images/ic_quran.png",
    ],
    [
      "Tasbih",
      "images/ic_tasbih.png",
    ],
    [
      "Adzan",
      "images/ic_adzan.png",
    ],
    [
      "Do'a",
      "images/ic_doa.png",
    ],
    [
      "Kiblat",
      "images/ic_compass.png",
    ],
    [
      "Kalendar",
      "images/ic_kalender.png",
    ],
    [
      "Buletin",
      "images/ic_buletin.png",
    ],
    // [
    //   "Zakat",
    //   ic_zakat,
    // ],
    [
      "Lainnya",
      "images/ic_more.png",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    // DashboardController controller = Get.find<DashboardController>();

    void changeStatusColor(Color color) async {
      setStatusBarColor(color);
      /*try {
        await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
        FlutterStatusbarcolor.setStatusBarWhiteForeground(useWhiteForeground(color));
      } on Exception catch (e) {
        print(e);
      }*/
    }

    changeStatusColor(Colors.transparent);
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      bottomNavigationBar: const BottomAppBar(child: BottomBar()),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 200,
        backgroundColor: const Color(0XFFF5F5F5),
        leading: Row(
          children: [
            16.width,
            Image.asset(
              "images/logo.png",
              height: 40,
            ),
            8.width,
            const Text(
              "MosQ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0XFF000000),
              ),
            )
          ],
        ),
        toolbarHeight: 60,
        actions: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Selasa, 14 Desember",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                )
                //text(dateFormatter(DateTime.now()), fontSize: textSizeSmall),
              ],
            ),
            IconButton(
                enableFeedback: true,
                onPressed: () {
                  // toast('Go to add profile');
                  // Get.toNamed(RouteName.new_masjid);
                },
                icon: const Icon(
                  Icons.add_business,
                  color: Color(0XFF000000),
                ))
          ]),
          IconButton(
              enableFeedback: true,
              onPressed: () {
                // print(authController.isLoggedIn.value);
                // authController.isLoggedIn.value
                //     ? showDialog(
                //         context: context,
                //         builder: (BuildContext context) =>
                //             ConfirmLogout())
                //     // authController.signOut()
                //     : Get.toNamed(RouteName.sign_in);
              },
              icon: const Icon(
                // authController.isLoggedIn.value
                // ? Icons.logout
                Icons.person,
                color: Color(0XFF000000),
              )),
        ],
        flexibleSpace: Container(
          width: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFFF5F5F5), Color(0XFF019A98)],
              begin: Alignment(0.5, 1),
              end: Alignment(0.8, -3),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // text("Waktu Sholat", fontSize: textSizeSMedium),
              // Obx(
              //   () => text(timeFormatter(controller.time), fontSize: 36.0),
              // ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton.icon(
                          onPressed: () {
                            // controller.isLoading = !controller.isLoading;
                            // controller.isLoading
                            //     ? null
                            //     : controller.getLocation();
                          },
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Color(0XFF000000),
                          ),
                          label:
                              // Obx(
                              //   () =>
                              const Text(
                            "Sukun",
                            style: TextStyle(
                                fontSize: 14.0, color: Color(0XFF000000)),
                          ),
                          // )
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_up,
                        color: Color(0XFF019A98),
                      ),
                    ),
                  ],
                ),
              ),
              8.height,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: 500,
                // decoration: boxDecoration(
                //     radius: 10, showShadow: true, shadowRadius: 4),
                // height: 170,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 9 / 10, crossAxisCount: 5),
                    itemCount: menuList.length,
                    itemBuilder: (context, index) => MenuIconDashboard(
                          title: menuList[index][0]!,
                          asset: menuList[index][1]!,
                        )),
              ),
              16.height,
              SubHeadDashboard("Masjid Favorit"),
              16.height,
              Container(
                decoration: boxDecoration(
                    radius: 16,
                    showShadow: true,
                    // shadowColor: mkColorPrimary.withOpacity(0.6),
                    shadowOffset: const Offset(2, 2),
                    shadowRadius: 3,
                    bgColor: const Color(0XFFFFFFFF)),
                width: 500 * 0.8,
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () async {
                    // Get.toNamed(RouteName.list_masjid);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          child: Image.asset(
                            "images/bg_dashboard.png",
                            height: 180,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: <Widget>[
                            const Icon(Icons.search),
                            8.width,
                            const Expanded(
                              child: Text("Cari Masjid Favorit"),
                            ),
                            const Icon(
                              Icons.chevron_right,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              16.height,
              SubHeadDashboard("Kegiatan Masjid"),
              16.height,
              // KegiatanSliderWidget(controller.kegiatans),
              // 16.height,
            ],
          ),
        ),
      ),
    );
  }
}

class MenuIconDashboard extends StatelessWidget {
  MenuIconDashboard({required this.asset, required this.title});
  String asset;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(RouteName.widget_kiblat);
        // showDialog(
        //     context: context,
        //     builder: (context) => CustomAlert
        //         svgPath: mk_maintenance_svg,(
        //         title: title,
        //         subtitle: "Under Maintenance"));
      },
      child: Ink(
        child: Container(
          // color: mkColorPrimary,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                asset,
                height: 40,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SubHeadDashboard extends StatelessWidget {
  SubHeadDashboard(this.title);
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        16.width,
        Container(
          padding: const EdgeInsets.only(bottom: 4),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0XFF019A98), width: 2))),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        8.width,
        const RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.arrow_circle_up_rounded,
            color: Color(0XFFE0C30C),
          ),
        )
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(
        color: Color(0XFF019A98),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // if (!authController.user.masjid.isEmptyOrNull)
          IconButton(
            onPressed: () async {
              // try {
              //   MasjidModel myMasjid =
              //       await MasjidModel(id: authController.user.masjid)
              //           .find();
              //   masjidC.gotoDetail(myMasjid);
              // } on Exception catch (e) {
              //   Get.snackbar("Error", e.toString());
              // }
            },
            iconSize: 30,
            icon: Image.asset("images/ic_masjid.png"),
            tooltip: 'Masjid Anda',
            enableFeedback: true,
            color: const Color(0XFF019A98),
          ),
          IconButton(
            onPressed: () {
              // Get.offNamed(RouteName.home);
              print("null");
            },
            tooltip: 'Home',
            icon: const Icon(Icons.home),
            iconSize: 30,
            enableFeedback: true,
            color: const Color(0XFF019A98),
          ),
          IconButton(
            onPressed: () {
              // Get.offNamed(RouteName.list_masjid);
              print("null");
            },
            tooltip: 'Cari Masjid',
            icon: const Icon(Icons.search),
            iconSize: 30,
            enableFeedback: true,
            color: const Color(0XFF019A98),
          ),
          IconButton(
            onPressed: () {
              print("null");
              // authController.isLoggedIn.isTrue
              //     ? Get.offNamed(RouteName.profile)
              //     : Get.toNamed(RouteName.sign_in);
            },
            iconSize: 30,
            tooltip: 'User Profile',
            icon: const Icon(Icons.person),
            enableFeedback: true,
            color: const Color(0XFF019A98),
          )
        ],
      ),
    );
  }
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? shadowColor,
    Color? bgColor,
    double? shadowRadius,
    double? shadowBlurRadius,
    Offset? shadowOffset,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor,
    boxShadow: showShadow
        ? defaultBoxShadow(
            shadowColor: shadowColor ?? shadowColorGlobal,
            offset: shadowOffset ?? const Offset(0.0, 0.0),
            blurRadius: shadowBlurRadius,
            spreadRadius: shadowRadius,
          )
        : [const BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}
