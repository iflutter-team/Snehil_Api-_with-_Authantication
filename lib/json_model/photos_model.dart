// To parse this JSON data, do
//
//     final imageUrl = imageUrlFromJson(jsonString);

import 'dart:convert';

List<ImageUrl> imageUrlFromJson(String str) => List<ImageUrl>.from(json.decode(str).map((x) => ImageUrl.fromJson(x)));

String imageUrlToJson(List<ImageUrl> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageUrl {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  ImageUrl({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory ImageUrl.fromJson(Map<String, dynamic> json) => ImageUrl(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
