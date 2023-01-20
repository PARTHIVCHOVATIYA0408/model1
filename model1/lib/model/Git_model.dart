class Gitmodel {
  final int? id;
  final String? name;
  final String? air_data;
  final String? episode;
  // final List? characters;
  final String? url;
  final String? created;

  Gitmodel({
    this.id,
    this.name,
    this.air_data,
    this.episode,
    // this.characters,
    this.url,
    this.created,
  });
  factory Gitmodel.fromJson(Map<String, dynamic> json) {
    return Gitmodel(
      id: json['id'],
      name: json['name'],
      air_data: json['air_data'],
      episode: json['episode'],
    );
  }
}
