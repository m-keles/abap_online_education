*&---------------------------------------------------------------------*
*&  Include           Z09_MK_PROG6_FRM
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  FORM1
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM form1 .
  DATA: lv_num2 TYPE int4.
  gv_num1 = gv_num1 + 1.
  lv_num2 = lv_num2 + 1.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  FORM2
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM form2 .
  gv_num1 = gv_num1 + 1.
  write gv_num1.
*  lv_num2 = lv_num2 + 1.
ENDFORM.