*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG9
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_09_class_local.

CLASS math_op DEFINITION.
  PUBLIC SECTION.
    DATA: lv_num1   TYPE i,
          lv_num2   TYPE i,
          lv_result TYPE i.
    DATA: lv_public TYPE i.
    METHODS: sum_numbers.

  PROTECTED SECTION.

    DATA: lv_protected TYPE i.

  PRIVATE SECTION.
    DATA: lv_private TYPE i.


ENDCLASS.


CLASS math_op IMPLEMENTATION.
  METHOD sum_numbers.
    lv_result = lv_num1 + lv_num2.
    lv_public = 1.
    lv_protected = 1.
    lv_private = 1.
  ENDMETHOD.
ENDCLASS.

CLASS math_op_diff DEFINITION INHERITING FROM math_op.
  PUBLIC SECTION.
    METHODS num_diff.
ENDCLASS.

CLASS math_op_diff IMPLEMENTATION.
  METHOD num_diff.
    lv_result = lv_num1 - lv_num2.
    lv_public = 1.
    lv_protected = 1.
  ENDMETHOD.
ENDCLASS.

DATA: go_math_op TYPE REF TO math_op.
DATA: go_math_op_diff TYPE REF TO math_op_diff.

START-OF-SELECTION.

  CREATE OBJECT: go_math_op.
  CREATE OBJECT: go_math_op_diff.

  go_math_op->lv_num1 = 12.
  go_math_op->lv_num2 = 10.
  go_math_op_diff->lv_num1 = 12.
  go_math_op_diff->lv_num2 = 10.

  go_math_op->lv_public = 1.

  go_math_op->sum_numbers( ).
  WRITE: go_math_op->lv_result.

  go_math_op_diff->num_diff( ).
  WRITE: go_math_op_diff->lv_result.
