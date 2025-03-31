--Para os exercícios que não especifiquem intervalos explicitamente, considere os seguintes
--intervalos.
--Números inteiros: [1, 100]
--Números reais: [1, 10]
--FLOOR() é uma função matemática no PostgreSQL que arredonda um número para baixo

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