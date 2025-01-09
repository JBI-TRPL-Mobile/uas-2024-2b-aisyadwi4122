import 'package:flutter/material.dart';
import '../models/message_model.dart';
 // Import model

class MessageProvider with ChangeNotifier {
  // Daftar pesan
  final List<MessageModel> _messages = [
    MessageModel(content: "Hai.. apa kabar"),
    MessageModel(content: "Bagaimana kabarmu"),
    MessageModel(content: "Bagaimana keadaanmu"),
  ];

  // Getter untuk mendapatkan daftar pesan
  List<MessageModel> get messages => _messages;

  // Menambahkan pesan baru
  void addMessage(String newMessage) {
    _messages.add(MessageModel(content: newMessage));
    notifyListeners(); // Memberi tahu UI untuk update
  }

  // Menghapus pesan berdasarkan index
  void removeMessage(int index) {
    _messages.removeAt(index);
    notifyListeners();
  }
}
