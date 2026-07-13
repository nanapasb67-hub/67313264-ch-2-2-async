import 'dart:async';
void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (controller) {
    print("Notification received: $controller");
    },
    onDone: () {
      print("Stream closed: Notification system stopped.");
    },
  );
  
controller.add("มีข้อความทักมา");
controller.add("แบตเหลือต่ำกว่า 5%");
controller.add("แจ้งเตือนคลิปใหม่จากช่องที่คุณติดตาม");


controller.close();
}
