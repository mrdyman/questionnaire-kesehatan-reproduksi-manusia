import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:questionnaire/app/dashboard/bloc/dashboard_bloc.dart';
import 'package:questionnaire/components/custom_confirmation_dialog.dart';
import 'package:questionnaire/components/custom_skeleton_loading.dart';
import 'package:questionnaire/components/data_not_found.dart';
import 'package:questionnaire/components/detail_jawaban_modal.dart';
import 'package:questionnaire/config/fonts.dart';

import '../../components/custom_loading_dialog.dart';
import '../../components/data_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final bloc = BlocProvider.of<DashboardBloc>(context);
    bloc.add(const DashboardEvent.started());

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
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
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: CircleAvatar(
                          child: Text("A"),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: BlocBuilder<DashboardBloc, DashboardState>(
                        builder: (context, state) {
                          return Text(
                            state.maybeWhen(
                                loaded: (dataResult, userLogin) => userLogin,
                                orElse: () => "unknown"),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          );
                        },
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
                        "assets/icons/logout.svg",
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
                    showDialog(
                        context: context,
                        builder: (_) => CustomConfirmationDialog(
                              dialogType: 2,
                              dialogTitle: 'Yakin ingin Logout?',
                              confirmTitle: 'Logout',
                              dialogSubTitle:
                                  'untuk melihat data anda wajib untuk login kembali',
                              onTap: () {
                                bloc.add(const DashboardEvent.logout());
                              },
                            ));
                  },
                  dense: true,
                )
              ],
            ),
          ),
        ),
      ),
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          state.whenOrNull(
              loading: (isLoading) => (isLoading) => isLoading
                  ? showDialog(context: context, builder: (_) => loading())
                  : Navigator.pop(context));
        },
        builder: (context, state) {
          return BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.maybeWhen(
                        initial: () => customSkeletonLoading(
                            width: size.width * 0.4, height: 15),
                        orElse: () => const Text(
                          "Hi. Nanda,",
                          style: TextStyle(
                              fontFamily: fontNunito,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      state.maybeWhen(
                          initial: () =>
                              customSkeletonLoading(width: 50, height: 50),
                          orElse: () => SvgPicture.asset(
                              "assets/icons/avatar.svg",
                              height: 50))
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
                          state.maybeWhen(
                            orElse: () => customSkeletonLoading(
                                width: size.width * 1 / 4, height: 100),
                            loaded: (data, userLogin) => Container(
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
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/smile.svg",
                                        height: 30,
                                      ),
                                      const Text(
                                        "Jumlah Paham",
                                        style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(bloc.totalPaham.toString(),
                                          style: const TextStyle(
                                              fontFamily: fontNunito,
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ),
                          ),
                          state.maybeWhen(
                            orElse: () => customSkeletonLoading(
                                width: size.width * 1 / 4, height: 125),
                            loaded: (data, userLogin) => Container(
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
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
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
                                      Text(bloc.totalTidakPaham.toString(),
                                          style: const TextStyle(
                                              fontFamily: fontNunito,
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ),
                          ),
                          state.maybeWhen(
                            orElse: () => customSkeletonLoading(
                                width: size.width * 1 / 4, height: 100),
                            loaded: (data, userLogin) => Container(
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
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
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
                                      Text(bloc.totalData.toString(),
                                          style: const TextStyle(
                                              fontFamily: fontNunito,
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(0.0),
                      itemCount: state.maybeWhen(
                        loaded: (data, user) =>
                            data != null ? bloc.totalData : 1,
                        orElse: () => 5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return state.maybeWhen(
                            orElse: () => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: customSkeletonLoading(
                                      width: size.width * 0.9, height: 100),
                                ),
                            loaded: (data, user) => data != null
                                ? DataItemCard(
                                    nama: data[index].mahasiswa!.name,
                                    umur: data[index].mahasiswa!.age.toString(),
                                    kelas: data[index].mahasiswa!.clases,
                                    skor: data[index].skor,
                                    onTap: () => showDialog(
                                        context: context,
                                        builder: (_) => DetailJawabanModal(
                                              data: data[index],
                                            )),
                                    onDelete: () => showDialog(
                                        context: context,
                                        builder: (_) =>
                                            CustomConfirmationDialog(
                                              dialogSubTitle:
                                                  "Data yang telah dihapus tidak dapat dikembalikan. Yakin ingin menghapus data?",
                                              confirmTitle: "Ya, Hapus!",
                                              onTap: () => bloc.add(
                                                  DashboardEvent.deleteData(
                                                      id: data[index].id!)),
                                            )),
                                  )
                                : const NotFound());
                      }),
                ),
              ]);
            },
          );
        },
      ),
    );
  }
}
