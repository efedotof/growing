import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Model/model.dart';


class ShowBottomBars {
  String name;
  String hint;
  
  ShowBottomBars({required this.name, required this.hint});

  void showBottomModal(BuildContext context) {
    double keyboardHeight = 0.0;
    int selectedIndex = -1;
    List<bool> isSelectedList = List.filled(10, false);
    List<bool> isSelectedListProductivity = List.filled(24, false);
    showModalBottomSheet(
      isScrollControlled:true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          reverse: true,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + keyboardHeight,
            ),
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Container(
                width: MediaQuery.of(context).size.height * 0.6,
                padding:const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     GestureDetector(
                      onTap: () => Navigator.pop(context),
                       child: Text(
                        "Back",
                        style: const TextStyle(
                          color: Color(0xFFC5C6C7),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Change",
                      style: const TextStyle(
                        color: Colors.transparent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                    const SizedBox(height: 16.0),
                    name == 'Water'? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(100, (index) {
                          int value = (index + 1) * 100; // Calculate the value in increments of 100
                          bool isSelected = selectedIndex == index;
                      
                          return GestureDetector(
                            onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });  
                                context.read<UserModel>().setWater('${value}ml' );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.004),
                              child: AnimatedContainer(
                                duration: const Duration(microseconds: 500),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: isSelected ? Colors.white : Colors.black,
                                    width: 2,
                                  ),
                                  color: isSelected ? Colors.black : null,
                                ),
                                
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$value',
                                        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                                      ),
                                      Text(
                                        'ml',
                                        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ):Container(),
                    name == 'Personal care'?Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: SingleChildScrollView(
                          child: Column(
                            children: context.watch<ApplicationFile>().personalHygieneItems.map((categoryData) {
                              int index = context.watch<ApplicationFile>().personalHygieneItems.indexOf(categoryData);
                              return Card(
                                margin: const EdgeInsets.all(8.0),
                                color: isSelectedList[index] ? Colors.black : Colors.white, 
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelectedList[index] = !isSelectedList[index];
                                      context.read<UserModel>().setPersonalCare(categoryData['category']);
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          categoryData['category'],
                                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: isSelectedList[index] ? Colors.white : Colors.black), // Цвет шрифта
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          children: (categoryData['items'] as List<String>).map((item) {
                                            return ListTile(
                                              title: Text(
                                                item,
                                                style: TextStyle(color: isSelectedList[index] ? Colors.white : Colors.black), // Цвет шрифта
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ): Container(),
                    name == 'Steps'?SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(100, (index) {
                          int value = (index + 1) * 1000; 
                          bool isSelected = selectedIndex == index;
                      
                          return GestureDetector(
                            onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });  
                                context.read<UserModel>().setSteps('${value} steps' );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.004),
                              child: AnimatedContainer(
                                duration: const Duration(microseconds: 500),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: isSelected ? Colors.white : Colors.black,
                                    width: 2,
                                  ),
                                  color: isSelected ? Colors.black : null,
                                ),
                                
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$value',
                                        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                                      ),
                                      Text(
                                        'Steps',
                                        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ) :Container(),              
                    name == 'Productivity'?Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: SingleChildScrollView(
                        child: Column(
                          children: context.watch<ApplicationFile>().productivityData.map((categoryData) {
                            int index = context.watch<ApplicationFile>().productivityData.indexOf(categoryData);
              
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Card(
                                
                                margin: EdgeInsets.all(8.0),
                                color: isSelectedListProductivity[index] ? Colors.black : Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelectedListProductivity[index] = !isSelectedListProductivity[index];
                                      context.read<UserModel>().setProductivity(categoryData['aspect']); 
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          categoryData['aspect'],
                                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: isSelectedListProductivity[index] ? Colors.white : Colors.black),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                  categoryData['description'],
                                                  style: TextStyle(color: isSelectedListProductivity[index] ? Colors.white : Colors.black),
                                                ),
                                            ),
                                          ]
                            
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ):Container(),
              
                    const SizedBox(height: 50.0),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.black, 
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, 
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                        ),
              );
          
              }),
        );
      },
    );
  }
}
