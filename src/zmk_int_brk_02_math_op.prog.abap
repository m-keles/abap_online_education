*&---------------------------------------------------------------------*
*& Report Z09_MK_PROG2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_int_brk_02_math_op1.

SELECTION-SCREEN BEGIN OF BLOCK eingabe WITH FRAME.
PARAMETERS  pa_num    TYPE i DEFAULT 45.
SELECTION-SCREEN END OF BLOCK eingabe.


DATA gv_var1 TYPE i.
DATA gv_var2 TYPE n LENGTH 8.

DATA: gv_var3   TYPE i,
      gv_var4   TYPE n,
      gv_var5   TYPE i,
      gv_result TYPE i,
      gv_metin  TYPE string.

*Tum satir Yorum

gv_var2 = 2. "Yarim satir yorum
gv_var1 = 0.
gv_var4 = 0.
gv_var5 = 0.
gv_metin = 'Toplam'.
*write gv_var1.
*write gv_var2.
*write / gv_var4.

gv_result = gv_var1 + gv_var2.
WRITE: / gv_metin, gv_result.
WRITE: / 'Topl: ', gv_result.

IF gv_var1 > gv_var2.
  WRITE: / 'Birinci sayi buyuktur'.
ELSEIF gv_var1 < gv_var2.
  WRITE: / 'Birinci sayi kucuktur'.
ELSE.
  WRITE: / 'Birinci sayi esittir'.
ENDIF.

CASE gv_var1.
  WHEN 1.
    WRITE / 'Degisken degerim 1'.
  WHEN 2.
    WRITE / 'Degisken degerim 2'.
  WHEN OTHERS.
ENDCASE.

DO 10 TIMES.
  gv_var1 = gv_var1 + 1.
  WRITE: / 'do dongu', gv_var1.
ENDDO.

WHILE gv_var5 LT 10.
  gv_var5 = gv_var5 + 1.
  WRITE: / 'while dongu', gv_var5.
ENDWHILE.

" < LT
" > GT
" <= LE
" >= GE
" = EQ

PARAMETERS no TYPE i.
DATA : no1,cnt,cnt1 TYPE i.
cnt1 = 0.
DO no TIMES.
  DO cnt TIMES.
    cnt1 = cnt1 + 1.
    WRITE : cnt1.
  ENDDO.
  WRITE : /.
  cnt = cnt + 1.
  cnt1 = 0.
ENDDO.

DATA b TYPE i.
PARAMETER a TYPE i.
b = 1.
DO a TIMES.
  DO b TIMES.
    WRITE '*'.
  ENDDO.
  WRITE:/.
  b = b + 1.
ENDDO.

DATA d(10) TYPE n.
PARAMETER c(10) TYPE n.
d = 1.
DO c TIMES.
  DO c TIMES.
    WRITE '*'.
  ENDDO.
  WRITE:/.
  c = c  - d.
ENDDO.
