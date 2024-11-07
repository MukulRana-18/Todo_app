import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static const String _key = 'todo_list';


    static Future<void> saveTodoList(List<String> todos) async {
      final prefs = await SharedPreferences.getInstance();
      String jsonString = jsonEncode(todos);
      await prefs.setString(_key, jsonString);

    }

  static Future<List<String>> getTodoList() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(_key);
    if (jsonString == null) return [];
    return List<String>.from(jsonDecode(jsonString));
  }

  //"'sahil','call mom','workout'" 'sahil','call mom','workout'


  static Future<void> addTodoItem(String item) async {
    List<String> todos = await getTodoList(); // []

    todos.add(item);
    await saveTodoList(todos);
  }

  static Future<void> deleteTodoItem(int index) async {
    List<String> todos = await getTodoList();
    if (index < todos.length) {
      todos.removeAt(index);
      await saveTodoList(todos);
    }
  }
}
