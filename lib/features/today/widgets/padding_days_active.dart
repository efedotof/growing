import 'package:flutter/material.dart';

class PaddingDaysActive extends StatelessWidget {
  const PaddingDaysActive({super.key,
    required this.scrollController
  });

  final ScrollController scrollController;


  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                 height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width ,
                child: Expanded(
                  child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 365,
                      itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.14,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF484847),
                                
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text((index + 1).toString(), style: const TextStyle(color:  Color(0xFF696969)),),
                                    const Icon(Icons.cloud_outlined, color:  Color(0xFF696969),)
                                  ],
                                ),
                              )
                            ),
                            
                          );
                        },
                    
                      controller: scrollController,
                    ),
                       
                ),
              ),
            );
  }
}