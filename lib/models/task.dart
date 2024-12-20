// // // // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // // // class Task {
// // // // // //   final String? id;
// // // // // //   final String title;
// // // // // //   final String description;
// // // // // //   final String? imageUrl;
// // // // // //   final bool isCompleted;
// // // // // //   final DateTime createdAt;

// // // // // //   Task({
// // // // // //     this.id,
// // // // // //     required this.title,
// // // // // //     required this.description,
// // // // // //     this.imageUrl,
// // // // // //     this.isCompleted = false,
// // // // // //     required this.createdAt,
// // // // // //   });

// // // // // //   Map<String, dynamic> toMap() {
// // // // // //     return {
// // // // // //       'title': title,
// // // // // //       'description': description,
// // // // // //       'imageUrl': imageUrl,
// // // // // //       'isCompleted': isCompleted,
// // // // // //       'createdAt': createdAt.toIso8601String(),
// // // // // //     };
// // // // // //   }

// // // // // //   static Task fromFirestore(DocumentSnapshot doc) {
// // // // // //     final data = doc.data() as Map<String, dynamic>;
// // // // // //     return Task(
// // // // // //       id: doc.id,
// // // // // //       title: data['title'],
// // // // // //       description: data['description'],
// // // // // //       imageUrl: data['imageUrl'],
// // // // // //       isCompleted: data['isCompleted'],
// // // // // //       createdAt: DateTime.parse(data['createdAt']),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // // // // class Task {
// // // // // // //   final String id;
// // // // // // //   final String title;
// // // // // // //   final String description;
// // // // // // //   final String? imageUrl; // Nullable since the image is optional
// // // // // // //   final bool isCompleted;
// // // // // // //   final DateTime createdAt;

// // // // // // //   Task({
// // // // // // //     required this.id,
// // // // // // //     required this.title,
// // // // // // //     required this.description,
// // // // // // //     this.imageUrl,
// // // // // // //     required this.isCompleted,
// // // // // // //     required this.createdAt,
// // // // // // //   });

// // // // // // //   // Factory method to create a Task object from Firestore data
// // // // // // //   factory Task.fromFirestore(DocumentSnapshot doc) {
// // // // // // //     final data = doc.data() as Map<String, dynamic>;
// // // // // // //     return Task(
// // // // // // //       id: doc.id,
// // // // // // //       title: data['title'] ?? '',
// // // // // // //       description: data['description'] ?? '',
// // // // // // //       imageUrl: data['imageUrl'],
// // // // // // //       isCompleted: data['isCompleted'] ?? false,
// // // // // // //       createdAt: (data['createdAt'] as Timestamp).toDate(),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   // Convert a Task object to a Map for Firestore
// // // // // // //   Map<String, dynamic> toMap() {
// // // // // // //     return {
// // // // // // //       'title': title,
// // // // // // //       'description': description,
// // // // // // //       'imageUrl': imageUrl,
// // // // // // //       'isCompleted': isCompleted,
// // // // // // //       'createdAt': createdAt,
// // // // // // //     };
// // // // // // //   }

// // // // // // //   // CopyWith method for immutability
// // // // // // //   Task copyWith({
// // // // // // //     String? id,
// // // // // // //     String? title,
// // // // // // //     String? description,
// // // // // // //     String? imageUrl,
// // // // // // //     bool? isCompleted,
// // // // // // //     DateTime? createdAt,
// // // // // // //   }) {
// // // // // // //     return Task(
// // // // // // //       id: id ?? this.id,
// // // // // // //       title: title ?? this.title,
// // // // // // //       description: description ?? this.description,
// // // // // // //       imageUrl: imageUrl ?? this.imageUrl,
// // // // // // //       isCompleted: isCompleted ?? this.isCompleted,
// // // // // // //       createdAt: createdAt ?? this.createdAt,
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // // class Task {
// // // // //   final String id;
// // // // //   final String title;
// // // // //   final String description;
// // // // //   final String? imageUrl;
// // // // //   final bool isCompleted;
// // // // //   final DateTime createdAt;

// // // // //   Task({
// // // // //     required this.id,
// // // // //     required this.title,
// // // // //     required this.description,
// // // // //     this.imageUrl,
// // // // //     required this.isCompleted,
// // // // //     required this.createdAt,
// // // // //   });

// // // // //   factory Task.fromFirestore(DocumentSnapshot doc) {
// // // // //     final data = doc.data() as Map<String, dynamic>;
// // // // //     return Task(
// // // // //       id: doc.id,
// // // // //       title: data['title'] ?? '',
// // // // //       description: data['description'] ?? '',
// // // // //       imageUrl: data['imageUrl'],
// // // // //       isCompleted: data['isCompleted'] ?? false,
// // // // //       createdAt: (data['createdAt'] as Timestamp).toDate(),
// // // // //     );
// // // // //   }

// // // // //   Map<String, dynamic> toMap() {
// // // // //     return {
// // // // //       'title': title,
// // // // //       'description': description,
// // // // //       'imageUrl': imageUrl,
// // // // //       'isCompleted': isCompleted,
// // // // //       'createdAt': createdAt,
// // // // //     };
// // // // //   }

// // // // //   Task copyWith({
// // // // //     String? id,
// // // // //     String? title,
// // // // //     String? description,
// // // // //     String? imageUrl,
// // // // //     bool? isCompleted,
// // // // //     DateTime? createdAt,
// // // // //   }) {
// // // // //     return Task(
// // // // //       id: id ?? this.id,
// // // // //       title: title ?? this.title,
// // // // //       description: description ?? this.description,
// // // // //       imageUrl: imageUrl ?? this.imageUrl,
// // // // //       isCompleted: isCompleted ?? this.isCompleted,
// // // // //       createdAt: createdAt ?? this.createdAt,
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // class Task {
// // // //   final String id;
// // // //   final String title;
// // // //   final String description;
// // // //   final String? imageUrl;
// // // //   final bool isCompleted;
// // // //   final Timestamp createdAt;

// // // //   Task({
// // // //     required this.id,
// // // //     required this.title,
// // // //     required this.description,
// // // //     this.imageUrl,
// // // //     required this.isCompleted,
// // // //     required this.createdAt,
// // // //   });

// // // //   // Convert Task to Map for Firestore
// // // //   Map<String, dynamic> toMap() {
// // // //     return {
// // // //       'title': title,
// // // //       'description': description,
// // // //       'imageUrl': imageUrl,
// // // //       'isCompleted': isCompleted,
// // // //       'createdAt': createdAt,
// // // //     };
// // // //   }

// // // //   // Create a Task object from Firestore snapshot
// // // //   factory Task.fromSnapshot(DocumentSnapshot snapshot) {
// // // //     final data = snapshot.data() as Map<String, dynamic>;
// // // //     return Task(
// // // //       id: snapshot.id,
// // // //       title: data['title'],
// // // //       description: data['description'],
// // // //       imageUrl: data['imageUrl'],
// // // //       isCompleted: data['isCompleted'],
// // // //       createdAt: data['createdAt'],
// // // //     );
// // // //   }

// // // //   Task copyWith({
// // // //     String? title,
// // // //     String? description,
// // // //     String? imageUrl,
// // // //     bool? isCompleted,
// // // //   }) {
// // // //     return Task(
// // // //       id: id,
// // // //       title: title ?? this.title,
// // // //       description: description ?? this.description,
// // // //       imageUrl: imageUrl ?? this.imageUrl,
// // // //       isCompleted: isCompleted ?? this.isCompleted,
// // // //       createdAt: createdAt,
// // // //     );
// // // //   }
// // // // }
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // class Task {
// // //   final String id;
// // //   final String title;
// // //   final String description;
// // //   final bool isCompleted;
// // //   final DateTime createdAt;
// // //   final String userId;

// // //   Task({
// // //     required this.id,
// // //     required this.title,
// // //     required this.description,
// // //     required this.isCompleted,
// // //     required this.createdAt,
// // //     required this.userId,
// // //   });

// // //   // Convert Firestore snapshot to Task
// // //   factory Task.fromSnapshot(DocumentSnapshot snapshot) {
// // //     final data = snapshot.data() as Map<String, dynamic>;
// // //     return Task(
// // //       id: snapshot.id,
// // //       title: data['title'] ?? '',
// // //       description: data['description'] ?? '',
// // //       isCompleted: data['isCompleted'] ?? false,
// // //       createdAt: (data['createdAt'] as Timestamp).toDate(),
// // //       userId: data['userId'] ?? '',
// // //     );
// // //   }

// // //   // Convert Task to Firestore map
// // //   Map<String, dynamic> toMap([String? id]) {
// // //     return {
// // //       'id': id ?? this.id,
// // //       'title': title,
// // //       'description': description,
// // //       'isCompleted': isCompleted,
// // //       'createdAt': createdAt,
// // //       'userId': userId,
// // //     };
// // //   }

// // //   // Copy task with updated fields
// // //   Task copyWith({
// // //     String? title,
// // //     String? description,
// // //     bool? isCompleted,
// // //   }) {
// // //     return Task(
// // //       id: id,
// // //       title: title ?? this.title,
// // //       description: description ?? this.description,
// // //       isCompleted: isCompleted ?? this.isCompleted,
// // //       createdAt: createdAt,
// // //       userId: userId,
// // //     );
// // //   }
// // // }

// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class Task {
// //   final String id;
// //   final String userId;
// //   final String title;
// //   final String description;
// //   final Timestamp createdAt;

// //   Task({
// //     required this.id,
// //     required this.userId,
// //     required this.title,
// //     required this.description,
// //     required this.createdAt,
// //   });

// //   // Method to create a copy of the task with updated values
// //   Task copyWith({
// //     String? title,
// //     String? description,
// //   }) {
// //     return Task(
// //       id: this.id,
// //       userId: this.userId,
// //       title: title ?? this.title,
// //       description: description ?? this.description,
// //       createdAt: this.createdAt,
// //     );
// //   }

// //   // Create a Task object from Firestore snapshot
// //   factory Task.fromSnapshot(DocumentSnapshot snapshot) {
// //     return Task(
// //       id: snapshot.id,
// //       userId: snapshot['userId'],
// //       title: snapshot['title'],
// //       description: snapshot['description'],
// //       createdAt: snapshot['createdAt'],
// //     );
// //   }

// //   // Convert Task object to a map for Firestore
// //   Map<String, dynamic> toMap() {
// //     return {
// //       'userId': userId,
// //       'title': title,
// //       'description': description,
// //       'createdAt': createdAt,
// //     };
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';

// class Task {
//   final String id;
//   final String userId;
//   late final String title;
//   late final String description;
//   final Timestamp createdAt;

//   Task({
//     required this.id,
//     required this.userId,
//     required this.title,
//     required this.description,
//     required this.createdAt,
//   });

//   // Method to create a copy of the task with updated values
//   Task copyWith({
//     String? title,
//     String? description,
//   }) {
//     return Task(
//       id: this.id,
//       userId: this.userId,
//       title: title ?? this.title,
//       description: description ?? this.description,
//       createdAt: this.createdAt,
//     );
//   }

//   // Create a Task object from Firestore snapshot
//   factory Task.fromSnapshot(DocumentSnapshot snapshot) {
//     return Task(
//       id: snapshot.id,
//       userId: snapshot['userId'],
//       title: snapshot['title'],
//       description: snapshot['description'],
//       createdAt: snapshot['createdAt'],
//     );
//   }

//   // Convert Task object to a map for Firestore
//   Map<String, dynamic> toMap() {
//     return {
//       'userId': userId,
//       'title': title,
//       'description': description,
//       'createdAt': createdAt,
//     };
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  final String id;
  final String userId;
  String title;
  String description;
  final bool isCompleted; // New field to track task completion
  final Timestamp createdAt;

  Task({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.isCompleted, // Include isCompleted in the constructor
    required this.createdAt,
  });

  // Copy with method to allow updates to specific fields
  Task copyWith({
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Task(
      id: this.id,
      userId: this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted:
          isCompleted ?? this.isCompleted, // Include isCompleted in copyWith
      createdAt: this.createdAt,
    );
  }

  // Factory constructor to create a Task from a Firestore snapshot
  factory Task.fromSnapshot(DocumentSnapshot snapshot) {
    return Task(
      id: snapshot.id,
      userId: snapshot['userId'],
      title: snapshot['title'],
      description: snapshot['description'],
      isCompleted: snapshot['isCompleted'] ??
          false, // Default to false if not set in Firestore
      createdAt: snapshot['createdAt'],
    );
  }

  // Convert Task to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'title': title,
      'description': description,
      'isCompleted': isCompleted, // Include isCompleted in the map
      'createdAt': createdAt,
    };
  }
}
