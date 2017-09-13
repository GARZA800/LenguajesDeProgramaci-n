--Lucía Garza A01361235 
--1) Entero positivo más pequeño que puede ser dividido por 
--cualquiera de los números entre 1 y 20 sin que exista residuo (residuo cero)
foldr1 lcm[1..20]
--2)Dada una secuencia de números primos. Cuál es el número primo 10,001 de la secuencia?
isPrime n = null [ x | x <- [2..n-1], n `mod` x  == 0]
(filter isPrime [2..])!!10000
--3)Palíndromo más grande formado a partir del producto de dos números de 3 dígitos
maximum[ x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]
--4) función que reciba un árbol y que imprima los valores del árbol en INORDER
data Tree x = Empty | Node x (Tree x ) (Tree x) deriving (Show, Read, Eq)
treeToList Empty = []
treeToList (Node n left right) = treeToList left ++ [n] ++ treeToList right