--Para os exercícios que não especifiquem intervalos explicitamente, considere os seguintes
--intervalos.
--Números inteiros: [1, 100]
--Números reais: [1, 10]
--FLOOR() é uma função matemática no PostgreSQL que arredonda um número para baixo

--1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
--valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve exibir o valor total do terreno.
DO $$
DECLARE
    a NUMERIC (3, 1);
    b NUMERIC (3, 1);
    area NUMERIC (3, 1);
    limite_inferior_ret NUMERIC := 1;
    limite_superior_ret NUMERIC := 10;
    valor_metro NUMERIC (3, 1);
    limite_inferior_val NUMERIC := 60;
    limite_superior_val NUMERIC := 70;
    valor_total NUMERIC (6, 1);
BEGIN
    a := random() * (limite_superior_ret - limite_inferior_ret) + limite_inferior_ret;
    b := random() * (limite_superior_ret - limite_inferior_ret) + limite_inferior_ret;
    area := a * b;
    RAISE NOTICE 'O terreno possui %m de frente e %m de lateral totalizando % m²', a, b, area;
    valor_metro := random() * (limite_superior_val - limite_inferior_val) + limite_inferior_val;
    valor_total := area * valor_metro;
    RAISE NOTICE 'O m² custa R$ % e o valor total do terreno é R$ %', valor_metro, valor_total;
END;
$$

--1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor e a raiz quadrada de seu sucessor.
DO $$
DECLARE
    n1 INT;
    n2 INT;
    n3 INT;
    limite_inferior INT := 1;
    limite_superior INT := 100;
BEGIN
    -- 1 <= n1 <= 100
    -- n1 := FLOOR(random() * (100 - 1 + 1) + 1)
    -- random() = 0 a 1
    -- floor = arredonda para baixo
    -- (0.0 a 0.99) * 100 + 1 = 1.0 a 100.0
    n1 := FLOOR(random() * (limite_superior - limite_inferior + 1) + limite_inferior);
    n2 := (n1 - 1) ^ 3;
    n3 := (n1 + 1) ^ 2;
    RAISE NOTICE 'n = %, raiz cúbica de seu antecessor = % e a raiz quadrada de seu sucessor = %', n1, n2, n3;
END;
$$

--1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
--que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
DO $$
DECLARE
    a NUMERIC (3, 1);
    b NUMERIC (3, 1);
    c NUMERIC (3, 1);
    limite_inferior NUMERIC := 1;
    limite_superior NUMERIC := 10;
    delta NUMERIC (5, 1);
BEGIN
    -- 1 <= ne <= 10 (real)
    -- (0.0 a 0.99) * 9 + 1 = 1.00 a 9.99
    a := random() * (limite_superior - limite_inferior) + limite_inferior;
    b := random() * (limite_superior - limite_inferior) + limite_inferior;
    c := random() * (limite_superior - limite_inferior) + limite_inferior;
    -- Δ = b² - 4ac
    delta := (b ^ 2) - 4 * a * c;
    RAISE NOTICE 'Delta de %, % e % é %', a, b, c, delta;
END;
$$

--1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma temperatura em graus Celsius. 
--Faça a conversão para Fahrenheit e exiba.
-- F = (9/5 * C) + 32
DO $$
DECLARE
    celsius NUMERIC (4, 2);
    fahrenheit NUMERIC (4, 2);
    limite_inferior NUMERIC := 20;
    limite_superior NUMERIC := 30;
BEGIN
    -- (0.0 a 0.99) * 10 + 20 = 20 a 29.99
    celsius := random() * (limite_superior - limite_inferior) + limite_inferior;
    RAISE NOTICE 'celsius: %', celsius;
    fahrenheit := ((9 / 5) * celsius) + 32;
    RAISE NOTICE 'fahrenheit: %', fahrenheit;
END;
$$

--1.2. Faça um programa que gere um valor real e o exiba.
DO $$
DECLARE
    -- NUMERIC (x, y): até X digitos, sendo 2 após a vírgula
    n2 NUMERIC (4, 2);
    limite_inferior NUMERIC := 1;
    limite_superior NUMERIC := 10;
BEGIN
    -- 1 <= ne <= 10 (real)
    -- (0.0 a 0.99) * 9 + 1 = 1.00 a 9.99
    n2 := random() * (limite_superior - limite_inferior) + limite_inferior;
    RAISE NOTICE 'n2: %', n2;
END;
$$

--1.1 Faça um programa que gere um valor inteiro e o exiba.
DO $$
DECLARE
    n1 INT;
    --Números inteiros: [1, 100]
    limite_inferior INT := 1;
    limite_superior INT := 100;
BEGIN
    -- 1 <= n1 <= 100
    -- n1 := FLOOR(random() * (100 - 1 + 1) + 1)
    -- random() = 0 a 1
    -- floor = arredonda para baixo
    -- (0.0 a 0.99) * 100 + 1 = 1.0 a 100.0
    n1 := FLOOR(random() * (limite_superior - limite_inferior + 1) + limite_inferior);
    RAISE NOTICE 'n1: %', n1;
END;
$$