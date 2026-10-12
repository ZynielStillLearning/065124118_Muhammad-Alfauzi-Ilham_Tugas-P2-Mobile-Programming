import 'package:flutter/material.dart';

void main() => runApp(const KantinApp());

const _orange = Color(0xFFE86F32);
const _cream = Color(0xFFFFF8F0);
const _ink = Color(0xFF292522);

class Food {
  final String name, category, description, emoji, imageUrl;
  final int price;
  final double rating;

  const Food(
    this.name,
    this.category,
    this.description,
    this.emoji,
    this.price,
    this.rating,
    this.imageUrl,
  );
}

const foods = <Food>[
  Food('Nasi Ayam Bakar', 'Makanan', 'Ayam bakar berbumbu, nasi hangat, lalapan, dan sambal khas Bu Sari.', '🍗', 18000, 4.9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP9RElgOWgX0zf6tIUYuxAjJ6zfiwKqMZ5P8tujbbWnw&s=10'),
  Food('Nasi Goreng Spesial', 'Makanan', 'Nasi goreng rumahan dengan telur, sayuran, dan kerupuk renyah.', '🍳', 15000, 4.8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuXiLTCrIudTWiNyCpENDxs01eL-zOnTHun35lJ2aSeg&s=10'),
  Food('Mie Ayam', 'Makanan', 'Mie Ayam dengan bumbu, sayuran segar, dan taburan bawang goreng.', '🍜', 12000, 4.7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRafh0ZyWxp6WQCUGZYRn1yXEwJ0MDQKqX014VEmTSO3g&s=10'),
  Food('Soto Ayam', 'Makanan', 'Soto ayam hangat dengan suwiran ayam, soun, dan jeruk nipis.', '🍲', 15000, 4.8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLR4MpKLuCJgG5Ddy5mJdSpuNpdQcMkDYV0MKh8jJxUg&s=10'),
  Food('Ayam Geprek', 'Makanan', 'Ayam goreng renyah dengan sambal geprek dan nasi hangat.', '🍗', 10000, 4.8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG2dgQQl_mZ0rwteaVKChb8dHUdtbZjnDhS5QW1MwQJQ&s=10'),
  Food('Sate Ayam', 'Makanan', 'Sate ayam dengan bumbu kacang gurih dan irisan bawang.', '🍢', 10000, 4.7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSJcOuDJ7I6STkEqdZ1CVnigMuTjAEcL-wpKr6sVH-0w&s=10'),
  Food('Bakso Kuah', 'Makanan', 'Bakso sapi dengan kuah hangat, mi, dan sayuran.', '🍜', 5000, 4.7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKm1k9sM6Dk9VhGU4ZKrPBxezEhm2cZzQQYNRlWx72Lw&s=10'),
  Food('Nasi Uduk', 'Makanan', 'Nasi uduk gurih dengan pelengkap sederhana yang mengenyangkan.', '🍚', 5000, 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEMQRlEHjGV3f7bN65dRiUolfEtt_Sy3uIYk38DH5yRw&s=10'),
  Food('Es Teh Manis', 'Minuman', 'Teh pilihan dengan es batu, segar untuk menemani makan siang.', '🧋', 3000, 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC909gLFFmX-51p_BopZrjbDwEjZyYv-yvBRVzHQ-aUw&s=10'),
  Food('Jus Alpukat', 'Minuman', 'Jus alpukat lembut yang dibuat saat dipesan.', '🥑', 10000, 4.7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3s0LJdANq4UXofKwx8UCR_nEtzDVuH0AjFVIm1NCmMQ&s=10'),
  Food('Es Jeruk', 'Minuman', 'Perasan jeruk segar dengan rasa manis dan sedikit asam.', '🍊', 6000, 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Vt-_4C1DEAeV-AvdlTLDPecbFv00N7T6Nl_LJuhGxg&s=10'),
  Food('Kopi Susu', 'Minuman', 'Kopi susu dingin yang cocok untuk menemani waktu istirahat.', '☕', 5000, 4.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsy33w6JyjAwUglfs2HPJUgARX4dDcLkXPw1wqHohSnQ&s=10'),
  Food('Pisang Goreng', 'Camilan', 'Pisang matang berbalut adonan renyah, cocok untuk teman santai.', '🍌', 2000, 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf2rjcrYoVmn18kzDwe0K92rqZjNrDlBf2iRUFQUsvyw&s=10'),
  Food('Tahu Isi', 'Camilan', 'Tahu goreng berisi sayuran gurih dan disajikan hangat.', '🥟', 2000, 4.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSID2Gzn8ME3CGTmmnSBFAev6i5nUKlhdg2xGSlpp5quQ&s=10'),
  Food('Roti Bakar Cokelat', 'Camilan', 'Roti bakar hangat dengan isian cokelat manis.', '🍞', 10000, 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7d5GLkWgYI5avC2iXXINnMqVs6pKNNrB-Szt2b26jAw&s=10'),
  Food('Kentang Goreng', 'Camilan', 'Kentang goreng renyah dengan sedikit taburan bumbu.', '🍟', 10000, 4.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO2VlricqQoWk9HoeacFlJcuS5Om6e96mFmRV87vOT5A&s=10'),
];

class FoodImage extends StatelessWidget {
  final Food food;
  final double emojiSize;
  const FoodImage({super.key, required this.food, this.emojiSize = 54});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      food.imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: const Color(0xFFFFF0E5),
          alignment: Alignment.center,
          child: Text(food.emoji, style: TextStyle(fontSize: emojiSize)),
        );
      },
      errorBuilder: (context, error, stackTrace) => Container(
        color: const Color(0xFFFFF0E5),
        alignment: Alignment.center,
        child: Text(food.emoji, style: TextStyle(fontSize: emojiSize)),
      ),
    );
  }
}

String rupiah(int value) => 'Rp${value.toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (_) => '.')}';

class KantinApp extends StatelessWidget {
  const KantinApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Kantin Bu Sari', debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: _orange), scaffoldBackgroundColor: _cream,
      appBarTheme: const AppBarTheme(backgroundColor: _cream, foregroundColor: _ink, elevation: 0),
      inputDecorationTheme: InputDecorationTheme(filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none), contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14))),
    home: const MainShell(),
  );
}

class OrderRecord {
  final String code, note, status;
  final DateTime createdAt;
  final Map<Food, int> items;
  final int subtotal, discount;
  OrderRecord({required this.code, required this.note, required this.status, required this.createdAt, required this.items, required this.subtotal, required this.discount});
  int get itemCount => items.values.fold(0, (a, b) => a + b);
  int get total => subtotal - discount;
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int tab = 0;
  String category = 'Semua', search = '';
  final Map<Food, int> cart = {};
  final Set<Food> favorites = {};
  final List<OrderRecord> orders = [];
  final TextEditingController searchController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController promoController = TextEditingController();
  bool promoApplied = false;
  static const int promoMinimum = 30000;
  static const int promoDiscount = 5000;

  int get totalItems => cart.values.fold(0, (a, b) => a + b);
  int get totalPrice => cart.entries.fold(0, (a, e) => a + e.key.price * e.value);
  int get discount => promoApplied && totalPrice >= promoMinimum ? promoDiscount : 0;
  int get payable => totalPrice - discount;

  void add(Food f) {
    setState(() => cart[f] = (cart[f] ?? 0) + 1);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${f.name} ditambahkan ke keranjang'), duration: const Duration(milliseconds: 900), behavior: SnackBarBehavior.floating));
  }
  void changeQty(Food f, int delta) {
    setState(() {
      final n = (cart[f] ?? 0) + delta;
      if (n <= 0) { cart.remove(f); } else { cart[f] = n; }
      if (totalPrice < promoMinimum) promoApplied = false;
    });
  }
  void toggleFavorite(Food f) {
    setState(() { if (!favorites.add(f)) favorites.remove(f); });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(favorites.contains(f) ? '${f.name} disimpan ke favorit' : '${f.name} dihapus dari favorit'), duration: const Duration(milliseconds: 800)));
  }
  void applyPromo() {
    final code = promoController.text.trim().toUpperCase();
    if (code == 'BU SARI' || code == 'HEMAT5') {
      if (totalPrice < promoMinimum) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Minimal belanja Rp30.000 untuk memakai voucher ini.')));
        return;
      }
      setState(() => promoApplied = true);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Voucher berhasil digunakan! Diskon Rp5.000.')));
    } else {
      setState(() => promoApplied = false);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Kode voucher tidak valid. Coba HEMAT5.')));
    }
  }
  @override void dispose() { searchController.dispose(); noteController.dispose(); promoController.dispose(); super.dispose(); }

  @override Widget build(BuildContext context) {
    final pages = [homePage(), favoritePage(), cartPage(), historyPage(), const ProfilePage()];
    return Scaffold(
      body: SafeArea(child: IndexedStack(index: tab, children: pages)),
      bottomNavigationBar: NavigationBar(selectedIndex: tab, onDestinationSelected: (v) => setState(() => tab = v), destinations: [
        const NavigationDestination(icon: Icon(Icons.storefront_outlined), selectedIcon: Icon(Icons.storefront), label: 'Beranda'),
        NavigationDestination(icon: Badge(isLabelVisible: favorites.isNotEmpty, label: Text('${favorites.length}'), child: const Icon(Icons.favorite_border)), selectedIcon: const Icon(Icons.favorite), label: 'Favorit'),
        NavigationDestination(icon: Badge(isLabelVisible: totalItems > 0, label: Text('$totalItems'), child: const Icon(Icons.shopping_bag_outlined)), selectedIcon: const Icon(Icons.shopping_bag), label: 'Keranjang'),
        const NavigationDestination(icon: Icon(Icons.receipt_long_outlined), selectedIcon: Icon(Icons.receipt_long), label: 'Riwayat'),
        const NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profil'),
      ]),
    );
  }

  Widget homePage() {
    final visible = foods.where((f) => (category == 'Semua' || f.category == category) && f.name.toLowerCase().contains(search.toLowerCase())).toList();
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 12, 20, 8), child: Row(children: [Container(width: 46, height: 46, decoration: BoxDecoration(color: _orange, borderRadius: BorderRadius.circular(15)), child: const Icon(Icons.restaurant, color: Colors.white, size: 27)), const SizedBox(width: 12), const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Kantin Bu Sari', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: _ink)), Text('Masakan rumahan, bikin nyaman', style: TextStyle(color: Colors.black54, fontSize: 12))])), IconButton(onPressed: () => setState(() => tab = 2), icon: Badge(isLabelVisible: totalItems > 0, label: Text('$totalItems'), child: const Icon(Icons.shopping_bag_outlined, size: 27)))]))),
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 12, 20, 18), child: Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), gradient: const LinearGradient(colors: [Color(0xFFEE8B4F), _orange], begin: Alignment.topLeft, end: Alignment.bottomRight)), child: Row(children: [const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Lapar? Yuk, makan enak!', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800)), SizedBox(height: 8), Text('Menu rumahan favoritmu tersedia di sini.', style: TextStyle(color: Colors.white, fontSize: 13)), SizedBox(height: 14), _Pill(text: 'Dibuat fresh setiap hari') ])), const Text('🍛', style: TextStyle(fontSize: 68))])))),
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 0, 20, 14), child: Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: const Color(0xFFFFE9D9), borderRadius: BorderRadius.circular(18)), child: Row(children: [const Icon(Icons.local_offer, color: _orange), const SizedBox(width: 10), const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Voucher hemat Rp5.000', style: TextStyle(fontWeight: FontWeight.w800)), Text('Gunakan kode HEMAT5, minimal belanja Rp30.000', style: TextStyle(fontSize: 12, color: Colors.black54))])), TextButton(onPressed: () { setState(() => tab = 2); promoController.text = 'HEMAT5'; }, child: const Text('Pakai'))])))),
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 0, 20, 14), child: TextField(controller: searchController, onChanged: (v) => setState(() => search = v), decoration: const InputDecoration(hintText: 'Cari makanan atau minuman...', prefixIcon: Icon(Icons.search), suffixIcon: Icon(Icons.tune))))),
      SliverToBoxAdapter(child: SizedBox(height: 46, child: ListView(scrollDirection: Axis.horizontal, padding: const EdgeInsets.symmetric(horizontal: 16), children: ['Semua', 'Makanan', 'Minuman', 'Camilan'].map((c) => Padding(padding: const EdgeInsets.symmetric(horizontal: 4), child: ChoiceChip(label: Text(c), selected: category == c, selectedColor: const Color(0xFFFFDCC6), onSelected: (_) => setState(() => category = c)))).toList()))),
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 22, 20, 12), child: Row(children: [const Expanded(child: Text('Menu favorit', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: _ink))), Text('${visible.length} menu', style: const TextStyle(color: Colors.black54))]))),
      if (visible.isEmpty) const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.all(35), child: Center(child: Text('Menu tidak ditemukan. Coba kata kunci lain.'))))
      else SliverPadding(padding: const EdgeInsets.fromLTRB(16, 0, 16, 24), sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, i) => FoodCard(food: visible[i], isFavorite: favorites.contains(visible[i]), onFavorite: () => toggleFavorite(visible[i]), onTap: () => showDetail(visible[i]), onAdd: () => add(visible[i])), childCount: visible.length), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: .72))),
    ]);
  }

  Widget favoritePage() {
    final list = foods.where(favorites.contains).toList();
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.fromLTRB(20, 22, 20, 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Menu Favorit', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: _ink)), SizedBox(height: 5), Text('Menu yang kamu simpan untuk dipesan nanti.', style: TextStyle(color: Colors.black54))]))),
      if (list.isEmpty) const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.all(32), child: Column(children: [SizedBox(height: 45), Icon(Icons.favorite_border, size: 64, color: _orange), SizedBox(height: 14), Text('Belum ada menu favorit', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), SizedBox(height: 6), Text('Tekan ikon hati pada menu untuk menyimpannya.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54))])))
      else SliverPadding(padding: const EdgeInsets.fromLTRB(16, 0, 16, 24), sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, i) => FoodCard(food: list[i], isFavorite: true, onFavorite: () => toggleFavorite(list[i]), onTap: () => showDetail(list[i]), onAdd: () => add(list[i])), childCount: list.length), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: .72))),
    ]);
  }

  void showDetail(Food f) => showModalBottomSheet(context: context, isScrollControlled: true, backgroundColor: _cream, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(28))), builder: (ctx) => Padding(padding: EdgeInsets.fromLTRB(24, 12, 24, 24 + MediaQuery.of(ctx).viewInsets.bottom), child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Center(child: Container(width: 42, height: 4, decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(4))),), const SizedBox(height: 22), Center(child: ClipRRect(borderRadius: BorderRadius.circular(24), child: SizedBox(width: 200, height: 155, child: FoodImage(food: f, emojiSize: 72)))), const SizedBox(height: 18), Row(children: [Expanded(child: Text(f.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800))), IconButton(onPressed: () => toggleFavorite(f), icon: Icon(favorites.contains(f) ? Icons.favorite : Icons.favorite_border, color: _orange))]), Row(children: [const Icon(Icons.star, color: Color(0xFFFFB300), size: 19), Text(' ${f.rating}  •  ${f.category}', style: const TextStyle(color: Colors.black54))]), const SizedBox(height: 12), Text(f.description, style: const TextStyle(fontSize: 15, height: 1.5)), const SizedBox(height: 20), Row(children: [Expanded(child: Text(rupiah(f.price), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: _orange))), FilledButton.icon(onPressed: () { Navigator.pop(ctx); add(f); }, icon: const Icon(Icons.add_shopping_cart), label: const Text('Tambah'))])]))));

  Widget cartPage() {
    final entries = cart.entries.toList();
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 22, 20, 18), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Keranjang Saya', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: _ink)), const SizedBox(height: 5), Text('$totalItems item dipilih', style: const TextStyle(color: Colors.black54)), const SizedBox(height: 18), Container(width: double.infinity, padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: const Color(0xFFFFE9D9), borderRadius: BorderRadius.circular(17)), child: const Row(children: [Icon(Icons.info_outline, color: _orange), SizedBox(width: 10), Expanded(child: Text('Periksa pesananmu sebelum melanjutkan ke kasir.', style: TextStyle(fontSize: 13)))]))]))),
      if (entries.isEmpty) SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(30, 60, 30, 20), child: Column(children: [Container(width: 110, height: 110, decoration: BoxDecoration(color: const Color(0xFFFFE8D9), borderRadius: BorderRadius.circular(35)), child: const Icon(Icons.shopping_bag_outlined, size: 52, color: _orange)), const SizedBox(height: 18), const Text('Keranjang masih kosong', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)), const SizedBox(height: 7), const Text('Pilih menu favoritmu dan tambahkan ke keranjang.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54)), const SizedBox(height: 20), FilledButton.icon(onPressed: () => setState(() => tab = 0), icon: const Icon(Icons.restaurant_menu), label: const Text('Lihat Menu'))])))
      else SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 16), sliver: SliverList(delegate: SliverChildBuilderDelegate((context, i) { final f = entries[i].key; final qty = entries[i].value; return Card(color: Colors.white, elevation: 0, margin: const EdgeInsets.only(bottom: 10), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), child: Padding(padding: const EdgeInsets.all(12), child: Row(children: [ClipRRect(borderRadius: BorderRadius.circular(15), child: SizedBox(width: 66, height: 66, child: FoodImage(food: f, emojiSize: 36))), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(f.name, style: const TextStyle(fontWeight: FontWeight.bold)), const SizedBox(height: 5), Text(rupiah(f.price), style: const TextStyle(color: _orange, fontWeight: FontWeight.w700)), const SizedBox(height: 6), Row(children: [_QtyButton(icon: Icons.remove, onTap: () => changeQty(f, -1)), Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: Text('$qty', style: const TextStyle(fontWeight: FontWeight.bold))), _QtyButton(icon: Icons.add, onTap: () => changeQty(f, 1))])])), Text(rupiah(f.price * qty), style: const TextStyle(fontWeight: FontWeight.bold))]))); }, childCount: entries.length))),
      if (entries.isNotEmpty) SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 16, 20, 30), child: Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Row(children: [Icon(Icons.edit_note, color: _orange), SizedBox(width: 8), Text('Catatan Pesanan', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17))]), const SizedBox(height: 9), TextField(controller: noteController, maxLines: 2, decoration: const InputDecoration(hintText: 'Contoh: sambal dipisah, tidak pedas...')), const SizedBox(height: 18), const Row(children: [Icon(Icons.local_offer_outlined, color: _orange), SizedBox(width: 8), Text('Voucher Promo', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17))]), const SizedBox(height: 9), Row(children: [Expanded(child: TextField(controller: promoController, textCapitalization: TextCapitalization.characters, decoration: const InputDecoration(hintText: 'Kode: HEMAT5'))), const SizedBox(width: 8), OutlinedButton(onPressed: applyPromo, child: const Text('Gunakan'))]), if (promoApplied && discount > 0) const Padding(padding: EdgeInsets.only(top: 6), child: Text('Voucher aktif: diskon Rp5.000', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600))), const SizedBox(height: 18), const Row(children: [Icon(Icons.receipt_long_outlined, color: _orange), SizedBox(width: 8), Text('Ringkasan Pesanan', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17))]), const SizedBox(height: 16), _SummaryRow(label: 'Jumlah item', value: '$totalItems item'), const SizedBox(height: 10), _SummaryRow(label: 'Subtotal', value: rupiah(totalPrice)), const SizedBox(height: 10), _SummaryRow(label: 'Biaya layanan', value: 'Gratis'), if (discount > 0) ...[const SizedBox(height: 10), _SummaryRow(label: 'Diskon voucher', value: '-${rupiah(discount)}')], const Divider(height: 26), _SummaryRow(label: 'Total pembayaran', value: rupiah(payable), bold: true), const SizedBox(height: 18), SizedBox(width: double.infinity, child: FilledButton.icon(onPressed: checkout, icon: const Icon(Icons.check_circle_outline), label: const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Text('Konfirmasi Pesanan')))), const SizedBox(height: 6), TextButton(onPressed: () => setState(() => tab = 0), child: const Text('Tambah menu lainnya'))])))),
    ]);
  }

  Widget historyPage() {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.fromLTRB(20, 22, 20, 18), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Riwayat Pesanan', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: _ink)), SizedBox(height: 5), Text('Lihat pesanan yang pernah kamu konfirmasi.', style: TextStyle(color: Colors.black54))]))),
      if (orders.isEmpty) const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.all(35), child: Column(children: [SizedBox(height: 35), Icon(Icons.receipt_long_outlined, size: 65, color: _orange), SizedBox(height: 14), Text('Belum ada riwayat pesanan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), SizedBox(height: 6), Text('Pesanan yang sudah dikonfirmasi akan muncul di sini.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54))])))
      else SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 16), sliver: SliverList(delegate: SliverChildBuilderDelegate((context, i) { final order = orders[orders.length - 1 - i]; return Card(color: Colors.white, elevation: 0, margin: const EdgeInsets.only(bottom: 12), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), child: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Expanded(child: Text(order.code, style: const TextStyle(fontWeight: FontWeight.w800))), Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6), decoration: BoxDecoration(color: const Color(0xFFFFE9D9), borderRadius: BorderRadius.circular(20)), child: Text(order.status, style: const TextStyle(color: _orange, fontSize: 12, fontWeight: FontWeight.bold)))]), const SizedBox(height: 5), Text('${order.createdAt.day.toString().padLeft(2, '0')}/${order.createdAt.month.toString().padLeft(2, '0')}/${order.createdAt.year} • ${order.itemCount} item', style: const TextStyle(color: Colors.black54, fontSize: 12)), const Divider(height: 22), ...order.items.entries.map((e) => Padding(padding: const EdgeInsets.only(bottom: 6), child: Row(children: [Expanded(child: Text('${e.key.name} × ${e.value}')), Text(rupiah(e.key.price * e.value))]))), if (order.note.isNotEmpty) Padding(padding: const EdgeInsets.only(top: 6), child: Text('Catatan: ${order.note}', style: const TextStyle(color: Colors.black54, fontStyle: FontStyle.italic))), const Divider(height: 20), Row(children: [const Expanded(child: Text('Total pembayaran', style: TextStyle(fontWeight: FontWeight.w700))), Text(rupiah(order.total), style: const TextStyle(color: _orange, fontWeight: FontWeight.w800, fontSize: 17))]), const SizedBox(height: 10), Align(alignment: Alignment.centerRight, child: TextButton.icon(onPressed: () => showOrderDetail(order), icon: const Icon(Icons.visibility_outlined), label: const Text('Lihat status')))]))); }, childCount: orders.length))),
    ]);
  }

  void showOrderDetail(OrderRecord order) {
    showModalBottomSheet(context: context, backgroundColor: _cream, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(26))), builder: (ctx) => Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Status ${order.code}', style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w800)), const SizedBox(height: 22), const _StatusStep(icon: Icons.check_circle, title: 'Pesanan diterima', subtitle: 'Pesanan tercatat oleh sistem', active: true), const _StatusStep(icon: Icons.soup_kitchen, title: 'Sedang disiapkan', subtitle: 'Kantin sedang menyiapkan pesanan', active: true), const _StatusStep(icon: Icons.shopping_bag, title: 'Siap diambil', subtitle: 'Silakan tunjukkan kode pesanan ke kasir', active: false), const SizedBox(height: 14), SizedBox(width: double.infinity, child: FilledButton(onPressed: () => Navigator.pop(ctx), child: const Text('Tutup')))])));
  }

  void checkout() {
    if (cart.isEmpty) return;
    final savedItems = Map<Food, int>.from(cart);
    final orderTotal = payable;
    final orderItems = totalItems;
    final orderCode = 'BS-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}';
    final note = noteController.text.trim();
    setState(() {
      orders.add(OrderRecord(code: orderCode, note: note, status: 'Sedang disiapkan', createdAt: DateTime.now(), items: savedItems, subtotal: totalPrice, discount: discount));
      cart.clear(); noteController.clear(); promoController.clear(); promoApplied = false; tab = 3;
    });
    showDialog(context: context, builder: (ctx) => AlertDialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)), icon: const CircleAvatar(backgroundColor: Color(0xFFE2F4E8), radius: 34, child: Icon(Icons.check_circle, color: Colors.green, size: 42)), title: const Text('Pesanan berhasil!'), content: Text('Pesanan $orderCode ($orderItems item) sudah dicatat dengan total ${rupiah(orderTotal)}. Kamu bisa melihat statusnya di menu Riwayat.'), actions: [FilledButton(onPressed: () { Navigator.pop(ctx); setState(() => tab = 3); }, child: const Text('Lihat Riwayat'))]));
  }
}

class _StatusStep extends StatelessWidget {
  final IconData icon; final String title, subtitle; final bool active;
  const _StatusStep({required this.icon, required this.title, required this.subtitle, required this.active});
  @override Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 16), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(icon, color: active ? Colors.green : Colors.black26, size: 27), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: TextStyle(fontWeight: FontWeight.w800, color: active ? _ink : Colors.black45)), const SizedBox(height: 3), Text(subtitle, style: const TextStyle(color: Colors.black54, fontSize: 13))]))]));
}
class FoodCard extends StatelessWidget {
  final Food food;
  final VoidCallback onTap, onAdd, onFavorite;
  final bool isFavorite;
  const FoodCard({super.key, required this.food, required this.onTap, required this.onAdd, required this.onFavorite, required this.isFavorite});

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: FoodImage(food: food),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Material(
                      color: Colors.white.withOpacity(.94),
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: onFavorite,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: _orange, size: 17),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.92),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Color(0xFFFFB300), size: 13),
                          Text(' ${food.rating}', style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(food.name, maxLines: 1, overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14)),
            const SizedBox(height: 4),
            Text(food.category, style: const TextStyle(color: Colors.black45, fontSize: 11)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(rupiah(food.price),
                    style: const TextStyle(color: _orange, fontWeight: FontWeight.w800, fontSize: 14)),
                ),
                Material(
                  color: _orange,
                  borderRadius: BorderRadius.circular(11),
                  child: InkWell(
                    onTap: onAdd,
                    borderRadius: BorderRadius.circular(11),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.add, color: Colors.white, size: 19),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfilePage extends StatelessWidget { const ProfilePage({super.key}); @override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(20),children:[const Text('Profil & Informasi',style:TextStyle(fontSize:26,fontWeight:FontWeight.w800,color:_ink)),const SizedBox(height:18),Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(borderRadius:BorderRadius.circular(24),gradient:const LinearGradient(colors:[_orange,Color(0xFFF39B62)])),child:const Column(children:[CircleAvatar(radius:37,backgroundColor:Colors.white,child:Icon(Icons.restaurant,size:38,color:_orange)),SizedBox(height:12),Text('Kantin Bu Sari',style:TextStyle(color:Colors.white,fontWeight:FontWeight.w800,fontSize:22)),SizedBox(height:5),Text('Masakan rumahan dengan rasa istimewa',style:TextStyle(color:Colors.white),textAlign:TextAlign.center)])),const SizedBox(height:22),const Text('Tentang Kantin',style:TextStyle(fontSize:18,fontWeight:FontWeight.w800)),const SizedBox(height:9),const Text('Kantin Bu Sari menyajikan makanan rumahan yang lezat, praktis, dan ramah di kantong. Pilih menu, masukkan ke keranjang, lalu konfirmasi pesananmu.',style:TextStyle(height:1.55,color:Colors.black54)),const SizedBox(height:20),_InfoTile(icon:Icons.access_time,title:'Jam operasional',subtitle:'Senin–Sabtu • 07.00–16.00'),_InfoTile(icon:Icons.location_on_outlined,title:'Lokasi kantin',subtitle:'Area kantin kampus'),_InfoTile(icon:Icons.payments_outlined,title:'Pembayaran',subtitle:'Bayar langsung di kasir'),_InfoTile(icon:Icons.support_agent,title:'Bantuan',subtitle:'Tanyakan kepada petugas kantin'),const SizedBox(height:14),Container(padding:const EdgeInsets.all(14),decoration:BoxDecoration(color:const Color(0xFFFFE9D9),borderRadius:BorderRadius.circular(16)),child:const Row(children:[Icon(Icons.favorite,color:_orange),SizedBox(width:10),Expanded(child:Text('Terima kasih sudah memilih Kantin Bu Sari!',style:TextStyle(fontWeight:FontWeight.w600)))])),const SizedBox(height:22),const Center(child:Text('Kantin Bu Sari • Versi 1.0.0',style:TextStyle(color:Colors.black38,fontSize:12)))]); }

class _Pill extends StatelessWidget { final String text; const _Pill({required this.text}); @override Widget build(BuildContext context)=>Container(padding:const EdgeInsets.symmetric(horizontal:10,vertical:7),decoration:BoxDecoration(color:Colors.white.withOpacity(.2),borderRadius:BorderRadius.circular(20)),child:Text(text,style:const TextStyle(color:Colors.white,fontSize:11,fontWeight:FontWeight.w600))); }
class _QtyButton extends StatelessWidget {final IconData icon;final VoidCallback onTap;const _QtyButton({required this.icon,required this.onTap});@override Widget build(BuildContext context)=>InkWell(onTap:onTap,borderRadius:BorderRadius.circular(8),child:Container(width:28,height:27,decoration:BoxDecoration(color:const Color(0xFFFFE9D9),borderRadius:BorderRadius.circular(8)),child:Icon(icon,size:16,color:_orange)));}
class _SummaryRow extends StatelessWidget {final String label,value;final bool bold;const _SummaryRow({required this.label,required this.value,this.bold=false});@override Widget build(BuildContext context)=>Row(children:[Expanded(child:Text(label,style:TextStyle(color:bold?_ink:Colors.black54,fontWeight:bold?FontWeight.w800:FontWeight.normal))),Text(value,style:TextStyle(fontWeight:bold?FontWeight.w800:FontWeight.w600,fontSize:bold?17:14,color:bold?_orange:_ink))]);}
class _InfoTile extends StatelessWidget {final IconData icon;final String title,subtitle;const _InfoTile({required this.icon,required this.title,required this.subtitle});@override Widget build(BuildContext context)=>Card(color:Colors.white,elevation:0,margin:const EdgeInsets.only(bottom:10),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),child:ListTile(leading:Container(width:44,height:44,decoration:BoxDecoration(color:const Color(0xFFFFE9D9),borderRadius:BorderRadius.circular(13)),child:Icon(icon,color:_orange)),title:Text(title,style:const TextStyle(fontWeight:FontWeight.w700)),subtitle:Text(subtitle),trailing:const Icon(Icons.chevron_right,color:Colors.black38)));}