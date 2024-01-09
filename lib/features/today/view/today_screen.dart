import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:growing/Model/model.dart';
import 'package:provider/provider.dart';
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


  Future<void> _handleRefresh(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    context.read<UserModel>().setWitchdrawal();
  }
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      body: RefreshIndicator(
          onRefresh: () => _handleRefresh(context),
        child: SingleChildScrollView(
          
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                PaddingDaysActive(scrollController:_scrollController),
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                const ImageSvg(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const TextInterestwithdrawal(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const TextCompleteTasks(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const ContainerChange(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        ),
      )
    );
  }
}