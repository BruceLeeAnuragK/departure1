class PostModal {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostModal({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModal.fromMap({required Map data}) {
    return PostModal(
        userId: data["userId"],
        id: data["id"],
        title: data["title"],
        body: data["body"]);
  }
}
