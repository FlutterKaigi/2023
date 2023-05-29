class StaffItem {
  final String id;
  final String displayName;
  final String twitter;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic image;

  StaffItem.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        displayName = json['displayName'],
        twitter = json['twitter'],
        createdAt = DateTime.parse(json['createdAt']),
        updatedAt = DateTime.parse(json['updatedAt']),
        image = json['image'];
}
