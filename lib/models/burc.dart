class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukResim;
  String _burcBuyukResim;

  // Constructor
  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResim);

  // Getter and Setter for burcAdi
  String get burcAdi => _burcAdi;
  set burcAdi(String value) => _burcAdi = value;

  // Getter and Setter for burcTarihi
  String get burcTarihi => _burcTarihi;
  set burcTarihi(String value) => _burcTarihi = value;

  // Getter and Setter for burcDetayi
  String get burcDetayi => _burcDetayi;
  set burcDetayi(String value) => _burcDetayi = value;

  // Getter and Setter for burcKucukResim
  String get burcKucukResim => _burcKucukResim;
  set burcKucukResim(String value) => _burcKucukResim = value;

  // Getter and Setter for burcBuyukResim
  String get burcBuyukResim => _burcBuyukResim;
  set burcBuyukResim(String value) => _burcBuyukResim = value;
}
