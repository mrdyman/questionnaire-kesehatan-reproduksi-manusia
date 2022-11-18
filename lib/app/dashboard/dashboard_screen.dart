import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:questionnaire/components/custom_confirmation_dialog.dart';
import 'package:questionnaire/components/detail_jawaban_modal.dart';
import 'package:questionnaire/config/fonts.dart';

import '../../components/data_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => 1,
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            // color: Theme.of(context).textTheme.headline1!.color,
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 60, 14, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: CircleAvatar(
                          child: Text("username".toUpperCase()),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        "username",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                      ),
                      subtitle: const Text("admin"),
                      onTap: null,
                      dense: true,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SvgPicture.asset(
                        "assets/icons/bold/logout.svg",
                        height: 26,
                        color: Theme.of(context).errorColor,
                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Text("Logout"),
                  subtitle: const Text("Keluar dari akun anda"),
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (_) => CustomConfirmationDialog());
                  },
                  dense: true,
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hi. Nanda,",
                style: TextStyle(
                    fontFamily: fontNunito,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SvgPicture.asset("assets/icons/avatar.svg", height: 50)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SvgPicture.asset(
                          "assets/icons/happy.svg",
                          height: 30,
                        ),
                        const Text(
                          "Jumlah Paham",
                          style: TextStyle(
                              fontFamily: fontNunito,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text("83",
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SvgPicture.asset(
                          "assets/icons/sad.svg",
                          height: 30,
                        ),
                        const Text(
                          "Jumlah Tidak\n Paham",
                          style: TextStyle(
                              fontFamily: fontNunito,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Text("20",
                            style: TextStyle(
                                fontFamily: fontNunito,
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SvgPicture.asset(
                          "assets/icons/data.svg",
                          height: 30,
                        ),
                        const Text(
                          "Total Data",
                          style: TextStyle(
                              fontFamily: fontNunito,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("150",
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 18),
              child: Text(
                "Lihat semua >",
                style: TextStyle(
                    color: Colors.lightBlue,
                    decoration: TextDecoration.underline),
              ),
            )),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return DataItemCard(
                  onTap: () => showDialog(
                      context: context,
                      builder: (_) => const DetailJawabanModal()),
                  onDelete: () => showDialog(
                      context: context,
                      builder: (_) => CustomConfirmationDialog(
                            dialogSubTitle: "Yakin ingin menghapus data?",
                            confirmTitle: "Ya, Hapus!",
                            onTap: () => 1,
                          )),
                );
              }),
        ),
      ]),
    );
  }
}
