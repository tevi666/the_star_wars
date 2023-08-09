class StarshipModel {
  String? name;
  String? model;
  String? manufacturer;
  String? costInCredits;
  String? length;
  String? maxAtmospheringSpeed;
  String? crew;
  String? passengers;
  String? cargoCapacity;
  String? consumables;
  String? hyperdriveRating;
  String? mglt;
  String? starshipClass;
  List<String>? pilots;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  StarshipModel({
    this.name,
    this.model,
    this.manufacturer,
    this.costInCredits,
    this.length,
    this.maxAtmospheringSpeed,
    this.crew,
    this.passengers,
    this.cargoCapacity,
    this.consumables,
    this.hyperdriveRating,
    this.mglt,
    this.starshipClass,
    this.pilots,
    this.films,
    this.created,
    this.edited,
    this.url,
  });

  StarshipModel copyWith({
    String? name,
    String? model,
    String? manufacturer,
    String? costInCredits,
    String? length,
    String? maxAtmospheringSpeed,
    String? crew,
    String? passengers,
    String? cargoCapacity,
    String? consumables,
    String? hyperdriveRating,
    String? mglt,
    String? starshipClass,
    List<String>? pilots,
    List<String>? films,
    String? created,
    String? edited,
    String? url,
  }) =>
      StarshipModel(
        name: name ?? this.name,
        model: model ?? this.model,
        manufacturer: manufacturer ?? this.manufacturer,
        costInCredits: costInCredits ?? this.costInCredits,
        length: length ?? this.length,
        maxAtmospheringSpeed: maxAtmospheringSpeed ?? this.maxAtmospheringSpeed,
        crew: crew ?? this.crew,
        passengers: passengers ?? this.passengers,
        cargoCapacity: cargoCapacity ?? this.cargoCapacity,
        consumables: consumables ?? this.consumables,
        hyperdriveRating: hyperdriveRating ?? this.hyperdriveRating,
        mglt: mglt ?? this.mglt,
        starshipClass: starshipClass ?? this.starshipClass,
        pilots: pilots ?? this.pilots,
        films: films ?? this.films,
        created: created ?? this.created,
        edited: edited ?? this.edited,
        url: url ?? this.url,
      );

  factory StarshipModel.fromMap(Map<String, dynamic> json) => StarshipModel(
        name: json["name"] ?? '',
        model: json["model"] ?? '',
        manufacturer: json["manufacturer"]  ?? '',
        costInCredits: json["cost_in_credits"]  ?? '',
        length: json["length"] ?? '',
        maxAtmospheringSpeed: json["max_atmosphering_speed"] ?? '',
        crew: json["crew"] ?? '',
        passengers: json["passengers"] ?? '',
        cargoCapacity: json["cargo_capacity"] ?? '',
        consumables: json["consumables"] ?? '',
        hyperdriveRating: json["hyperdrive_rating"] ?? '',
        mglt: json["MGLT"] ?? '',
        starshipClass: json["starship_class"] ?? '',
        pilots: json["pilots"] == null
            ? []
            : List<String>.from(json["pilots"]!.map((x) => x)),
        films: json["films"] == null
            ? []
            : List<String>.from(json["films"]!.map((x) => x)),
        created: json["created"]  ?? '',
        edited: json["edited"]  ?? '',
        url: json["url"]  ?? '',
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "model": model,
        "manufacturer": manufacturer,
        "cost_in_credits": costInCredits,
        "length": length,
        "max_atmosphering_speed": maxAtmospheringSpeed,
        "crew": crew,
        "passengers": passengers,
        "cargo_capacity": cargoCapacity,
        "consumables": consumables,
        "hyperdrive_rating": hyperdriveRating,
        "MGLT": mglt,
        "starship_class": starshipClass,
        "pilots":
            pilots == null ? [] : List<dynamic>.from(pilots!.map((x) => x)),
        "films": films == null ? [] : List<dynamic>.from(films!.map((x) => x)),
        "created": created,
        "edited": edited,
        "url": url,
      };
}
