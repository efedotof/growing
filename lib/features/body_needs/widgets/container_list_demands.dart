import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Model/model.dart';

class ContainerListDemands extends StatefulWidget {
  const ContainerListDemands({super.key});

  @override
  State<ContainerListDemands> createState() => _ContainerListDemandsState();
}

class _ContainerListDemandsState extends State<ContainerListDemands> {
  @override
  Widget build(BuildContext context) {
    var appFile = context.watch<ApplicationFile>();
    var userModal = context.watch<UserModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xFFFFFFFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.directions_run, color: Colors.black,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('BMR', style: const TextStyle(color: Colors.black, fontSize: 26),),
                  ],
                ),
                Text('${userModal.bmr} kcal/day', style: const TextStyle(color: Colors.black),)
              ],
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: appFile.bodyneedsScreenData.map((categoryData) {
                int index = appFile.bodyneedsScreenData.indexOf(categoryData);
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        categoryData['category'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.004,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (categoryData['items'] as List<String>).map((item) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.003),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: categoryData['category'] == 'Activity level' ? const Color(0xFFFEB3EF) : const Color(0xFF9DDEF2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(item, style: const TextStyle(color: Colors.black)),
                                  Text(userModal.getbmr(item), style: const TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          );
                        }).toList(),

                      ),
                    ],
                  ),
                );
              }).toList())
        ],
      ),
    );
  }
}
