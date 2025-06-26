// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) =>
    PokemonEntity(
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : PokemonDataEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      (json['page'] as num?)?.toInt(),
      (json['pageSize'] as num?)?.toInt(),
      (json['count'] as num?)?.toInt(),
      (json['totalCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonEntityToJson(PokemonEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'count': instance.count,
      'totalCount': instance.totalCount,
    };

PokemonDataEntity _$PokemonDataEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataEntity(
  json['id'] as String?,
  json['name'] as String?,
  json['supertype'] as String?,
  (json['subtypes'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  json['level'] as String?,
  json['hp'] as String?,
  (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  json['evolvesFrom'] as String?,
  (json['abilities'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PokemonDataAbilitiesEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  (json['attacks'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PokemonDataAttacksEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  (json['weaknesses'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PokemonDataWeaknessesEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  (json['resistances'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PokemonDataResistancesEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  (json['retreatCost'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  (json['convertedRetreatCost'] as num?)?.toInt(),
  json['set'] == null
      ? null
      : PokemonDataSetEntity.fromJson(json['set'] as Map<String, dynamic>),
  json['number'] as String?,
  json['artist'] as String?,
  json['rarity'] as String?,
  json['flavorText'] as String?,
  (json['nationalPokedexNumbers'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
  json['legalities'] == null
      ? null
      : PokemonDataLegalitiesEntity.fromJson(
          json['legalities'] as Map<String, dynamic>,
        ),
  json['images'] == null
      ? null
      : PokemonDataImagesEntity.fromJson(
          json['images'] as Map<String, dynamic>,
        ),
  json['tcgplayer'] == null
      ? null
      : PokemonDataTcgplayerEntity.fromJson(
          json['tcgplayer'] as Map<String, dynamic>,
        ),
  json['cardmarket'] == null
      ? null
      : PokemonDataCardmarketEntity.fromJson(
          json['cardmarket'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonDataEntityToJson(PokemonDataEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'supertype': instance.supertype,
      'subtypes': instance.subtypes,
      'level': instance.level,
      'hp': instance.hp,
      'types': instance.types,
      'evolvesFrom': instance.evolvesFrom,
      'abilities': instance.abilities,
      'attacks': instance.attacks,
      'weaknesses': instance.weaknesses,
      'resistances': instance.resistances,
      'retreatCost': instance.retreatCost,
      'convertedRetreatCost': instance.convertedRetreatCost,
      'set': instance.set,
      'number': instance.number,
      'artist': instance.artist,
      'rarity': instance.rarity,
      'flavorText': instance.flavorText,
      'nationalPokedexNumbers': instance.nationalPokedexNumbers,
      'legalities': instance.legalities,
      'images': instance.images,
      'tcgplayer': instance.tcgplayer,
      'cardmarket': instance.cardmarket,
    };

PokemonDataAbilitiesEntity _$PokemonDataAbilitiesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataAbilitiesEntity(
  json['name'] as String?,
  json['text'] as String?,
  json['type'] as String?,
);

Map<String, dynamic> _$PokemonDataAbilitiesEntityToJson(
  PokemonDataAbilitiesEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'text': instance.text,
  'type': instance.type,
};

PokemonDataAttacksEntity _$PokemonDataAttacksEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataAttacksEntity(
  json['name'] as String?,
  (json['cost'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  (json['convertedEnergyCost'] as num?)?.toInt(),
  json['damage'] as String?,
  json['text'] as String?,
);

Map<String, dynamic> _$PokemonDataAttacksEntityToJson(
  PokemonDataAttacksEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'cost': instance.cost,
  'convertedEnergyCost': instance.convertedEnergyCost,
  'damage': instance.damage,
  'text': instance.text,
};

PokemonDataWeaknessesEntity _$PokemonDataWeaknessesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataWeaknessesEntity(
  json['type'] as String?,
  json['value'] as String?,
);

Map<String, dynamic> _$PokemonDataWeaknessesEntityToJson(
  PokemonDataWeaknessesEntity instance,
) => <String, dynamic>{'type': instance.type, 'value': instance.value};

PokemonDataResistancesEntity _$PokemonDataResistancesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataResistancesEntity(
  json['type'] as String?,
  json['value'] as String?,
);

Map<String, dynamic> _$PokemonDataResistancesEntityToJson(
  PokemonDataResistancesEntity instance,
) => <String, dynamic>{'type': instance.type, 'value': instance.value};

PokemonDataSetEntity _$PokemonDataSetEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataSetEntity(
  json['id'] as String?,
  json['name'] as String?,
  json['series'] as String?,
  (json['printedTotal'] as num?)?.toInt(),
  (json['total'] as num?)?.toInt(),
  json['legalities'] == null
      ? null
      : PokemonDataSetLegalitiesEntity.fromJson(
          json['legalities'] as Map<String, dynamic>,
        ),
  json['ptcgoCode'] as String?,
  json['releaseDate'] as String?,
  json['updatedAt'] as String?,
  json['images'] == null
      ? null
      : PokemonDataSetImagesEntity.fromJson(
          json['images'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonDataSetEntityToJson(
  PokemonDataSetEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'series': instance.series,
  'printedTotal': instance.printedTotal,
  'total': instance.total,
  'legalities': instance.legalities,
  'ptcgoCode': instance.ptcgoCode,
  'releaseDate': instance.releaseDate,
  'updatedAt': instance.updatedAt,
  'images': instance.images,
};

PokemonDataSetLegalitiesEntity _$PokemonDataSetLegalitiesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataSetLegalitiesEntity(json['unlimited'] as String?);

Map<String, dynamic> _$PokemonDataSetLegalitiesEntityToJson(
  PokemonDataSetLegalitiesEntity instance,
) => <String, dynamic>{'unlimited': instance.unlimited};

PokemonDataSetImagesEntity _$PokemonDataSetImagesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataSetImagesEntity(
  json['symbol'] as String?,
  json['logo'] as String?,
);

Map<String, dynamic> _$PokemonDataSetImagesEntityToJson(
  PokemonDataSetImagesEntity instance,
) => <String, dynamic>{'symbol': instance.symbol, 'logo': instance.logo};

PokemonDataLegalitiesEntity _$PokemonDataLegalitiesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataLegalitiesEntity(json['unlimited'] as String?);

Map<String, dynamic> _$PokemonDataLegalitiesEntityToJson(
  PokemonDataLegalitiesEntity instance,
) => <String, dynamic>{'unlimited': instance.unlimited};

PokemonDataImagesEntity _$PokemonDataImagesEntityFromJson(
  Map<String, dynamic> json,
) =>
    PokemonDataImagesEntity(json['small'] as String?, json['large'] as String?);

Map<String, dynamic> _$PokemonDataImagesEntityToJson(
  PokemonDataImagesEntity instance,
) => <String, dynamic>{'small': instance.small, 'large': instance.large};

PokemonDataTcgplayerEntity _$PokemonDataTcgplayerEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataTcgplayerEntity(
  json['url'] as String?,
  json['updatedAt'] as String?,
  json['prices'] == null
      ? null
      : PokemonDataTcgplayerPricesEntity.fromJson(
          json['prices'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonDataTcgplayerEntityToJson(
  PokemonDataTcgplayerEntity instance,
) => <String, dynamic>{
  'url': instance.url,
  'updatedAt': instance.updatedAt,
  'prices': instance.prices,
};

PokemonDataTcgplayerPricesEntity _$PokemonDataTcgplayerPricesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataTcgplayerPricesEntity(
  json['holofoil'] == null
      ? null
      : PokemonDataTcgplayerPricesHolofoilEntity.fromJson(
          json['holofoil'] as Map<String, dynamic>,
        ),
  json['reverseHolofoil'] == null
      ? null
      : PokemonDataTcgplayerPricesReverseHolofoilEntity.fromJson(
          json['reverseHolofoil'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonDataTcgplayerPricesEntityToJson(
  PokemonDataTcgplayerPricesEntity instance,
) => <String, dynamic>{
  'holofoil': instance.holofoil,
  'reverseHolofoil': instance.reverseHolofoil,
};

PokemonDataTcgplayerPricesHolofoilEntity
_$PokemonDataTcgplayerPricesHolofoilEntityFromJson(Map<String, dynamic> json) =>
    PokemonDataTcgplayerPricesHolofoilEntity(
      (json['low'] as num?)?.toDouble(),
      (json['mid'] as num?)?.toDouble(),
      (json['high'] as num?)?.toDouble(),
      (json['market'] as num?)?.toDouble(),
      (json['directLow'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PokemonDataTcgplayerPricesHolofoilEntityToJson(
  PokemonDataTcgplayerPricesHolofoilEntity instance,
) => <String, dynamic>{
  'low': instance.low,
  'mid': instance.mid,
  'high': instance.high,
  'market': instance.market,
  'directLow': instance.directLow,
};

PokemonDataTcgplayerPricesReverseHolofoilEntity
_$PokemonDataTcgplayerPricesReverseHolofoilEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataTcgplayerPricesReverseHolofoilEntity(
  (json['low'] as num?)?.toDouble(),
  (json['mid'] as num?)?.toDouble(),
  (json['high'] as num?)?.toDouble(),
  (json['market'] as num?)?.toDouble(),
  (json['directLow'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PokemonDataTcgplayerPricesReverseHolofoilEntityToJson(
  PokemonDataTcgplayerPricesReverseHolofoilEntity instance,
) => <String, dynamic>{
  'low': instance.low,
  'mid': instance.mid,
  'high': instance.high,
  'market': instance.market,
  'directLow': instance.directLow,
};

PokemonDataCardmarketEntity _$PokemonDataCardmarketEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataCardmarketEntity(
  json['url'] as String?,
  json['updatedAt'] as String?,
  json['prices'] == null
      ? null
      : PokemonDataCardmarketPricesEntity.fromJson(
          json['prices'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonDataCardmarketEntityToJson(
  PokemonDataCardmarketEntity instance,
) => <String, dynamic>{
  'url': instance.url,
  'updatedAt': instance.updatedAt,
  'prices': instance.prices,
};

PokemonDataCardmarketPricesEntity _$PokemonDataCardmarketPricesEntityFromJson(
  Map<String, dynamic> json,
) => PokemonDataCardmarketPricesEntity(
  (json['averageSellPrice'] as num?)?.toDouble(),
  (json['lowPrice'] as num?)?.toDouble(),
  (json['trendPrice'] as num?)?.toDouble(),
  (json['germanProLow'] as num?)?.toDouble(),
  (json['suggestedPrice'] as num?)?.toDouble(),
  (json['reverseHoloSell'] as num?)?.toDouble(),
  (json['reverseHoloLow'] as num?)?.toDouble(),
  (json['reverseHoloTrend'] as num?)?.toDouble(),
  (json['lowPriceExPlus'] as num?)?.toDouble(),
  (json['avg1'] as num?)?.toDouble(),
  (json['avg7'] as num?)?.toDouble(),
  (json['avg30'] as num?)?.toDouble(),
  (json['reverseHoloAvg1'] as num?)?.toDouble(),
  (json['reverseHoloAvg7'] as num?)?.toDouble(),
  (json['reverseHoloAvg30'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PokemonDataCardmarketPricesEntityToJson(
  PokemonDataCardmarketPricesEntity instance,
) => <String, dynamic>{
  'averageSellPrice': instance.averageSellPrice,
  'lowPrice': instance.lowPrice,
  'trendPrice': instance.trendPrice,
  'germanProLow': instance.germanProLow,
  'suggestedPrice': instance.suggestedPrice,
  'reverseHoloSell': instance.reverseHoloSell,
  'reverseHoloLow': instance.reverseHoloLow,
  'reverseHoloTrend': instance.reverseHoloTrend,
  'lowPriceExPlus': instance.lowPriceExPlus,
  'avg1': instance.avg1,
  'avg7': instance.avg7,
  'avg30': instance.avg30,
  'reverseHoloAvg1': instance.reverseHoloAvg1,
  'reverseHoloAvg7': instance.reverseHoloAvg7,
  'reverseHoloAvg30': instance.reverseHoloAvg30,
};
