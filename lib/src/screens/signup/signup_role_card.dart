import 'package:flutter/material.dart';
import 'package:vena_store/src/components/awesome_text_field.dart';
import 'package:vena_store/src/components/slider_tab.dart';
import 'package:vena_store/src/types/types.dart';

class RoldeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                'VAI TRÒ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ),
          SliderTab(
            tabBuilder: buildTab,
            tabLabels: tabLabels,
            tabViews: tabViews,
            tabColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}

final List<String> tabLabels = <String>['Cửa hàng', 'Admin'];

Widget buildTab<LabelWidgetBuilder>(
    String label, int index, int activeIndex, IndexCallback callback) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: InkWell(
          onTap: () {
            callback(index);
          },
          child: Container(
            decoration: BoxDecoration(
              color: index == activeIndex ? Colors.red : Colors.white,
              border: new Border.all(color: Colors.red, width: 2.0),
              borderRadius: new BorderRadius.circular(24.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: index == activeIndex ? Colors.white : Colors.red),
            ),
          ),
        ),
      ));
}

final List<Widget> tabViews = <Widget>[
  Column(
    children: [
      SizedBox(
        height: 2,
      ),
      AwesomeTextField(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        labelText: 'Tên cửa hàng',
        textSize: 18,
        textPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      AwesomeTextField(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        labelText: 'Mô tả',
        textSize: 18,
        textPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      AwesomeTextField(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        labelText: 'Ảnh',
        textSize: 18,
        textPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    ],
  ),
  Column(
    children: [
      SizedBox(
        height: 2,
      ),
      AwesomeTextField(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        labelText: 'Token',
        textSize: 18,
        textPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    ],
  ),
];
