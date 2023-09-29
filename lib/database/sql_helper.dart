import 'package:sqflite/sqflite.dart' as sql;


class SQLHelper{
  static Future<void> createTablesPemasukan(sql.Database database) async {
    await database.execute("""
    CREATE TABLE pemasukan(
      tanggal TEXT,
      nominal TEXT,
      keterangan TEXT
    )
""");
  }
   static Future<void> createTablesPengeluaran(sql.Database database) async {
    await database.execute("""
    CREATE TABLE pengeluaran(
      tanggal TEXT,
      nominal TEXT,
      keterangan TEXT
    )
""");
  }
  static Future<void> createTablesUsers(sql.Database database) async {
    await database.execute("""
    CREATE TABLE users(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      username TEXT,
      password TEXT
    )
""");
  }
  static Future<sql.Database> dbPemasukan() async{
    return sql.openDatabase('pemasukan.db', version: 1,
      onCreate: (sql.Database database, int version) async{
        await createTablesPemasukan(database);
      }
    );
  }
  static Future<sql.Database> dbPengeluaran() async{
    return sql.openDatabase('pengeluaran.db', version: 1,
      onCreate: (sql.Database database, int version) async{
        await createTablesPengeluaran(database);
      }
    );
  }
   static Future<sql.Database> dbUsers() async{
    return sql.openDatabase('users.db', version: 1,
      onCreate: (sql.Database database, int version) async{
        await createTablesUsers(database);
      }
    );
  }
  //add data
  static Future<int> addPemasukan(String tanggal,String nominal, String keterangan)
  async{
    final dbPemasukan = await SQLHelper.dbPemasukan();
    final data = {
      'tanggal': tanggal,
      'nominal': nominal,
      'keterangan': keterangan
    };
    return await dbPemasukan.insert('pemasukan', data);
  }
  static Future<int> addPengeluaran(String tanggal,String nominal, String keterangan)
  async{
    final dbPengeluaran = await SQLHelper.dbPengeluaran();
    final data = {
      'tanggal': tanggal,
      'nominal': nominal,
      'keterangan': keterangan
    };
    return await dbPengeluaran.insert('pengeluaran', data);
  }
  //ambil data
  static Future<List<Map<String, dynamic>>> getPemasukan() async {
    final dbPemasukan = await SQLHelper.dbPemasukan();
    return dbPemasukan.query('pemasukan');
  }
  static Future<List<Map<String, dynamic>>> getPengeluaran() async {
    final dbPengeluaran = await SQLHelper.dbPengeluaran();
    return dbPengeluaran.query('pengeluaran');
  }
}