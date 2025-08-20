
# Verificacion de edad de la persona

edad = int(input("Ingresa tu edad: "))

if edad >= 18:
    print("Eres mayor de edad")
else:
    print("Eres menor de edad :(")

# contraseña
password = "Adacadabra03"
entrada = input("Ingresa tu contraseña: ")

if password.lower() == entrada.lower():
    print("Contraseña correcta")
else:
    print("Contraseña incorrecta,intente de nuevo")

# División con control de division x 0

try:
    a = float(input("Ingresa el numerador: "))
    b = float(input("Ingresa el denomidor: "))
    print("Resultado:", a / b)
except ZeroDivisionError:
    print("Error: no puedes dividir entre cero")

# par o impar

n = int(input("Ingresa un número entero: "))

if n % 2 == 0:
    print("El número es par")
else:
    print("El número es impar")

# Impuestos simples

edad = int(input("Ingresa tu edad: "))
ingresos = float(input("Ingresa tus ingresos mensuales en COP: "))

if edad >= 18 and ingresos >= 250000:
    print("Debes declarar impuestos ante la DIAN")
else:
    print("No estás obligado a declarar impuestos ante la DIAN")

# Asignación de grupos

nombre = input("Ingresa tu nombre: ")
genero = input("Ingresa tu género (M/F): ").upper()

if genero == "F" and nombre.lower() < "m":
    grupo = "A"
elif genero == "M" and nombre.lower() > "n":
    grupo = "A"
else:
    grupo = "B"

print(f"{nombre}, perteneces al grupo {grupo}")

# Evaluación de empleados

puntuacion = float(input("Ingresa tu puntuación (0.0, 0.4, 0.6 o más): "))

if puntuacion == 0.0:
    nivel = "Inaceptable"
elif puntuacion == 0.4:
    nivel = "Aceptable"
elif puntuacion >= 0.6:
    nivel = "Meritorio"
else:
    nivel = "Puntuación inválida"

if puntuacion in [0.0, 0.4] or puntuacion >= 0.6:
    recompensa = 2400 * puntuacion
    print(f"Nivel: {nivel} | Recompensa: ${recompensa:.2f}")
else:
    print("No se puede calcular la recompensa")

# pregunta del ticket - Arcade

edad = int(input("Ingresa tu edad: "))

if edad < 4:
    precio = 0
elif edad <= 18:
    precio = 5
else:
    precio = 10

print(f"El precio de tu entrada es ${precio}")

# Pedido de pizza

print("¿Quieres una pizza vegetariana? (si/no)")
opcion = input().lower()

if opcion == "sí" or opcion == "si":
    ingredientes = ["Pimiento", "Tofu"]
    base = "Pizza vegetariana"
else:
    ingredientes = ["Peperoni", "Jamón", "Salmón"]
    base = "Pizza no vegetariana"

print("Elige un ingrediente adicional:")
for i, ing in enumerate(ingredientes, 1):
    print(f"{i}. {ing}")

eleccion = int(input("Número de ingrediente: "))
ingrediente = ingredientes[eleccion - 1]

print(f"Has pedido una {base} con mozzarella, tomate y {ingrediente}")
