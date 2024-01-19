-- 1.a
CREATE OR REPLACE PROCEDURE APPLY_SALARY_INCREASE(
    p_raise_amount IN NUMBER,
    p_percentage_increase IN NUMBER
) AS
    v_max_rentals        NUMBER;
    v_total_remaining    NUMBER;
    v_remaining_per_emp  NUMBER;
    v_highest_employee_id NUMBER;

    CURSOR EmployeeRentalsCursor IS
        SELECT EMPLOYEE_ID_RENT, COUNT(*) AS rental_count
        FROM RENTAL_TBL
        GROUP BY EMPLOYEE_ID_RENT;
BEGIN
    FOR emp IN EmployeeRentalsCursor LOOP
        IF v_highest_employee_id IS NULL OR emp.rental_count > v_max_rentals THEN
            v_max_rentals := emp.rental_count;
            v_highest_employee_id := emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    UPDATE EMPLOYEE_TBL
    SET SALARY = SALARY + (SALARY * p_percentage_increase / 100)
    WHERE EMPLOYEE_ID = v_highest_employee_id;

    SELECT COUNT(*) INTO v_max_rentals
    FROM RENTAL_TBL
    WHERE EMPLOYEE_ID_RENT <> v_highest_employee_id;

    v_total_remaining := p_raise_amount - (p_raise_amount * p_percentage_increase / 100);
    v_remaining_per_emp := v_total_remaining / v_max_rentals;

    FOR emp IN EmployeeRentalsCursor LOOP
        IF emp.EMPLOYEE_ID_RENT <> v_highest_employee_id THEN
            UPDATE EMPLOYEE_TBL
            SET SALARY = SALARY + v_remaining_per_emp
            WHERE EMPLOYEE_ID = emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    COMMIT;
END APPLY_SALARY_INCREASE;

SELECT * FROM EMPLOYEE_TBL;

DECLARE
    v_raise_amount       NUMBER := 1000;
    v_percentage_increase NUMBER := 30;
BEGIN
    APPLY_SALARY_INCREASE(p_raise_amount => v_raise_amount, p_percentage_increase => v_percentage_increase);
END;

SELECT * FROM EMPLOYEE_TBL;

-- 1.b

-- 1.c

-- 2.a
CREATE OR REPLACE PROCEDURE ALLOCATE_RAISES(
    p_total_raise_amount IN NUMBER
) AS
    v_total_positions NUMBER;
    v_raise_per_position NUMBER;
BEGIN
    SELECT COUNT(DISTINCT POSITION_TITLE) INTO v_total_positions
    FROM EMPLOYEE_TBL;

    IF v_total_positions = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No positions found.');
        RETURN;
    END IF;

    v_raise_per_position := p_total_raise_amount / v_total_positions;

    FOR emp IN (SELECT POSITION_TITLE, EMPLOYEE_ID
                FROM EMPLOYEE_TBL) LOOP
        UPDATE EMPLOYEE_TBL
        SET SALARY = SALARY + v_raise_per_position
        WHERE POSITION_TITLE = emp.POSITION_TITLE;
    END LOOP;

    COMMIT;
END ALLOCATE_RAISES;

SELECT * FROM EMPLOYEE_TBL;

DECLARE
    v_total_raise_amount NUMBER := 1000;
BEGIN
    ALLOCATE_RAISES(p_total_raise_amount => v_total_raise_amount);
END;

SELECT * FROM EMPLOYEE_TBL;

-- 2.b

-- 3.1a
    CREATE OR REPLACE PROCEDURE APPLY_SALARY_INCREASE_NEGATIVE_REMAINDER(
    p_raise_amount IN NUMBER,
    p_percentage_increase IN NUMBER
) AS
    v_max_rentals        NUMBER;
    v_total_remaining    NUMBER;
    v_remaining_per_emp  NUMBER;
    v_highest_employee_id NUMBER;

    CURSOR EmployeeRentalsCursor IS
        SELECT EMPLOYEE_ID_RENT, COUNT(*) AS rental_count
        FROM RENTAL_TBL
        GROUP BY EMPLOYEE_ID_RENT;
BEGIN
    FOR emp IN EmployeeRentalsCursor LOOP
        IF v_highest_employee_id IS NULL OR emp.rental_count > v_max_rentals THEN
            v_max_rentals := emp.rental_count;
            v_highest_employee_id := emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    UPDATE EMPLOYEE_TBL
    SET SALARY = SALARY + (SALARY * p_percentage_increase / 100)
    WHERE EMPLOYEE_ID = v_highest_employee_id;

    SELECT COUNT(*) INTO v_max_rentals
    FROM RENTAL_TBL
    WHERE EMPLOYEE_ID_RENT <> v_highest_employee_id;

    v_total_remaining := p_raise_amount - (p_raise_amount * p_percentage_increase / 100);

    IF v_total_remaining < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Negative remainder. Raise amount too small for percentage.');
    END IF;

    v_remaining_per_emp := v_total_remaining / v_max_rentals;

    FOR emp IN EmployeeRentalsCursor LOOP
        IF emp.EMPLOYEE_ID_RENT <> v_highest_employee_id THEN
            UPDATE EMPLOYEE_TBL
            SET SALARY = SALARY + v_remaining_per_emp
            WHERE EMPLOYEE_ID = emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END APPLY_SALARY_INCREASE_NEGATIVE_REMAINDER;

DECLARE
    v_raise_amount       NUMBER := 1000;
    v_percentage_increase NUMBER := -130;
BEGIN
    APPLY_SALARY_INCREASE_NEGATIVE_REMAINDER(p_raise_amount => v_raise_amount, p_percentage_increase => v_percentage_increase);
END;

-- 3.2a
CREATE OR REPLACE PROCEDURE APPLY_SALARY_INCREASE_NULL_SALARY(
    p_raise_amount IN NUMBER,
    p_percentage_increase IN NUMBER
) AS
    v_max_rentals        NUMBER;
    v_total_remaining    NUMBER;
    v_remaining_per_emp  NUMBER;
    v_highest_employee_id NUMBER;

    CURSOR EmployeeRentalsCursor IS
        SELECT EMPLOYEE_ID_RENT, COUNT(*) AS rental_count
        FROM RENTAL_TBL
        GROUP BY EMPLOYEE_ID_RENT;
BEGIN
    FOR emp IN EmployeeRentalsCursor LOOP
        IF v_highest_employee_id IS NULL OR emp.rental_count > v_max_rentals THEN
            v_max_rentals := emp.rental_count;
            v_highest_employee_id := emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    UPDATE EMPLOYEE_TBL
    SET SALARY = SALARY + (SALARY * p_percentage_increase / 100)
    WHERE EMPLOYEE_ID = v_highest_employee_id;

    SELECT COUNT(*) INTO v_max_rentals
    FROM RENTAL_TBL
    WHERE EMPLOYEE_ID_RENT <> v_highest_employee_id;

    v_total_remaining := p_raise_amount - (p_raise_amount * p_percentage_increase / 100);

    IF v_total_remaining IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Some employees have NULL salary values.');
    END IF;

    v_remaining_per_emp := v_total_remaining / v_max_rentals;

    FOR emp IN EmployeeRentalsCursor LOOP
        IF emp.EMPLOYEE_ID_RENT <> v_highest_employee_id THEN
            UPDATE EMPLOYEE_TBL
            SET SALARY = SALARY + v_remaining_per_emp
            WHERE EMPLOYEE_ID = emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END APPLY_SALARY_INCREASE_NULL_SALARY;

DECLARE
    v_raise_amount       NUMBER := 1000;
    v_percentage_increase NUMBER := 30;

    v_employee_id_with_null_salary NUMBER := 5;
BEGIN
    UPDATE EMPLOYEE_TBL SET SALARY = NULL WHERE EMPLOYEE_ID = v_employee_id_with_null_salary;

    APPLY_SALARY_INCREASE_NULL_SALARY(p_raise_amount => v_raise_amount, p_percentage_increase => v_percentage_increase);
END;

-- 3.3a
CREATE OR REPLACE PROCEDURE APPLY_SALARY_INCREASE_CONTRADICTORY_PARAMETERS(
    p_raise_amount IN NUMBER,
    p_percentage_increase IN NUMBER
) AS
    v_max_rentals        NUMBER;
    v_total_remaining    NUMBER;
    v_remaining_per_emp  NUMBER;
    v_highest_employee_id NUMBER;

    CURSOR EmployeeRentalsCursor IS
        SELECT EMPLOYEE_ID_RENT, COUNT(*) AS rental_count
        FROM RENTAL_TBL
        GROUP BY EMPLOYEE_ID_RENT;
BEGIN
    FOR emp IN EmployeeRentalsCursor LOOP
        IF v_highest_employee_id IS NULL OR emp.rental_count > v_max_rentals THEN
            v_max_rentals := emp.rental_count;
            v_highest_employee_id := emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    UPDATE EMPLOYEE_TBL
    SET SALARY = SALARY + (SALARY * p_percentage_increase / 100)
    WHERE EMPLOYEE_ID = v_highest_employee_id;

    SELECT COUNT(*) INTO v_max_rentals
    FROM RENTAL_TBL
    WHERE EMPLOYEE_ID_RENT <> v_highest_employee_id;

    v_total_remaining := p_raise_amount - (p_raise_amount * p_percentage_increase / 100);

    IF v_total_remaining < 0 OR p_raise_amount <= 0 OR p_percentage_increase <= 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Contradictory procedure parameters.');
    END IF;

    v_remaining_per_emp := v_total_remaining / v_max_rentals;

    FOR emp IN EmployeeRentalsCursor LOOP
        IF emp.EMPLOYEE_ID_RENT <> v_highest_employee_id THEN
            UPDATE EMPLOYEE_TBL
            SET SALARY = SALARY + v_remaining_per_emp
            WHERE EMPLOYEE_ID = emp.EMPLOYEE_ID_RENT;
        END IF;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END APPLY_SALARY_INCREASE_CONTRADICTORY_PARAMETERS;

DECLARE
    v_raise_amount       NUMBER := -1000;
    v_percentage_increase NUMBER := 30;
BEGIN
    APPLY_SALARY_INCREASE_CONTRADICTORY_PARAMETERS(p_raise_amount => v_raise_amount, p_percentage_increase => v_percentage_increase);
END;

-- 3.1b
-- 3.2b
-- 3.3b

-- 3.1c
-- 3.2c
-- 3.3c