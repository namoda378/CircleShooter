# CircleShooter
Circle 을 Shoot 하여 Enemy를 Defeat 하시오 

코로나 sdk 웹사이트 
   https://coronalabs.com/

프로그래밍 언어 루아 놀이터 
   https://repl.it/languages/lua




### 루아 기본 
------------------------------------------------------------------------------

#### 1. 변수와 연산 

   1. 변수의 이름은 영대소문자로 시작하고, 그 뒤에 공백없이 영대소문자 및 '_'기호와 숫자로 이루어져 있다.
      * apple apple1 Apple Apple_1 AppleOne apple___one 등 

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

#### 2. 배열과 테이블
----------------------------------------------------------------
   
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


#### 4. 반복문 
-----

#### 5. 함수
-----

#### 6. 블록 
-----
   1. 코드의 실행 순서 



