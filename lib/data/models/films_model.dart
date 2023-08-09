class FilmsModel {
  String? title;
  int? episodeId;
  String? openingCrawl;
  String? director;
  String? producer;
  DateTime? releaseDate;
  List<String>? characters;
  List<String>? planets;
  List<String>? starships;
  List<String>? vehicles;
  List<String>? species;
  String? created;
  String? edited;
  String? url;

  FilmsModel({
    this.title,
    this.episodeId,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.characters,
    this.planets,
    this.starships,
    this.vehicles,
    this.species,
    this.created,
    this.edited,
    this.url,
  });

  FilmsModel copyWith({
    String? title,
    int? episodeId,
    String? openingCrawl,
    String? director,
    String? producer,
    DateTime? releaseDate,
    List<String>? characters,
    List<String>? planets,
    List<String>? starships,
    List<String>? vehicles,
    List<String>? species,
    String? created,
    String? edited,
    String? url,
  }) =>
      FilmsModel(
        title: title ?? this.title,
        episodeId: episodeId ?? this.episodeId,
        openingCrawl: openingCrawl ?? this.openingCrawl,
        director: director ?? this.director,
        producer: producer ?? this.producer,
        releaseDate: releaseDate ?? this.releaseDate,
        characters: characters ?? this.characters,
        planets: planets ?? this.planets,
        starships: starships ?? this.starships,
        vehicles: vehicles ?? this.vehicles,
        species: species ?? this.species,
        created: created ?? this.created,
        edited: edited ?? this.edited,
        url: url ?? this.url,
      );

  factory FilmsModel.fromMap(Map<String, dynamic> json) => FilmsModel(
        title: json["title"],
        episodeId: json["episode_id"],
        openingCrawl: json["opening_crawl"],
        director: json["director"],
        producer: json["producer"],
        releaseDate: json["release_date"] == null
            ? null
            : DateTime.parse(json["release_date"]),
        characters: json["characters"] == null
            ? []
            : List<String>.from(json["characters"]!.map((x) => x)),
        planets: json["planets"] == null
            ? []
            : List<String>.from(json["planets"]!.map((x) => x)),
        starships: json["starships"] == null
            ? []
            : List<String>.from(json["starships"]!.map((x) => x)),
        vehicles: json["vehicles"] == null
            ? []
            : List<String>.from(json["vehicles"]!.map((x) => x)),
        species: json["species"] == null
            ? []
            : List<String>.from(json["species"]!.map((x) => x)),
        created: json["created"],
        edited: json["edited"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "episode_id": episodeId,
        "opening_crawl": openingCrawl,
        "director": director,
        "producer": producer,
        "release_date":
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "characters": characters == null
            ? []
            : List<dynamic>.from(characters!.map((x) => x)),
        "planets":
            planets == null ? [] : List<dynamic>.from(planets!.map((x) => x)),
        "starships": starships == null
            ? []
            : List<dynamic>.from(starships!.map((x) => x)),
        "vehicles":
            vehicles == null ? [] : List<dynamic>.from(vehicles!.map((x) => x)),
        "species":
            species == null ? [] : List<dynamic>.from(species!.map((x) => x)),
        "created": created,
        "edited": edited,
        "url": url,
      };
}
