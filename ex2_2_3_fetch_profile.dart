
Future<Map<String, dynamic>> fetchProfile(int userId) async {
  if (userId <= 0) {
    throw Exception("userId must be greater than 0");
  }

  
  return Future.delayed(Duration(seconds: 2), () => {
    "status": "success",
    "userId": userId,
    "name": "Nannapas",
    "role": "Student"
  });
}

void main() async {
  try {
    Map<String, dynamic> profile = await fetchProfile(12);
    print("Result: $profile");
  } catch (e) {
    print("Error caught: $e");
  } finally {
    print("Done");
  }
}