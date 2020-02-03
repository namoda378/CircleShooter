# 루아베이직 - 중급 - 메모리와 코드실행
-----

### 블록의 종류와 실행 순서에의 영향 

   1. 조건문 
      
      if 블록 내부에 있는 코드는 조건이 true 일 때에만 실행되고, 아니면 건너 뛴다. 주석 (--) 뒤에 있는 숫자는 몇 번째로 실행되는 코드인지를 의미 

      ```lua
         local boolean_1 = false    -- 1

         if boolean_1 then          
            
            print("one")           
         
         end                        
         -- 출력 없음, 코드 실행 안됨 

         if boolean_1 == true then  

            print("two")
         
         end                       
         -- 출력 없음, 코드 실행 안됨 

         if boolean_1 == false then 
            print("three")          -- 2
         end                        
         -- 출력 : three 

         if not boolean_1 then     
            print("four")           -- 3
         end                       
         -- 출력 : four
      ```

   2. 반복문 

      for 블록 내부에 있는 코드는 반복자(iterator)를 반환하는 함수 pairs()나 ipairs()에 넘겨준 테이블{}의 원소 갯수 만큼 반복하여 실행된다. 만약 `for i = a,b do` 구문을 사용하였다면, b - a + 1 회 즉 a <= x <= b  인 x 의 갯수만큼 실행된다. 
      
      ```lua 
         local my_var = 0                   -- 1  

         for i,v in ipairs({1,2,3}) do     

            my_var = my_var + v             -- 2 4 6
            print(my_var)                   -- 3 5 7
         
         end                            
         --[[ 츨력 :
            1
            3
            6
         ]]

         for i,v in ipairs({}) do           
            print("hello")                  
         end                                
         -- 출력 없음, 한번도 실행되지 않는다. 

         for i = 1,3 do                     
            print("hi")                     -- 8  9  10
         end                                
         --[[ 출력:
            hi 
            hi 
            hi
         ]]

         for i = 1,-1 do                    
            print("hey") 
         end                                
         -- 출력 없음, 한번도 실행되지 않는다. 
      ``` 

   3. 함수 

      function 블록 내부에 있는 코드는, 함수가 호출이 될 때에만 실행된다 !! 

      ```lua 
         local my_var = 0                   -- 1  
      
         function add1toVar()               

            my_var = my_var + 1             --   3  12
            print(my_var)                   --   4  13

         end                               
         
         function subtract2fromVar()        
            
            my_var = my_var - 2             --   6  9
            print(my_var)                   --   7  10
            
         end                                

         add1toVar()                        -- 2
         
         subtract2fromVar()                 -- 5
         subtract2fromVar()                 -- 8

         add1toVar()                        -- 11
      ``` 

      위의 코드에서 출력에 대한 주석은 달지 않았다. 출력은 어떻게 될까? 
      
-----
### 심화 예제 

   ```lua

      for i = 1,3 do 

         print("ey")                    -- 1        4        7

         for i2 = 1,2 do 

            print("ih")                 --    2  3     5  6     8  9

         end

      end

   ```