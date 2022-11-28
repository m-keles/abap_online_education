*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG30
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_30_reuse_01.

INCLUDE ZMK_INT_BRK_30_REUSE_01_TOP.
INCLUDE ZMK_INT_BRK_30_REUSE_01_FRM.


START-OF-SELECTION.

PERFORM get_data.
PERFORM set_fcat.
PERFORM set_layout.
PERFORM display_alv.
