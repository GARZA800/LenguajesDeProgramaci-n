import Data.Char

-- 1) Obtener todas las posibles soluciones de x ,y, z del 1 al 100
[(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100],  z^2 == x^2 + y^2]

-- 2) 	Obtener la cantidad de números negativos entre -1000 y 1000
length[x | x <- [-1000..1000], x < 0]

--3) Obtener la suma de todos los números impares abajo de 1000000
sum[x | x <- [1 .. 100000], mod x 2 == 1]

--4) Cambiar un texto de minúsculas a mayúsculas usando list comprehension 
map toUpper [x | x <- ("lucia")]

--5) Obtener máximo de una lista 
maxlist [] = error "e"
maxlist [e] = e
maxlist (h:t) = max h (maxlist t)

--6) Factorial  
fact 0 = 1 
fact x = x * (fact(x-1))

--7) Obtener los 'n' últimos elementos de una lista 
lastt a [] c = error "e"
lastt a b 0 = 0   
lastt a b c = [last[b]] ++ [lastt(a, init[b], c-1)]