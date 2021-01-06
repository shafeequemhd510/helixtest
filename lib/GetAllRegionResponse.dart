// To parse this JSON data, do
//
//     final getAllRegionResponse = getAllRegionResponseFromJson(jsonString);

import 'dart:convert';

List<GetAllRegionResponse> getAllRegionResponseFromJson(String str) => List<GetAllRegionResponse>.from(json.decode(str).map((x) => GetAllRegionResponse.fromJson(x)));

class GetAllRegionResponse {
  GetAllRegionResponse({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  List<RegionalBloc> regionalBlocs;
  String cioc;

  factory GetAllRegionResponse.fromJson(Map<String, dynamic> json) => GetAllRegionResponse(
    name: json["name"] == null ? null : json["name"],
    topLevelDomain: json["topLevelDomain"] == null ? null : List<String>.from(json["topLevelDomain"].map((x) => x)),
    alpha2Code: json["alpha2Code"] == null ? null : json["alpha2Code"],
    alpha3Code: json["alpha3Code"] == null ? null : json["alpha3Code"],
    callingCodes: json["callingCodes"] == null ? null : List<String>.from(json["callingCodes"].map((x) => x)),
    capital: json["capital"] == null ? null : json["capital"],
    altSpellings: json["altSpellings"] == null ? null : List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"] == null ? null : json["region"],
    subregion: json["subregion"] == null ? null : json["subregion"],
    population: json["population"] == null ? null : json["population"],
    latlng: json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x)),
    demonym: json["demonym"] == null ? null : json["demonym"],
    area: json["area"] == null ? null : json["area"],
    gini: json["gini"] == null ? null : json["gini"].toDouble(),
    timezones: json["timezones"] == null ? null : List<String>.from(json["timezones"].map((x) => x)),
    borders: json["borders"] == null ? null : List<String>.from(json["borders"].map((x) => x)),
    nativeName: json["nativeName"] == null ? null : json["nativeName"],
    numericCode: json["numericCode"] == null ? null : json["numericCode"],
    currencies: json["currencies"] == null ? null : List<Currency>.from(json["currencies"].map((x) => Currency.fromJson(x))),
    languages: json["languages"] == null ? null : List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
    translations: json["translations"] == null ? null : Translations.fromJson(json["translations"]),
    flag: json["flag"] == null ? null : json["flag"],
    regionalBlocs: json["regionalBlocs"] == null ? null : List<RegionalBloc>.from(json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
    cioc: json["cioc"] == null ? null : json["cioc"],
  );


}

class Currency {
  Currency({
    this.code,
    this.name,
    this.symbol,
  });

  String code;
  String name;
  String symbol;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    code: json["code"] == null ? null : json["code"],
    name: json["name"] == null ? null : json["name"],
    symbol: json["symbol"] == null ? null : json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : code,
    "name": name == null ? null : name,
    "symbol": symbol == null ? null : symbol,
  };
}

class Language {
  Language({
    this.iso6391,
    this.iso6392,
    this.name,
    this.nativeName,
  });

  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    iso6391: json["iso639_1"] == null ? null : json["iso639_1"],
    iso6392: json["iso639_2"] == null ? null : json["iso639_2"],
    name: json["name"] == null ? null : json["name"],
    nativeName: json["nativeName"] == null ? null : json["nativeName"],
  );

  Map<String, dynamic> toJson() => {
    "iso639_1": iso6391 == null ? null : iso6391,
    "iso639_2": iso6392 == null ? null : iso6392,
    "name": name == null ? null : name,
    "nativeName": nativeName == null ? null : nativeName,
  };
}

class RegionalBloc {
  RegionalBloc({
    this.acronym,
    this.name,
    this.otherAcronyms,
    this.otherNames,
  });

  String acronym;
  String name;
  List<dynamic> otherAcronyms;
  List<dynamic> otherNames;

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
    acronym: json["acronym"] == null ? null : json["acronym"],
    name: json["name"] == null ? null : json["name"],
    otherAcronyms: json["otherAcronyms"] == null ? null : List<dynamic>.from(json["otherAcronyms"].map((x) => x)),
    otherNames: json["otherNames"] == null ? null : List<dynamic>.from(json["otherNames"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "acronym": acronym == null ? null : acronym,
    "name": name == null ? null : name,
    "otherAcronyms": otherAcronyms == null ? null : List<dynamic>.from(otherAcronyms.map((x) => x)),
    "otherNames": otherNames == null ? null : List<dynamic>.from(otherNames.map((x) => x)),
  };
}

class Translations {
  Translations({
    this.de,
    this.es,
    this.fr,
    this.ja,
    this.it,
    this.br,
    this.pt,
    this.nl,
    this.hr,
    this.fa,
  });

  String de;
  String es;
  String fr;
  String ja;
  String it;
  String br;
  String pt;
  String nl;
  String hr;
  String fa;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    de: json["de"] == null ? null : json["de"],
    es: json["es"] == null ? null : json["es"],
    fr: json["fr"] == null ? null : json["fr"],
    ja: json["ja"] == null ? null : json["ja"],
    it: json["it"] == null ? null : json["it"],
    br: json["br"] == null ? null : json["br"],
    pt: json["pt"] == null ? null : json["pt"],
    nl: json["nl"] == null ? null : json["nl"],
    hr: json["hr"] == null ? null : json["hr"],
    fa: json["fa"] == null ? null : json["fa"],
  );

  Map<String, dynamic> toJson() => {
    "de": de == null ? null : de,
    "es": es == null ? null : es,
    "fr": fr == null ? null : fr,
    "ja": ja == null ? null : ja,
    "it": it == null ? null : it,
    "br": br == null ? null : br,
    "pt": pt == null ? null : pt,
    "nl": nl == null ? null : nl,
    "hr": hr == null ? null : hr,
    "fa": fa == null ? null : fa,
  };
}
