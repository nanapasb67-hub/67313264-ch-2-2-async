void main() async {
  print("1. เริ่ม");
  String data = await Future.delayed(Duration(seconds: 3), () {
    return "2. โหลดเสร็จ";
  });
  print(data);
  print("3.จบ");
  
  }