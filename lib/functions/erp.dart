import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class erp {
  erplauncher() async {
    Uri url = Uri.parse(
        'https://www.bing.com/ck/a?!&&p=de62e88beb2af036e206a699c29d3f7f2b4ed29292182e7a95a7df6ebceff299JmltdHM9MTY1NTAxNDE4NyZpZ3VpZD1lODg0NDYzZS1kMGViLTQzNWUtYTliYi00Yjc2MzRkMTRmZDAmaW5zaWQ9NTE2NQ&ptn=3&fclid=42ca237f-ea16-11ec-adb1-71608ad9e5f1&u=a1aHR0cHM6Ly9lcnAuYml0bWVzcmEuYWMuaW4v&ntb=1/');
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
