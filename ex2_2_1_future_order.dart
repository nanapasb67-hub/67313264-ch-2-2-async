void main() {
  print("1. เริ่ม");
  Future.delayed(Duration(seconds: 3), () {
    return "2. โหลดเสร็จ";
  }).then((value) {
    print(value);
  });

  print("3. จบ");
}
// คิดว่าผลรันจะออก 1 , 3 ,2 เนื่องจากใช้ฟังก์ชัน future.delayed ทำให้มันข้ามไปแสดงผลลัพธ์ที่สามก่อนแล้วค่อยวนกลับมาที่ข้อสองใหม่เป็นลำดับสุดท้าย