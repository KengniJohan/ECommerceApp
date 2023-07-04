import 'dart:convert';

List<AdBanner> adBannerListFromJson(String value) => List<AdBanner>.from(
  json.decode(value)['data'].map((banner) => AdBanner.formJson(banner))
);

class AdBanner {
  final int id;
  final String image;

  AdBanner({
    required this.id,
    required this.image
  });

  factory AdBanner.formJson(Map<String, dynamic> data) => AdBanner(
    id: data['id'],
    image: data['attributes']['image']['data']['attributes']['url']
  );
}