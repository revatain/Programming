// 1급 객체
// 변수에 할당 할수 있어야함.
// 함수나 객체의 매개변수로 넘길 수 있어야 함.
// 함수나 객체의 리턴값으로 리턴 가능해야 한다.

// 자바는 최상단에 class 이외의 것이 올 수 없다.
public class FirstClass {
    public static void main(String[] args) {
        FirstClass firstClass = new FirstClass();
        firstClass.runFunction(new MyInterface(){
            @Override
            public void myFunction() {
                System.out.println("함수 실행됨");
            }
        });  
    }

    String str = "aa";
    void hello() {
        System.out.println("hello");
    }
    // 매개변수로 함수를 넘겨서 넘긴 함수를 실행 
    // -> 넘길 함수를 만들어야 함. (익명함수)
    void runFunction() {

    }
}

interface MyInterface{
    void myFunction();
}