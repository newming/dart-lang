// 静态成员
void main() {
  var page = new Page();
  page.scrollUp();
  Page.scrollDown();
}

class Page {
  static int currentPage = 1;

  static void scrollDown() {
    currentPage = 1;
    print("scroll down...");
  }

  void scrollUp() {
    currentPage++;
    print("scroll up...");
  }
}
