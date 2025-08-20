
-- Programa 1
programa1 :: IO ()
programa1 = do
  putStrLn "Ingrese su edad:"
  edad <- readLn :: IO Int
  if edad >= 18
    then putStrLn "Eres mayor de edad"
    else putStrLn "Eres menor de edad"

-- Programa 2
programa2 :: IO ()
programa2 = do
  putStrLn "Ingrese un numero:"
  n <- readLn :: IO Int
  if n > 0
    then putStrLn "El numero es positivo"
    else if n < 0
      then putStrLn "El numero es negativo"
      else putStrLn "El numero es cero"

-- Programa 3
programa3 :: IO ()
programa3 = do
  putStrLn "Ingrese un numero:"
  n <- readLn :: IO Int
  if even n
    then putStrLn "El numero es par"
    else putStrLn "El numero es impar"

-- Programa 4
programa4 :: IO ()
programa4 = do
  putStrLn "Ingrese el primer numero:"
  a <- readLn :: IO Int
  putStrLn "Ingrese el segundo numero:"
  b <- readLn :: IO Int
  putStrLn ("El mayor es: " ++ show (max a b))

-- Programa 5
programa5 :: IO ()
programa5 = do
  putStrLn "Ingrese el primer numero:"
  a <- readLn :: IO Int
  putStrLn "Ingrese el segundo numero:"
  b <- readLn :: IO Int
  putStrLn "Ingrese el tercer numero:"
  c <- readLn :: IO Int
  putStrLn ("El menor es: " ++ show (minimum [a, b, c]))

-- Programa 6
programa6 :: IO ()
programa6 = do
  putStrLn "Ingrese un numero:"
  n <- readLn :: IO Int
  putStrLn ("El factorial es: " ++ show (product [1..n]))

-- Programa 7
fibo :: Int -> [Int]
fibo n = take n (map fst (iterate (\(a,b) -> (b,a+b)) (0,1)))

programa7 :: IO ()
programa7 = do
  putStrLn "Ingrese cuantos terminos de Fibonacci desea:"
  n <- readLn :: IO Int
  putStrLn ("La serie es: " ++ show (fibo n))

-- Programa 8
programa8 :: IO ()
programa8 = do
  putStrLn "¿Cuántos numeros quiere sumar?"
  n <- readLn :: IO Int
  putStrLn "Ingrese los numeros separados por enter:"
  lista <- sequence (replicate n (readLn :: IO Int))
  putStrLn ("La suma es: " ++ show (sum lista))

-- Programa 9
programa9 :: IO ()
programa9 = do
  putStrLn "Ingrese un numero para la tabla de multiplicar:"
  n <- readLn :: IO Int
  mapM_ (\i -> putStrLn (show n ++ " x " ++ show i ++ " = " ++ show (n*i))) [1..10]

-- Menu
main :: IO ()
main = do
  putStrLn "=== Menu de Programas en Haskell ==="
  putStrLn "1. Mayor o menor de edad"
  putStrLn "2. Numero positivo o negativo"
  putStrLn "3. Par o impar"
  putStrLn "4. Maximo de dos numeros"
  putStrLn "5. Minimo de tres numeros"
  putStrLn "6. Factorial"
  putStrLn "7. Serie Fibonacci"
  putStrLn "8. Suma de lista"
  putStrLn "9. Tabla de multiplicar"
  putStrLn "Elige una opción (1-9):"
  opcion <- readLn :: IO Int
  case opcion of
    1 -> programa1
    2 -> programa2
    3 -> programa3
    4 -> programa4
    5 -> programa5
    6 -> programa6
    7 -> programa7
    8 -> programa8
    9 -> programa9
    _ -> putStrLn "Opción inválida"

