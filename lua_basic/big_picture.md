# 루아베이직 - 큰 그림
----------------------

   0. Lua 코드란 무엇인가
      
      - 루아코드는 3가지 요소로 이루어져 있다. 
         - <span style="color:red;'">키워드</span> : local function and ...
         - <span style="color:green;'">변수명</span> : (사용자가 정의) apple apple1 my_name myName print ipairs ...
         - <span style="color:blue;'">연산자</span> : + / - * , ... 

      - <span style="color:green;'">변수명</span> print , ipairs , pairs은 코드 실행 시작 전 부터 이미 그 값이 함수로 정의되어 있다.
         - 이 <span style="color:green;'">변수명</span>에 무언가를 할당할 수도 있다 !!, 근데 초보일 땐, 절대 하지 말 것
            ```lua    
               -- 함수가 아닌 숫자를 할당
               print = 1 
               print("hello") 
               -- 오류 !! 함수가 아닌데 ()를 써서 호출 할 수 없음 !! 

               -- 아무것도 안하는 함수를 할당
               print = function() end 
               print("hello")
               -- 출력 없음 !! 기존 함수를 바꿔치웠기 때문에 아무것도 하지 않음
            ```

      - 이 세가지 요소를 문법(syntax)에 맞게 열거하면 실행 가능한 코드가 된다. 

   1. 핵심 <span style="color:red;'">키워드</span>와 <span style="color:blue;'">연산자</span> 요약. 
      
      - (핵심 <span style="color:red;'">키워드</span>와 핵심 <span style="color:blue;'">연산자</span>만 알아도 원하는 거의 모든 코드를 짤 수는 있다) 

      1. 핵심 <span style="color:red;'">키워드</span>
         - (핵심 <span style="color:red;'">키워드</span>를 포함해서 모든 <span style="color:red;'">키워드</span>는 변수명으로 쓰일 수 없다) 
         * local : 변수를 선언할 때,
         * if then end : 조건문을 만들 때,
         * for in do end : 반복문을 만들 때,
         * function return end : 함수를 만들 때,
         * true false : boolean 변수의 참 거짓 값,

      2. 핵심 <span style="color:blue;'">연산자</span> 
         - () {} 
         - \+ \- / * % 
         - = == 
         - .. 
         - ,

   3. 블록의 종류와 실행 순서

      - 조건문 
      - 반복문 
      - 함수 
