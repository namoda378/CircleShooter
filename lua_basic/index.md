# 루아베이직
----------------------

## 목차
* 계속 업데이트 중인 문서입니다.

<br/>

1. [변수와 연산](#1-변수와-연산) 
2. [배열과 테이블 {}](#2-배열과-테이블) 
3. [조건문 if](#3-조건문-if)
4. [반복문 for](#4-반복문-for)
5. [함수 function](#5-함수-function)

<br/>

### 중급으로 가는 길 
   - [Lua의 4요소](./docs/four_elements.md)
   - [메모리와 코드의 실행](./execution.md)
   - [변수에 대한 더 깊은 이해](./variables.md)
   - 루아 영문 가이드 : https://docs.coronalabs.com/guide/start/introLua/index.html

<br/>

------------------------------------------------------------------------------


## 1. 변수와 연산 

   1. 변수의 이름은 영대소문자로 시작하고, 그 뒤에 공백없이 영대소문자 및 '_'기호와 숫자로 이루어져 있다.

      * apple  apple1  Apple  Apple_1  AppleOne  apple___one  ... 등 
   
      * 다음의 단어들은 변수의 이름으로 쓸 수 없는 데, 이는 Lua 에서 이미 용도가 약속된 단어들이기 때문이다. ( 이런 단어들을 Keyword 라고 부른다. )
         * local    and    break    do    else    elseif    end    false    for    function    if    in    nil    not    or    repeat    return    then    true    until    while

```lua 
   -- local, .. , +-/* 

   local namo1 = 5
   namo1 = 3 + 5 
   print( namo1 )
   -- 출력 : 8 

   local cy = 6 + namo1 
   print( cy )
   -- 출력 : 14 

   local my_dogs_name = "DDuby"
   local his_dogs_name = "Mimi"

   print( my_dogs_name + his_dogs_name  )
   -- 오류 !! 

   print( my_dogs_name .. his_dogs_name  )
   -- 출력 : DDubyMimi
```

   2. 연산은 사칙연산과 나머지(%)연산, 그리고 문자열 이어붙이기(..) 연산이 있다. 

```lua 
   local apple_1 = "Green Apple"
   local apple_2 = "Red Apple"

   local apples = apple_1 .. " and " .. apple_2
   
   print( apples )
   -- 출력 : Green Apple and Red Apple 

   local var1 = 12

   print( var1 + 5 ) 
   -- 출력 : 17
   print( var1 - 5 ) 
   -- 출력 : 7
   print( var1 * 5 ) 
   -- 출력 : 60
   print( var1 / 5 ) 
   -- 출력 : 2.4
   print( var1 % 5 ) 
   -- 출력 : 2

```

----------------------------------------------------------------
## 2. 배열과 테이블
   
   1. 배열은 변수의 나열이라고 볼 수 있다. 

```lua 

   local array = {1,2,4,6,8,13,15}

   -- 배열 원소의 접근 
   print(array[1]) -- 출력 : 1
   print(array[2]) -- 출력 : 2
   print(array[3]) -- 출력 : 4
   
   print(array[3] + array[5]) -- 출력 : 12
   print(array[4] + array[6]) -- 출력 : 19

```

   2. 테이블은 key값(이름)과 value값(할당값)의 나열이라고 볼 수 있다. 
      
      * 사실 루아에서 배열은 그저 자동으로 순서가 key값으로 지정된 테이블이라는 것을 알게 될 것이다!
      
      * table 이라는 이름의 테이블을 만들 수 없다. table은 루아에서 그 용도가 이미 지정된 단어이기 때문이다. 

```lua 

   local table = {}
   -- 오류 !! 

   local my_dog_table = {name="치치",age=3,breed="Maltese"}
   -- OK

   -- 테이블 원소의 접근 
   print(my_dog_table.name) -- 출력 : 치치
   print(my_dog_table.age) -- 출력 : 3
   print(my_dog_table.breed) -- 출력 : Maltese
   
   -- 테이블 정보 사용 예시 
   print("My dog's name is " .. my_dog_table.name .. " and she is " .. my_dog_table.age .. " years old" ) 
   -- 출력 : My dog's name is 치치 and she is 3 years old 
   
```

-----
## 3. 조건문 (if) 

   1. bool 변수 

      * 변수에 할당 할 수 있는 값의 종류(type)는 아래와 같다. (여태까지 배운거 기준 ...)
         * 숫자(number) : 1 , 2 , 3 , 3.14 , 1.125 .... 
         * 문자열(string) : "Hello" , "Green Apple" ....    
         * 배열 혹은 테이블(table) : {"apple","bee",100} , {"가",12,{1,2,3}}, {name="치치",age=3,breed="Maltese"}

      * 그런데 앞으로 두 가지 종류의 값이 더 있는 데, 하나는 boolean 이고 둘째는 function이다. function은 나중에 배우도록 하고, 조건문을 사용하기 위해 필요한 boolean 에 대해 배워보자. boolean type은 두가지 값을 포괄한다. 
         * 불리언(boolean) true false 

```lua 

   local a = 3 
   local b = "문자열입니다"
   local c = {"나","는","배열","이다"}

   local d = true 
   -- true(참) 값을 갖는 boolean type 변수 
   local e = false 
   -- false(거짓) 값을 갖는 boolean type 변수 

```

   2. 조건문은 아래와 같이 작성하고, 조건이 true 일 때에만 안에 있는 코드를 실행한다. 


```lua 

   local a = 3 

   if a == 3 then 
      print(" a is 3 !! ")
   end
   -- 출력 : a is 3 !! 

   if a == 2 then 
      print(" a is 2 !! ")
   end
   -- 출력 없음 !! 

```

-----
## 4. 반복문 (for)


```lua 

   for i1,v1 in ipairs({"a","b","c"}) do

      print("--------------------------------")

      for i2,v2 in ipairs({1,2,3}) do
      
         print(">>--------------------------------")

         print("hello " .. v1 .. " " .. v2)
      end 

   end

   --[[
      출력 : 

      --------------------------------
      >>--------------------------------
      hello a 1
      >>--------------------------------
      hello a 2
      >>--------------------------------
      hello a 3
      --------------------------------
      >>--------------------------------
      hello b 1
      >>--------------------------------
      hello b 2
      >>--------------------------------
      hello b 3
      --------------------------------
      >>--------------------------------
      hello c 1
      >>--------------------------------
      hello c 2
      >>--------------------------------
      hello c 3
   ]]
```

-----
## 5. 함수 (function)

   1. 함수는 if 나 for 처럼 코드를 담는 블록이다. 
      * if 는 조건이 true 일 때 안에 있는 코드가 실행된다.
      * for 는 테이블에 있는 원소의 갯수 만큼 안에 있는 코드가 실행된다.
      * function 은 함수가 호출될 때, 안에 있는 코드가 실행된다. 

```lua 
   local outer_var = "namo"

   function dosth(x)

   print(" dosth " .. "sth is called with " .. x .. " and outer var is still " .. outer_var)

   end

   -- for loop
   for i,v in ipairs({"apple","bee","cat"}) do 
   dosth(v)
   end
```