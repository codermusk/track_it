class ExpensesDataBase {
  static final _databaseName = 'expenses.db';
  static final _databaseVersion = 1;

// This Private constructor is used to maintain a single instance of the database class in order to maintain singleton instance
  DatabaseHelper._private_constructor();

  static final DatabaseHelper instance = DatabaseHelper._private_constructor();

  static Database? _database;

// This get methods automatically gets called during instantiating the database helper class
  Future get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory path = getApplicationDocumentsDirectory();
    String path = join(path.path, _databaseName);
    return await openDatabase(
        path, version: _databaseVersion, onCreate: _create);
  }

  Future _create(Database db, int version) async {

  }

}