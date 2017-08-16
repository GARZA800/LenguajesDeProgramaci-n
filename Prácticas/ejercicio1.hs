 -- 1) Obtener todas las posibles soluciones de x ,y, z del 1 al 100
 [(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100],  z^2 == x^2 + y^2]

-- 2) 	Obtener la cantidad de números negativos entre -1000 y 1000
 length[x | x <- [-1000..1000], x < 0]

--3) Obtener la suma de todos los números impares abajo de 1000000
sum[x | x <- [1 .. 100000], mod x 2 == 1]

--4) Cambiar un texto de minúsculas a mayúsculas usando list comprehension 
map toUpper [x | x <- ("lucia")]