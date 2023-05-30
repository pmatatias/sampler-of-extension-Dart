/// Describe timestamp
/// Example dart extension #6
/// Inspired from example on Google IO 2023
/// Updated by pmatatias
/// follow me on twitter: @pmataias_
/// connet with me on Linkedind: /in/pmatatias


import 'package:intl/intl.dart';
void main() {
  final timestamp = DateTime(2023, 5, 22, 16, 23, 32);
  final timestamp2 = DateTime(2023, 6, 22, 16, 23, 32);
  final timestamp3 = DateTime(2023, 5, 30, 16, 23, 32);
  final timestamp4 = DateTime(2023, 5, 30, 23, 23, 32);
  
  final timenow =  DateFormat.yMd().add_jm().format(DateTime.now())  ;
  
  print("Current Time: $timenow \n");
  print(timestamp.getDifferences());
  print(timestamp2.getDifferences());
  print(timestamp3.getDifferences());
  print(timestamp4.getDifferences());

  
}

extension DescribeTimeDiff on DateTime {
  String getDifferences() {
    final now = DateTime.now();
    final diff = difference(DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second));
    String a = diff.inHours.abs() > 23
        ? dayHandler(diff)
        : diff.inHours.abs() < 24 && diff.inMinutes.abs() > 59
            ? hrsHandler(diff.inHours)
            : minsHandler(diff.inMinutes);
    return a;
  }
}

String dayHandler(Duration day) {
  String result = "";
  switch (day) {
    case Duration(inDays: -1):
      result = "Yesterday";

    case Duration(inDays: 1):
      result = "Tomorrow";

    case Duration(inDays: 0):
      result = "Today";
    case Duration(inDays: int d, isNegative: true):
      result = "${d.abs()} days ago";

    case Duration(inDays: int d, isNegative: false):
      result = "$d days from now";
  }
  return result;
}

String minsHandler(int min) {
  return min.isNegative ? "${min.abs()} minutes ago" : "$min minutes from now";
}

String hrsHandler(int hrs) {
  return hrs.isNegative ? "${hrs.abs()} hours ago" : "$hrs hours from now";
}
