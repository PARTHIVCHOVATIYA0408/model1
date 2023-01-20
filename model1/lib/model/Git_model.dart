class GitModel {
  final ModelData? modelData;

  GitModel({
    this.modelData,
  });
  factory GitModel.fromJson(Map<String, dynamic> json) {
    return GitModel(
      modelData: ModelData.fromJson(json['model']),
    );
  }
}

class ModelData {
  final int? id;
  final String? name;
  final String? air_data;
  final String? episode;
  // final List? characters;
  final String? url;
  final String? created;

  ModelData({
    this.id,
    this.name,
    this.air_data,
    this.episode,
    // this.characters,
    this.url,
    this.created,
  });
  factory ModelData.fromJson(Map<String, dynamic> json) {
    return ModelData(
      id: json['id'],
      name: json['name'],
      air_data: json['air_data'],
      episode: json['episode'],
    );
  }
}
