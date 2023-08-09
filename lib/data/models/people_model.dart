class PeopleModel {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<String>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  PeopleModel({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeworld,
    this.films,
    this.species,
    this.vehicles,
    this.starships,
    this.created,
    this.edited,
    this.url,
  });

  PeopleModel copyWith({
    String? name,
    String? height,
    String? mass,
    String? hairColor,
    String? skinColor,
    String? eyeColor,
    String? birthYear,
    String? gender,
    String? homeworld,
    List<String>? films,
    List<String>? species,
    List<String>? vehicles,
    List<String>? starships,
    String? created,
    String? edited,
    String? url,
  }) =>
      PeopleModel(
        name: name ?? this.name,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        hairColor: hairColor ?? this.hairColor,
        skinColor: skinColor ?? this.skinColor,
        eyeColor: eyeColor ?? this.eyeColor,
        birthYear: birthYear ?? this.birthYear,
        gender: gender ?? this.gender,
        homeworld: homeworld ?? this.homeworld,
        films: films ?? this.films,
        species: species ?? this.species,
        vehicles: vehicles ?? this.vehicles,
        starships: starships ?? this.starships,
        created: created ?? this.created,
        edited: edited ?? this.edited,
        url: url ?? this.url,
      );

  factory PeopleModel.fromMap(Map<String, dynamic> json) => PeopleModel(
        name: json["name"] ?? '',
        height: json["height"] ?? '',
        mass: json["mass"] ?? '',
        hairColor: json["hair_color"] ?? '',
        skinColor: json["skin_color"] ?? '',
        eyeColor: json["eye_color"] ?? '',
        birthYear: json["birth_year"] ?? '',
        gender: json["gender"] ?? '',
        homeworld: json["homeworld"] ?? '',
        films: json["films"] == null
            ? []
            : List<String>.from(json["films"]!.map((x) => x)),
        species: json["species"] == null
            ? []
            : List<String>.from(json["species"]!.map((x) => x)),
        vehicles: json["vehicles"] == null
            ? []
            : List<String>.from(json["vehicles"]!.map((x) => x)),
        starships: json["starships"] == null
            ? []
            : List<String>.from(json["starships"]!.map((x) => x)),
        created: json["created"] ?? '',
        edited: json["edited"] ?? '',
        url: json["url"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "height": height,
        "mass": mass,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "eye_color": eyeColor,
        "birth_year": birthYear,
        "gender": gender,
        "homeworld": homeworld,
        "films": films == null ? [] : List<dynamic>.from(films!.map((x) => x)),
        "species":
            species == null ? [] : List<dynamic>.from(species!.map((x) => x)),
        "vehicles":
            vehicles == null ? [] : List<dynamic>.from(vehicles!.map((x) => x)),
        "starships": starships == null
            ? []
            : List<dynamic>.from(starships!.map((x) => x)),
        "created": created,
        "edited": edited,
        "url": url,
      };
}
