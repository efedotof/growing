import 'package:flutter/material.dart';
import 'package:growing/Model/application_files.dart';
import 'package:provider/provider.dart';

class ElementDisplayData extends StatelessWidget {
  const ElementDisplayData({super.key});

  @override
  Widget build(BuildContext context) {
    var appFile = context.watch<ApplicationFile>();
    return Column(
      children: List.generate(
          appFile.namesGrow.length,
          (index) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.002),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: appFile.colorsGrow[index],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        appFile.namesGrow[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        appFile.itemsGrow[index].toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
