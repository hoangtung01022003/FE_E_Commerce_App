import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // Bắt đầu vẽ từ góc trái trên cùng của widget
    path.lineTo(0, size.height);

    // Vẽ bo tròn góc bên trái của widget
    // Tọa độ của điểm điều khiển đầu tiên cho đường cong (Bezier curve)
    final firstCurve = Offset(0, size.height - 20); // Điểm điều khiển thứ nhất
    // Tọa độ của điểm kết thúc cho đường cong (Bezier curve)
    final lastCurve =
        Offset(30, size.height - 20); // Điểm cuối cùng của đoạn đường cong
    // Tạo đoạn đường cong từ vị trí hiện tại tới điểm lastCurve thông qua điểm điều khiển firstCurve
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // Tạo một đoạn đường cong khác phía dưới (gần giữa widget)
    // Tọa độ của điểm điều khiển thứ hai
    final secondFirstCurve = Offset(0, size.height - 20);
    // Tọa độ của điểm kết thúc cho đoạn đường cong thứ hai
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    // Vẽ đường cong thứ hai, tương tự như trên
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    // Tạo đường cong cho phần bên phải của widget
    // Điểm điều khiển và điểm cuối của đoạn đường cong
    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    // Vẽ đường cong từ phần cuối phía dưới bên phải
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);

    // Kết thúc đường vẽ bằng cách nối tới cạnh phải phía trên của widget
    path.lineTo(size.width, 0);
    path.close(); // Kết thúc và đóng đường Path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Nếu true, đường cắt sẽ được vẽ lại khi widget thay đổi
    return true;
  }
}
