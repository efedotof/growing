import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Model/model.dart';


class ShowBottomBars {
  String name;
  TextEditingController controller;
  String hint;

  ShowBottomBars({required this.name, required this.controller, required this.hint});

  void showBottomModal(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled:true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding:const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              name == 'Gender'?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<UserModel>().setGender('Man');
                      controller.text = 'Man';
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                  
                        ),
                        
                      ),
                      alignment: Alignment.center,
                      child: const Text('Man'),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      context.read<UserModel>().setGender('Woman');
                      controller.text = 'Woman';
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        
                      ),
                      alignment: Alignment.center,
                      child: const Text('Woman'),
                    ),
                  )
                ],
              )
              
              :TextField(
                onEditingComplete:(){
                  switch(name){
                          case 'Name':
                            context.read<UserModel>().setName(controller.text);
                          case 'Age':
                            context.read<UserModel>().setAge(controller.text);
                          case 'Height':
                            context.read<UserModel>().setHeigth(controller.text);
                          case 'Weight':
                            context.read<UserModel>().setWeigth(controller.text);
                        };
                  Navigator.pop(context);
                },
                controller: controller,
                decoration: InputDecoration(
                  labelText: name,
                  hintText: hint,
                ),
              ),
              const SizedBox(height: 16.0),
              name == 'Gender'?Container():Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    switch(name){
                          case 'Name':
                            context.read<UserModel>().setName(controller.text);
                          case 'Age':
                            context.read<UserModel>().setAge(controller.text);
                      
                          case 'Height':
                            context.read<UserModel>().setHeigth(controller.text);
                          case 'Weight':
                            context.read<UserModel>().setWeigth(controller.text);
                        };
                    
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.black, // цвет фона
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white, // цвет текста
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
