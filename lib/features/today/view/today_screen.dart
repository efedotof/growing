import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';

@RoutePage()
class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {

  ScrollController _scrollController = ScrollController();


  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
    });
  }

  

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              PaddingDaysActive(scrollController:_scrollController),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.25,
                child: const   ImageSvg(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const TextInterestwithdrawal(witchdrawal: 1,),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const TextCompleteTasks(),
              Center(
                child: TextButton(onPressed: (){}, child: const Text('Change', style:  TextStyle(color:  Color(0xFF555555), fontSize: 22),)),
              ),
              Wrap(
                children: List.generate(10, (index) => const ContainerChange())
              )
            ],
          ),
        ),
      )
    );
  }
}