# 루아베이직 - 중급 - Lua의 4요소
----------------------

   0. Lua 코드란 무엇인가
      
      - 루아코드는 4가지 요소로 이루어져 있다. 
         - 키워드 : local function and ...
         - 변수명 : (사용자가 정의) apple apple1 my_name myName print ipairs ...
         - 연산자 : + / - * , {} () ... 
         - 리터럴 :
            - 불리언 : true , false (키워드라고 할 수도 있음)
            - 숫자 : 1 , 2 , 3.14 , 5.5 ...  
            - 문자열 : "Hello" , "cat says meow" 

      - 리터럴이란 ?
         - literally the value : 문자 그대로 바로 값을 표현한다는 의미
         - 이에 상반되는 것이 변수(variable) 이라고 할 수 있다. 
         ```lua    
            local a = 3
            local b = 5 

            -- 변수들을 통해 값을 할당한다.
            local c = a + b

            -- 리터럴만으로 변수에 값을 할당한다.
            local d = 3 + 5

            -- 실제론 리터럴과 변수를 섞어 쓰는 것이 많다. 
            local e = 3 + b
         ```

      - 변수명 print , ipairs , pairs은 코드 실행 시작 전 부터 이미 그 값이 함수로 정의되어 있다.
         - 이 변수명에 무언가를 할당할 수도 있다 !!, 근데 초보일 땐, 절대 하지 말 것
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

      - 이 4가지 요소를 문법(syntax)에 맞게 열거하면 실행 가능한 코드가 된다. 

   1. 핵심 키워드와 연산자 요약. 
      
      - 핵심 키워드 + 핵심 연산자 + 변수명 + 리터럴 4가지 요소 만으로 원하는 거의 모든 코드를 짤 수는 있다 

      1. 핵심 키워드
         - (핵심 키워드를 포함해서 모든 키워드는 변수명으로 쓰일 수 없다) 
         
         <br/>

         * local : 변수를 선언할 때,
         * if then end : 조건문을 만들 때,
         * for in do end : 반복문을 만들 때,
         * function return end : 함수를 만들 때,

      2. 핵심 연산자 
         - () {} 
         - \+ \- / * % 
         - = == 
         - .. 
         - ,
