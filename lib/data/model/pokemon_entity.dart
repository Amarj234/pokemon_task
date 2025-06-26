import 'package:json_annotation/json_annotation.dart';

part 'pokemon_entity.g.dart';

@JsonSerializable()
class PokemonEntity {
  List<PokemonDataEntity?>? data;
  int? page;
  int? pageSize;
  int? count;
  int? totalCount;

  PokemonEntity(
    this.data,
    this.page,
    this.pageSize,
    this.count,
    this.totalCount,
  );

  factory PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonEntityToJson(this);
}

@JsonSerializable()
class PokemonDataEntity {
  String? id;
  String? name;
  String? supertype;
  List<String?>? subtypes;
  String? level;
  String? hp;
  List<String?>? types;
  String? evolvesFrom;
  List<PokemonDataAbilitiesEntity?>? abilities;
  List<PokemonDataAttacksEntity?>? attacks;
  List<PokemonDataWeaknessesEntity?>? weaknesses;
  List<PokemonDataResistancesEntity?>? resistances;
  List<String?>? retreatCost;
  int? convertedRetreatCost;
  PokemonDataSetEntity? set;
  String? number;
  String? artist;
  String? rarity;
  String? flavorText;
  List<int?>? nationalPokedexNumbers;
  PokemonDataLegalitiesEntity? legalities;
  PokemonDataImagesEntity? images;
  PokemonDataTcgplayerEntity? tcgplayer;
  PokemonDataCardmarketEntity? cardmarket;

  PokemonDataEntity(
    this.id,
    this.name,
    this.supertype,
    this.subtypes,
    this.level,
    this.hp,
    this.types,
    this.evolvesFrom,
    this.abilities,
    this.attacks,
    this.weaknesses,
    this.resistances,
    this.retreatCost,
    this.convertedRetreatCost,
    this.set,
    this.number,
    this.artist,
    this.rarity,
    this.flavorText,
    this.nationalPokedexNumbers,
    this.legalities,
    this.images,
    this.tcgplayer,
    this.cardmarket,
  );

  factory PokemonDataEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataEntityToJson(this);
}

@JsonSerializable()
class PokemonDataAbilitiesEntity {
  String? name;
  String? text;
  String? type;

  PokemonDataAbilitiesEntity(this.name, this.text, this.type);

  factory PokemonDataAbilitiesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataAbilitiesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataAbilitiesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataAttacksEntity {
  String? name;
  List<String?>? cost;
  int? convertedEnergyCost;
  String? damage;
  String? text;

  PokemonDataAttacksEntity(
    this.name,
    this.cost,
    this.convertedEnergyCost,
    this.damage,
    this.text,
  );

  factory PokemonDataAttacksEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataAttacksEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataAttacksEntityToJson(this);
}

@JsonSerializable()
class PokemonDataWeaknessesEntity {
  String? type;
  String? value;

  PokemonDataWeaknessesEntity(this.type, this.value);

  factory PokemonDataWeaknessesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataWeaknessesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataWeaknessesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataResistancesEntity {
  String? type;
  String? value;

  PokemonDataResistancesEntity(this.type, this.value);

  factory PokemonDataResistancesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataResistancesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataResistancesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataSetEntity {
  String? id;
  String? name;
  String? series;
  int? printedTotal;
  int? total;
  PokemonDataSetLegalitiesEntity? legalities;
  String? ptcgoCode;
  String? releaseDate;
  String? updatedAt;
  PokemonDataSetImagesEntity? images;

  PokemonDataSetEntity(
    this.id,
    this.name,
    this.series,
    this.printedTotal,
    this.total,
    this.legalities,
    this.ptcgoCode,
    this.releaseDate,
    this.updatedAt,
    this.images,
  );

  factory PokemonDataSetEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataSetEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataSetEntityToJson(this);
}

@JsonSerializable()
class PokemonDataSetLegalitiesEntity {
  String? unlimited;

  PokemonDataSetLegalitiesEntity(this.unlimited);

  factory PokemonDataSetLegalitiesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataSetLegalitiesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataSetLegalitiesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataSetImagesEntity {
  String? symbol;
  String? logo;

  PokemonDataSetImagesEntity(this.symbol, this.logo);

  factory PokemonDataSetImagesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataSetImagesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataSetImagesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataLegalitiesEntity {
  String? unlimited;

  PokemonDataLegalitiesEntity(this.unlimited);

  factory PokemonDataLegalitiesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataLegalitiesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataLegalitiesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataImagesEntity {
  String? small;
  String? large;

  PokemonDataImagesEntity(this.small, this.large);

  factory PokemonDataImagesEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataImagesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataImagesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataTcgplayerEntity {
  String? url;
  String? updatedAt;
  PokemonDataTcgplayerPricesEntity? prices;

  PokemonDataTcgplayerEntity(this.url, this.updatedAt, this.prices);

  factory PokemonDataTcgplayerEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataTcgplayerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataTcgplayerEntityToJson(this);
}

@JsonSerializable()
class PokemonDataTcgplayerPricesEntity {
  PokemonDataTcgplayerPricesHolofoilEntity? holofoil;
  PokemonDataTcgplayerPricesReverseHolofoilEntity? reverseHolofoil;

  PokemonDataTcgplayerPricesEntity(this.holofoil, this.reverseHolofoil);

  factory PokemonDataTcgplayerPricesEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$PokemonDataTcgplayerPricesEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PokemonDataTcgplayerPricesEntityToJson(this);
}

@JsonSerializable()
class PokemonDataTcgplayerPricesHolofoilEntity {
  double? low;
  double? mid;
  double? high;
  double? market;
  double? directLow;

  PokemonDataTcgplayerPricesHolofoilEntity(
    this.low,
    this.mid,
    this.high,
    this.market,
    this.directLow,
  );

  factory PokemonDataTcgplayerPricesHolofoilEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$PokemonDataTcgplayerPricesHolofoilEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PokemonDataTcgplayerPricesHolofoilEntityToJson(this);
}

@JsonSerializable()
class PokemonDataTcgplayerPricesReverseHolofoilEntity {
  double? low;
  double? mid;
  double? high;
  double? market;
  double? directLow;

  PokemonDataTcgplayerPricesReverseHolofoilEntity(
    this.low,
    this.mid,
    this.high,
    this.market,
    this.directLow,
  );

  factory PokemonDataTcgplayerPricesReverseHolofoilEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$PokemonDataTcgplayerPricesReverseHolofoilEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PokemonDataTcgplayerPricesReverseHolofoilEntityToJson(this);
}

@JsonSerializable()
class PokemonDataCardmarketEntity {
  String? url;
  String? updatedAt;
  PokemonDataCardmarketPricesEntity? prices;

  PokemonDataCardmarketEntity(this.url, this.updatedAt, this.prices);

  factory PokemonDataCardmarketEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataCardmarketEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDataCardmarketEntityToJson(this);
}

@JsonSerializable()
class PokemonDataCardmarketPricesEntity {
  double? averageSellPrice;
  double? lowPrice;
  double? trendPrice;
  double? germanProLow;
  double? suggestedPrice;
  double? reverseHoloSell;
  double? reverseHoloLow;
  double? reverseHoloTrend;
  double? lowPriceExPlus;
  double? avg1;
  double? avg7;
  double? avg30;
  double? reverseHoloAvg1;
  double? reverseHoloAvg7;
  double? reverseHoloAvg30;

  PokemonDataCardmarketPricesEntity(
    this.averageSellPrice,
    this.lowPrice,
    this.trendPrice,
    this.germanProLow,
    this.suggestedPrice,
    this.reverseHoloSell,
    this.reverseHoloLow,
    this.reverseHoloTrend,
    this.lowPriceExPlus,
    this.avg1,
    this.avg7,
    this.avg30,
    this.reverseHoloAvg1,
    this.reverseHoloAvg7,
    this.reverseHoloAvg30,
  );

  factory PokemonDataCardmarketPricesEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$PokemonDataCardmarketPricesEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PokemonDataCardmarketPricesEntityToJson(this);
}
