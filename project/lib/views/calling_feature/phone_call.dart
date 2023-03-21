import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:project/viewmodel/phone_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone_Call extends StatelessWidget {
  const Phone_Call({super.key});

  @override
  Widget build(BuildContext context) {
     return ViewModelBuilder<PhoneViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => PhoneViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton (
            onPressed: ()async{
              FlutterPhoneDirectCaller.callNumber('+92 520182671');
              final Uri url = Uri(
                scheme: "tel",
                path: "+92 520182671"
               );
               if (await canLaunchUrl(url)) {
                 await launchUrl(url);
               } 
               else {
                 print("can not launch this url");
               }
     },
             child: const Text("Helpline number")
             )
             ),
        ),
        );
  }
}