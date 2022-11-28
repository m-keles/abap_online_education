*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG8
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_08_class_meth.

DATA: go_egitim_class TYPE REF TO z_cl_egitim_class.
DATA: gv_num1   TYPE int4,
      gv_num2   TYPE int4,
      gv_result TYPE int4.

START-OF-SELECTION.

  CREATE OBJECT go_egitim_class.

  gv_num1 = 5.
  gv_num2 = 7.


  go_egitim_class->sum_numbers(
    EXPORTING
      iv_num1   =  gv_num1  " Natürliche Zahl
      iv_num2   =  gv_num2   " Natürliche Zahl
    IMPORTING
      ev_result =  gv_result   " Natürliche Zahl
  ).

  WRITE: gv_result.

*Z_CL_EGITIM_CLASS=>sum_numbers_v2( ).
