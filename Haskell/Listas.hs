module Listas where

--         lista, indice, elemento -> lista con elemento
inserta :: [a] -> Int -> a -> [a]
-- el '_' es para representar como lo que sea, en este caso es un entero, así
-- que es el entero que queramos.
-- En clase puse: inserta [] 0 y = [y]
-- Pero podemos abarcar ese caso con la línea de abajo.
inserta [] _ y = [y]
inserta (x:xs) 0 y = [y] ++ (x:xs)
inserta (x:xs) n y = [x] ++ inserta xs (n-1) y

-- head L = el primer elemento de una lista, ya está implementada en haskell,
--          pero podemos implmentarla nosotros con el nombre 'cabeza'.
--        lista y regresa un elemento del tipo del que es la lista
cabeza :: [a] -> a
cabeza [] = error "No tiene elementos." --Si es la lista vacía no podemos regresar nada.
cabeza (x:xs) = x

-- tail L = la cola de una lista, que es toda la lista menos la cabeza, en (x:xs)
--          xs es la cola, y x es la cabeza. Ya está implementada, pero podemos
--          implementarla, y la llamamos cola.
--      lista y regresa una lista, recuerden que la cola en haskell es una lista.
cola :: [a] -> [a]
cola [] = []
cola (x:xs) = xs

{-
Cabeza y Cola son como lo básico de listas.
Les dejo abajo las que hicimos hoy.
-}
--         lista, y regresa una lista.
reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

--             lista y regresa una lista, pero siempre es la vacía.
eliminaTodo :: [a] -> [a]
eliminaTodo [] = []
eliminaTodo (x:xs) = []

longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

{-
Les dejo como ejercicio una función misteriosa, el jueves si la hacen y quieren,
vemos qué es lo que hace :)
-}

mist [] _ = []
mist (x:xs) 0 = xs
mist (x:xs) n = [x] ++ mist xs (n-1)

{-
Les dejo aquí unos ejemplos DOE mist, los pueden correr así:
 ghci Listas.hs
mist1 (Dan enter)
mist2
mist3
Las demás funciones tienen que recibir parámetros, igual que mist, solo que aquí
les puse ejemplos ya hechos.
-}

mist1 = mist [1,2,3,4,5] 0
--Regresa: [2,3,4,5]

mist2 = mist [1,2,3,4,5] 3
--Regresa: [1,2,3,5]

mist3 = mist [1,2,3,4,5] 100
--Regresa: [1,2,3,4,5]
