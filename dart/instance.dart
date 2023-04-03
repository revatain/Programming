class Cat{
  // 필드 - 객체 데이터, 메소드 - 객체의 기능, 생성자 - 객체 생성
  String name;
  void say() {
    print("야옹");
  }
  Cat(this.name);
  
}
void main(List<String> args) {
  // 오브젝트 - 실체가 아닌 대상의 타입
   Cat cat;
  // 인스턴스 - 실체화된 대상
   new Cat("나비");
}