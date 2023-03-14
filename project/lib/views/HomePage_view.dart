import 'package:flutter/material.dart';
import 'package:project/viewmodel/HomePage_viewmodel.dart';
import 'package:project/views/Map/order_tracking_view.dart';
import 'package:project/views/drawer_view.dart';
import 'package:stacked/stacked.dart';

class HomePage_view extends StatelessWidget {
  const HomePage_view({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyDrawer()));
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 47,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => Order_tracking())
                   );
                },
                 child: Text(viewModel.title)
                 ),
              const SizedBox(
                height: 37,
              ),
              ElevatedButton(
                onPressed: () {
                     Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => Order_tracking())
                   );
                },
                 child: Text(viewModel.title1)
                 ),
              const SizedBox(
                height: 37,
              ),
              ElevatedButton(
                onPressed: () {
                     Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => Order_tracking())
                   );
                }, 
                child: Text(viewModel.title2)
                ),
            ],
          ),
        ),
      ),
    );
  }
}
