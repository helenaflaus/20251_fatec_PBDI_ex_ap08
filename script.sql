--Para os exercícios que não especifiquem intervalos explicitamente, considere os seguintes
--intervalos.
--Números inteiros: [1, 100]
--Números reais: [1, 10]
--FLOOR() é uma função matemática no PostgreSQL que arredonda um número para baixo

--1.2. Faça um programa que gere um valor real e o exiba.
DO $$
DECLARE
    -- NUMERIC (x, y): até X digitos, sendo 2 após a vírgula
    n2 NUMERIC (5, 2);
    limite_inferior INT := 1;
    limite_superior INT := 10;
BEGIN
    -- 1 <= ne <= 10 (real)
    n2 := random() * (limite_superior - limite_inferior + 1) + limite_inferior;
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
    -- random() * 99 = 0.000x a 99.99 
    -- random() * 99 + 1 = (0.000x a 99.99) + 1 temos 1 a 100
    n1 := FLOOR(random() * (limite_superior - limite_inferior + 1) + limite_inferior);
    RAISE NOTICE 'n1: %', n1;
END;
$$