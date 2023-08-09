class PlanetModel {
  String? name;
  String? rotationPeriod;
  String? orbitalPeriod;
  String? diameter;
  String? climate;
  String? gravity;
  String? terrain;
  String? surfaceWater;
  String? population;
  List<String>? residents;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  PlanetModel({
    this.name,
    this.rotationPeriod,
    this.orbitalPeriod,
    this.diameter,
    this.climate,
    this.gravity,
    this.terrain,
    this.surfaceWater,
    this.population,
    this.residents,
    this.films,
    this.created,
    this.edited,
    this.url,
  });

  PlanetModel copyWith({
    String? name,
    String? rotationPeriod,
    String? orbitalPeriod,
    String? diameter,
    String? climate,
    String? gravity,
    String? terrain,
    String? surfaceWater,
    String? population,
    List<String>? residents,
    List<String>? films,
    String? created,
    String? edited,
    String? url,
  }) =>
      PlanetModel(
        name: name ?? this.name,
        rotationPeriod: rotationPeriod ?? this.rotationPeriod,
        orbitalPeriod: orbitalPeriod ?? this.orbitalPeriod,
        diameter: diameter ?? this.diameter,
        climate: climate ?? this.climate,
        gravity: gravity ?? this.gravity,
        terrain: terrain ?? this.terrain,
        surfaceWater: surfaceWater ?? this.surfaceWater,
        population: population ?? this.population,
        residents: residents ?? this.residents,
        films: films ?? this.films,
        created: created ?? this.created,
        edited: edited ?? this.edited,
        url: url ?? this.url,
      );

  factory PlanetModel.fromMap(Map<String, dynamic> json) => PlanetModel(
        name: json["name"] ?? '',
        rotationPeriod: json["rotation_period"] ?? '',
        orbitalPeriod: json["orbital_period"] ?? '',
        diameter: json["diameter"] ?? '',
        climate: json["climate"] ?? '',
        gravity: json["gravity"] ?? '',
        terrain: json["terrain"] ?? '',
        surfaceWater: json["surface_water"] ?? '',
        population: json["population"] ?? '',
        residents: json["residents"] == null
            ? []
            : List<String>.from(json["residents"]!.map((x) => x)),
        films: json["films"] == null
            ? []
            : List<String>.from(json["films"]!.map((x) => x)),
        created: json["created"],
        edited: json["edited"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "rotation_period": rotationPeriod,
        "orbital_period": orbitalPeriod,
        "diameter": diameter,
        "climate": climate,
        "gravity": gravity,
        "terrain": terrain,
        "surface_water": surfaceWater,
        "population": population,
        "residents": residents == null
            ? []
            : List<dynamic>.from(residents!.map((x) => x)),
        "films": films == null ? [] : List<dynamic>.from(films!.map((x) => x)),
        "created": created,
        "edited": edited,
        "url": url,
      };
}
