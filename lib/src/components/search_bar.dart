import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kMinInteractiveDimension);

  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4.0),
        child: TextField(
          style: TextStyle(color: Colors.grey.shade800),
          decoration: InputDecoration(
            hintText: 'Tài khoản',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.grey.shade200,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
          ),
        ),
      ),
      titleSpacing: 0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.qr_code,
            color: Colors.grey.shade600,
            size: 40,
          ),
          onPressed: () => onScan(context),
          tooltip: 'Tìm kiếm QR',
          padding: EdgeInsets.zero,
        )
      ],
    );
  }

  Future<void> onScan(context) async {
    String cameraScanResult = await scanner.scan();
    if (cameraScanResult == null) return;
    print(cameraScanResult);
    AlertDialog alert = AlertDialog(
      title: Text('OK'),
      content: Text(cameraScanResult),
    );
    showDialog(
      context: context,
      builder: (context) => alert,
    );
  }
}
