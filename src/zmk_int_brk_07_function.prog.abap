*&---------------------------------------------------------------------*
*& Report Z09_FG_PROG1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_07_function.

DATA: gv_num1   TYPE int4,
      gv_num2   TYPE int4,
      gv_result TYPE int4,
      gv_mes    TYPE char20.

START-OF-SELECTION.

  gv_num1 = 20.
  gv_num2 = 0.
  gv_mes = 'Mesaj1'.

  CALL FUNCTION 'Z09_FG_1_BAU'
    EXPORTING
      iv_num1         = gv_num1
      iv_num2         = gv_num2
    IMPORTING
      ev_result       = gv_result
    CHANGING
      cv_mes          = gv_mes
    EXCEPTIONS
      divided_by_zero = 1
      OTHERS          = 2.
  IF sy-subrc EQ 0.
    WRITE: / 'Ergebnis: ', gv_result.
    WRITE: / 'Mesaj: ', gv_mes.
  ELSEIF sy-subrc EQ 1.
    WRITE: / '0 a bolunmez'.
  ENDIF.
