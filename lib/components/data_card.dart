import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

import '../const/fonts.dart';
import 'custom_icon_button.dart';

class DataItemCard extends StatelessWidget {
  final dynamic Function()? onTap;
  final dynamic Function()? onDelete;
  final dynamic Function()? onEdit;
  const DataItemCard({this.onTap, this.onDelete, this.onEdit, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Slidable(
          key: key,
          endActionPane: ActionPane(
            motion: const BehindMotion(),
            extentRatio: 0.40,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 15),
                child: CustomIconButton(
                  onTap: onEdit ?? () {},
                  color: Colors.amber.shade400,
                  icon: SvgPicture.asset(
                    "assets/icons/edit.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: CustomIconButton(
                  onTap: onDelete ?? () {},
                  color: Colors.red.shade400,
                  icon: SvgPicture.asset(
                    "assets/icons/delete.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.5,
                        child: const Text(
                          "Andi Mardiman Saputra",
                          style: TextStyle(
                            fontFamily: fontNunito,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Kelas A",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: fontNunito,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "22 Tahun",
                        style: TextStyle(
                          fontFamily: fontNunito,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Tidak Paham",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: fontNunito,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
