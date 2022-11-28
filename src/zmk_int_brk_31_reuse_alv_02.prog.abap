*&---------------------------------------------------------------------*
*& Report ZMK_INT_BRK_31_REUSE_ALV_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMK_INT_BRK_31_REUSE_ALV_02.

CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
* EXPORTING
*   I_PROGRAM_NAME               =
*   I_INTERNAL_TABNAME           =
*   I_STRUCTURE_NAME             =
*   I_CLIENT_NEVER_DISPLAY       = 'X'
*   I_INCLNAME                   =
*   I_BYPASSING_BUFFER           =
*   I_BUFFER_ACTIVE              =
  CHANGING
    ct_fieldcat                  =
* EXCEPTIONS
*   INCONSISTENT_INTERFACE       = 1
*   PROGRAM_ERROR                = 2
*   OTHERS                       = 3
.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.
