*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_01_data_types1.

DATA gv_var1 TYPE p DECIMALS 2.
DATA gv_var2 TYPE int4.
DATA gv_var3 TYPE n LENGTH 2.
DATA gv_var4 TYPE c LENGTH 3.
DATA gv_var5 TYPE string.
DATA gv_var6 TYPE int4 VALUE 250.
gv_var1 = '12.54'.
gv_var2 = 123.
gv_var3 = 456.
gv_var4 = 'a+5f'.
gv_var5 = 'Herhangi bir cumle'.

WRITE gv_var4.
WRITE gv_var3.
WRITE gv_var2.
WRITE gv_var1.
WRITE gv_var6.


PARAMETERS  pa_name TYPE string LOWER CASE VISIBLE LENGTH 25 .
PARAMETERS  pa_name2 TYPE string LOWER CASE VISIBLE LENGTH 25 DEFAULT 10.
WRITE 'Hello World'.
NEW-LINE.
ULINE.
WRITE: 'Hello',
       pa_name,
       pa_name2.
