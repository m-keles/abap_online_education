FUNCTION Z_MK_GET_SUMME.
*"--------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  EXPORTING
*"     REFERENCE(EV_GESAMTSUMME) TYPE  INT4
*"     REFERENCE(ET_SUMMEN) TYPE  ZMK_TT_SUMMEN
*"     REFERENCE(EV_MIN) TYPE  INT4
*"     REFERENCE(EV_MAX) TYPE  INT4
*"     REFERENCE(EV_AVG) TYPE  INT4
*"--------------------------------------------------------------------
data ls_summen type zmk_summen.
ev_gesamtsumme = gv_gesamtsumme.
et_summen = gt_summen.
if gt_summen is not INITIAL.
  read TABLE gt_summen into ls_summen INDEX 1.
  ev_min = ls_summen-summe.
  read TABLE gt_summen into ls_summen index lines( gt_summen ).
  ev_max = ls_summen-summe.
  ev_avg = gv_gesamtsumme / ( lines( gt_summen ) ).
ENDIF.


ENDFUNCTION.
