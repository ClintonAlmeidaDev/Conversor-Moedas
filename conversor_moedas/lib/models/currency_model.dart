class CurrencyModel {
  final String? name;
  final double? real;
  final double? dolar;
  final double? euro;
  final double? bitcoin;

  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real',
          real: 1.0,
          dolar: 0.1940,
          euro: 0.1816,
          bitcoin: 0.00000859),
      CurrencyModel(
          name: 'Dolar',
          real: 5.1539,
          dolar: 1.0,
          euro: 0.9358,
          bitcoin: 0.000045),
      CurrencyModel(
          name: 'Euro',
          real: 5.5075,
          dolar: 1.0685,
          euro: 1.0,
          bitcoin: 0.000048),
      CurrencyModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1),
    ];
  }
}
