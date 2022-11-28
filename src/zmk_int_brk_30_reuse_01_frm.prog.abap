*&---------------------------------------------------------------------*
*&  Include           Z09_MK_PROG30_FRM
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  GET_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM get_data .

  SELECT
    ekko~ebeln
    ekpo~ebelp
    ekko~bstyp
    ekko~bsart
    ekpo~matnr
    ekpo~menge
    ekpo~meins
    FROM ekko
    INNER JOIN ekpo ON ekpo~ebeln EQ ekko~ebeln
    INTO TABLE gt_list.


ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  SET_FCAT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*

FORM set_fcat .
"Third Example
  CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
    EXPORTING
      i_program_name     = sy-repid
*      i_internal_tabname = 'GT_LIST'
     I_STRUCTURE_NAME   = 'ZMK_EDU_30_REUSE_S'
      i_inclname         = sy-repid
    CHANGING
      ct_fieldcat        = gt_fcat.

"Second Example
*  PERFORM:  set_fcat_sub USING 'EBELN' 'Einkaufsbeleg' 'Einkaufsbeleg' 'Einkaufsbeleg' abap_true '0' '',
*            set_fcat_sub USING 'EBELP' 'Position' 'Position' 'Position' 'X' '1' '',
*            set_fcat_sub USING 'BSTYP' 'Belegtyp' 'Belegtyp' 'Belegtyp' '' '5' '',
*            set_fcat_sub USING 'BSART' 'Belegart' 'Belegart' 'Belegart' abap_false '4' '',
*            set_fcat_sub USING 'MATNR' 'Material' 'Material' 'Material' abap_false '2' '',
*            set_fcat_sub USING 'MENGE' 'Bestellmenge' 'Bestellmenge' 'Bestellmenge' abap_false '3' 'X',
*            set_fcat_sub USING 'MEINS' 'Bestellmengeeinheit' 'Bestellmengeeinheit' 'Bestellmengeeinheit' abap_false '6' ''.

"Firts Example
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'EBELN'.
*     gs_fcat-seltext_s  = 'Einkaufsbeleg'.
*     gs_fcat-seltext_m  = 'Einkaufsbeleg'.
*     gs_fcat-seltext_l  = 'Einkaufsbeleg'.
*     gs_fcat-key        = abap_true.
*     gs_fcat-col_pos    = 0.
**  gs_fcat-outputlen = 40.
**  gs_fcat-edit      = abap_true.
**  gs_fcat-hotspot   = abap_true.
*  APPEND gs_fcat TO gt_fcat.
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'EBELP'.
*     gs_fcat-seltext_s  = 'Position'.
*     gs_fcat-seltext_m  = 'Position'.
*     gs_fcat-seltext_l  = 'Position'.
*     gs_fcat-key        = abap_true.
*     gs_fcat-col_pos    = 1.
*  APPEND gs_fcat TO gt_fcat.
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'BSTYP'.
*     gs_fcat-seltext_s  = 'Belegtyp'.
*     gs_fcat-seltext_m  = 'Belegtyp'.
*     gs_fcat-seltext_l  = 'Belegtyp'.
*     gs_fcat-col_pos    = 5.
*  APPEND gs_fcat TO gt_fcat.
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'BSART'.
*     gs_fcat-seltext_s  = 'Belegart'.
*     gs_fcat-seltext_m  = 'Belegart'.
*     gs_fcat-seltext_l  = 'Belegart'.
*     gs_fcat-col_pos    = 4.
*  APPEND gs_fcat TO gt_fcat.
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'MATNR'.
*     gs_fcat-seltext_s  = 'Material'.
*     gs_fcat-seltext_m  = 'Material'.
*     gs_fcat-seltext_l  = 'Material'.
*     gs_fcat-col_pos    = 2.
*  APPEND gs_fcat TO gt_fcat.
*  CLEAR: gs_fcat.
*     gs_fcat-fieldname  = 'MENGE'.
*     gs_fcat-seltext_s  = 'Bestellmenge'.
*     gs_fcat-seltext_m  = 'Bestellmenge'.
*     gs_fcat-seltext_l  = 'Bestellmenge'.
*     gs_fcat-col_pos    = 3.
*     gs_fcat-do_sum     = abap_true.
*  APPEND gs_fcat TO gt_fcat.

ENDFORM.



*&---------------------------------------------------------------------*
*&      Form  SET_FCAT_SUB
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
*FORM set_fcat_sub USING p_fieldname
*                        p_seltext_s
*                        p_seltext_m
*                        p_seltext_l
*                        p_key
*                        p_col_pos
*                        p_do_sum.
*  CLEAR: gs_fcat.
*  gs_fcat-fieldname = p_fieldname.
*  gs_fcat-seltext_s = p_seltext_s.
*  gs_fcat-seltext_m = p_seltext_m.
*  gs_fcat-seltext_l = p_seltext_l.
*  gs_fcat-key       = p_key.
*  gs_fcat-col_pos   = p_col_pos.
*  gs_fcat-do_sum    = p_do_sum.
*  APPEND gs_fcat TO gt_fcat.
*ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  SET_LAYOUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM set_layout .

  gs_layout-window_titlebar = 'REUSE ALV EDUCATION'.
  gs_layout-zebra           = abap_true.
  gs_layout-colwidth_optimize = abap_true.
*  gs_layout-edit = abap_true.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  DISPLAY_ALV
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM display_alv .

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
*     I_INTERFACE_CHECK                 = ' '
*     I_BYPASSING_BUFFER                = ' '
*     I_BUFFER_ACTIVE                   = ' '
     I_CALLBACK_PROGRAM                = sy-repid
*     I_CALLBACK_PF_STATUS_SET          = ' '
*     I_CALLBACK_USER_COMMAND           = ' '
     I_CALLBACK_TOP_OF_PAGE            = 'TOP_OF_PAGE'
*     I_CALLBACK_HTML_TOP_OF_PAGE       = ' '
*     I_CALLBACK_HTML_END_OF_LIST       = ' '
*     I_STRUCTURE_NAME                  =
*     I_BACKGROUND_ID                   = ' '
*     I_GRID_TITLE                      =
*     I_GRID_SETTINGS                   =
      is_layout   = gs_layout
      it_fieldcat = gt_fcat
*     IT_EXCLUDING                      =
*     IT_SPECIAL_GROUPS                 =
*     IT_SORT     =
*     IT_FILTER   =
*     IS_SEL_HIDE =
*     I_DEFAULT   = 'X'
*     I_SAVE      = ' '
*     IS_VARIANT  =
*     IT_EVENTS   =
*     IT_EVENT_EXIT                     =
*     IS_PRINT    =
*     IS_REPREP_ID                      =
*     I_SCREEN_START_COLUMN             = 0
*     I_SCREEN_START_LINE               = 0
*     I_SCREEN_END_COLUMN               = 0
*     I_SCREEN_END_LINE                 = 0
*     I_HTML_HEIGHT_TOP                 = 0
*     I_HTML_HEIGHT_END                 = 0
*     IT_ALV_GRAPHICS                   =
*     IT_HYPERLINK                      =
*     IT_ADD_FIELDCAT                   =
*     IT_EXCEPT_QINFO                   =
*     IR_SALV_FULLSCREEN_ADAPTER        =
* IMPORTING
*     E_EXIT_CAUSED_BY_CALLER           =
*     ES_EXIT_CAUSED_BY_USER            =
    TABLES
      t_outtab    = gt_list
* EXCEPTIONS
*     PROGRAM_ERROR                     = 1
    .

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  TOP_OF_PAGE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM top_of_page .

ENDFORM.
