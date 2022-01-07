class Calculate {
  final int harga;
  final int jumlah;
  int _total;
  Calculate({this.harga, this.jumlah});
  int calculateTotal() {
    _total = harga * jumlah;
    return _total;
  }
}