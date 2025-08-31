import 'package:supabase_flutter/supabase_flutter.dart';

class SupaBaseService {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<PostgrestResponse> insertData(
    String table,
    Map<String, dynamic> data,
  ) async {
    return await supabase.from(table).insert(data);
  }

  PostgrestFilterBuilder<List<Map<String, dynamic>>> getData(String table) {
    return supabase.from(table).select();
  }

  PostgrestFilterBuilder<PostgrestList> getDataWhere(
    String table,
    String column,
    dynamic value,
  ) {
    return supabase.from(table).select().eq(column, value);
  }

  Future<PostgrestResponse> updateData(
    String table,
    String id,
    Map<String, dynamic> data,
  ) async {
    return await supabase.from(table).update(data).eq('id', id);
  }

  Future<PostgrestResponse> deleteData(String table, String id) async {
    return await supabase.from(table).delete().eq('id', id);
  }
}
