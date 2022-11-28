*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_26_dyn_sel_sc.

*PARAMETERS: p_num TYPE int4.
*
*INITIALIZATION.
*  BREAK-POINT.
*
*AT SELECTION-SCREEN OUTPUT.
*  BREAK-POINT.
*
*START-OF-SELECTION.
*  BREAK-POINT.





*DATA: gv_num TYPE i.
*PARAMETERS: p_num TYPE int4 MODIF ID gr1.
*SELECT-OPTIONS: so_num FOR gv_num MODIF ID gr1.
*
*INITIALIZATION.
*  LOOP AT SCREEN.
*    IF screen-group1 eq 'GR1'.
*      screen-input = 0.
*      screen-display_3d = 1.
*      MODIFY SCREEN.
*    ENDIF.
*  ENDLOOP.






*PARAMETERS: p_num1 TYPE int4 MODIF ID gr1,
*            p_num2 TYPE int4 MODIF ID gr1,
*            p_num3 TYPE int4 MODIF ID gr2,
*            p_num4 TYPE int4 MODIF ID gr2,
*            p_num5 TYPE int4 MODIF ID gr3,
*            p_num6 TYPE int4 MODIF ID gr3.
*
*
*
*INITIALIZATION.
*  LOOP AT SCREEN.
*    IF screen-group1 eq 'GR2'.
*      screen-display_3d = 1.
*      MODIFY SCREEN.
*    ENDIF.
*    IF screen-group1 eq 'GR3'.
*      screen-input = 0.
*      MODIFY SCREEN.
*    ENDIF.
*  ENDLOOP.





PARAMETERS: p_rad1 RADIOBUTTON GROUP rgr1 DEFAULT 'X' USER-COMMAND usr1,
            p_rad2 RADIOBUTTON GROUP rgr1.

PARAMETERS: p_lifnr  TYPE lifnr MODIF ID gr1 DEFAULT 'Supplier',    "Burada tipin lifnr olmasinin nedeni se16n ile LFA1 yani lieferant tablosuna baktik.
            p_lifnrn TYPE name1_gp MODIF ID gr1 DEFAULT 'Supplier Name', "Burada LFA1 tablosundan name1 in data elementine baktik.
            p_kunnr  TYPE kunnr MODIF ID gr2 DEFAULT 'Customer',    "Burada KNA1 tablosundan kunnr data elementi
            p_kunnrn TYPE name1_gp MODIF ID gr2 DEFAULT 'Customer Name'. "Burada KNA1 tablosunun name1 bolumunun data elementini ele aldik.

AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF p_rad1 EQ abap_true.
      IF screen-group1 EQ 'GR1'.
        screen-active = 1.
        MODIFY SCREEN.
      ENDIF.
      IF screen-group1 EQ 'GR2'.
        screen-active = 0.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.
    IF p_rad2 EQ abap_true.
      IF screen-group1 EQ 'GR2'.
        screen-active = 1.
        MODIFY SCREEN.
      ENDIF.
      IF screen-group1 EQ 'GR1'.
        screen-active = 0.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.
  ENDLOOP.
