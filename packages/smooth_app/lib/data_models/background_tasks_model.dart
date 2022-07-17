class BackgroundTaskModel {
  BackgroundTaskModel({
    required this.backgroundTaskId,
    required this.backgroundTaskName,
    required this.backgroundTaskDescription,
    required this.barcode,
    required this.dateTime,
    required this.status,
  });
  BackgroundTaskModel.fromJson(Map<String, dynamic> json)
      : backgroundTaskId = json['backgroundTaskId'] as String,
        backgroundTaskName = json['backgroundTaskName'] as String,
        backgroundTaskDescription = json['backgroundTaskDescription'] as String,
        barcode = json['barcode'] as String,
        dateTime = DateTime.parse(
          json['dateTime'] as String,
        ),
        status = json['status'] as String;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'backgroundTaskId': backgroundTaskId,
        'backgroundTaskName': backgroundTaskName,
        'backgroundTaskDescription': backgroundTaskDescription,
        'barcode': barcode,
        'dateTime': dateTime.toString(),
        'status': status,
      };

  final String backgroundTaskId;
  final String backgroundTaskName;
  final String backgroundTaskDescription;
  final String barcode;
  final DateTime dateTime;
  final String status;
}
