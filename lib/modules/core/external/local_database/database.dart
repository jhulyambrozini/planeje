import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_author_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_gender_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_nacionality_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/books_publishers_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/completed_readings_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/finnances_expense_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/finnances_header_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/menstrual_cycle_prediction_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/menstrual_cycle_tracking_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/mesnstrual_cycle_user_infos_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/records_antiomceptive_pill_table.dart';
import 'package:planeje/modules/core/external/local_database/tables/reminder_antiomceptive_pill_table.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    FinnacesHeaderTable,
    BooksAuthorTable,
    BooksGenderTable,
    BooksNacionalityTable,
    BooksPublishersTable,
    CompletedReadingsTable,
    FinnancesExpenseTable,
    MenstrualCyclePrediction,
    MenstrualCycleTrackingTable,
    MesnstrualCycleUserInfosTable,
    RecordsAntiomceptivePill,
    ReminderAntiomceptivePill,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'app.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
