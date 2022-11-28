*&---------------------------------------------------------------------*
*&  Include           Z09_MK_PROG30_TOP
*&---------------------------------------------------------------------*

"Headerline internal table
*DATA: BEGIN OF gt_list OCCURS 0,
*        ebeln LIKE ekko-ebeln,
*        ebelp LIKE ekpo-ebelp,
*        bstyp LIKE ekko-bstyp,
*        bsart LIKE ekko-bsart,
*        matnr LIKE ekpo-matnr,
*        menge LIKE ekpo-menge,
*        meins LIKE ekpo-meins,
*        statu LIKE ekpo-statu,
*      END OF gt_list.

TYPES: BEGIN OF gty_list,
         ebeln TYPE ebeln,
         ebelp TYPE ebelp,
         bstyp TYPE ebstyp,
         bsart TYPE esart,
         matnr TYPE matnr,
         menge TYPE bstmg,
         meins TYPE meins,
       END OF gty_list.

DATA: gt_list TYPE TABLE OF gty_list,
      gs_list TYPE gty_list.

DATA: gt_fcat TYPE slis_t_fieldcat_alv,
      gs_fcat TYPE slis_fieldcat_alv.

DATA: gs_layout TYPE slis_layout_alv.

DATA: gt_events TYPE slis_t_event.
