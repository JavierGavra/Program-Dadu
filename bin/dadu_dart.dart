import 'dart:io';
import 'dart:math';

void main() {
  // Membuat angka random (step 1)
  Random randomNumber = Random();
  String ulangYN;
  bool ulang = false;

  // Mencetak DADU
  do {
    // Membuat angka random (step 2)
    int angkaHoki = randomNumber.nextInt(100 + 1);
    if (angkaHoki <= 17) {
      print('#################\n#               #\n#               #\n#       O       #\n#               #\n#               #\n#################');
    } else if (angkaHoki <= 34) {
      print('#################\n#               #\n#       O       #\n#               #\n#       O       #\n#               #\n#################');
    } else if (angkaHoki <= 51) {
      print('#################\n#               #\n#          O    #\n#       O       #\n#    O          #\n#               #\n#################');
    } else if (angkaHoki <= 68) {
      print('#################\n#               #\n#    O     O    #\n#               #\n#    O     O    #\n#               #\n#################');
    } else if (angkaHoki <= 85) {
      print('#################\n#               #\n#    O     O    #\n#       O       #\n#    O     O    #\n#               #\n#################');
    } else {
      print('#################\n#               #\n#     O   O     #\n#     O   O     #\n#     O   O     #\n#               #\n#################');
    }

    // Pengulangan Program
    stdout.write('Ingin mengocok dadu lagi? (y/n) = ');
    ulangYN = stdin.readLineSync()!;
    if (ulangYN == "Y" || ulangYN == "y") {
      ulang = true;
      print('');
    } else if (ulangYN == "N" || ulangYN == "n") {
      ulang = false;
    } else {
      print('Lain kali input yg bener :(');
      return;
    }
  }while (ulang);
  print('Program Selesai :D');
}