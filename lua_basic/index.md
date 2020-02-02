# 루아 기본 
------------------------------------------------------------------------------

### 1. 변수와 연산 

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
### 2. 배열과 테이블
   
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
#### 4. 반복문 

-----
#### 5. 함수

-----
#### 6. 블록 
   1. 코드의 실행 순서 
