// 枚举

const spring = 0;
const summer = 1;
const autumn = 2;
const winter = 3;

void main() {
  var currentSeason = 1;

  switch (currentSeason) {
    case spring:
      print('1-3月');
      break;
    case summer:
      print('4-6月');
      break;
    case autumn:
      print('7-9月');
      break;
    case winter:
      print('10-12月');
      break;
  }

  Color aColor = Color.blue;
  print(aColor.index);

  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor);  // 'Color.blue'
  }
}

// 枚举定义
enum Color {
  red,
  green,
  blue
}
