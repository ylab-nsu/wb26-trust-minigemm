From Coq Require Import String List ZArith.
From compcert Require Import Coqlib Integers Floats AST Ctypes Cop Clight Clightdefs.
Import Clightdefs.ClightNotations.
Local Open Scope Z_scope.
Local Open Scope string_scope.
Local Open Scope clight_scope.

Module Info.
  Definition version := "3.15".
  Definition build_number := "".
  Definition build_tag := "".
  Definition build_branch := "".
  Definition arch := "x86".
  Definition model := "64".
  Definition abi := "standard".
  Definition bitsize := 64.
  Definition big_endian := false.
  Definition source_file := "Strassen.c".
  Definition normalized := true.
End Info.

Definition _K : ident := $"K".
Definition _M : ident := $"M".
Definition _M1 : ident := $"M1".
Definition _M1_0 : ident := $"M1_0".
Definition _M1_1 : ident := $"M1_1".
Definition _M2 : ident := $"M2".
Definition _M2_0 : ident := $"M2_0".
Definition _M2_1 : ident := $"M2_1".
Definition _M3 : ident := $"M3".
Definition _M3_0 : ident := $"M3_0".
Definition _M3_1 : ident := $"M3_1".
Definition _M4 : ident := $"M4".
Definition _M4_0 : ident := $"M4_0".
Definition _M4_1 : ident := $"M4_1".
Definition _M5 : ident := $"M5".
Definition _M5_0 : ident := $"M5_0".
Definition _M5_1 : ident := $"M5_1".
Definition _M6 : ident := $"M6".
Definition _M6_0 : ident := $"M6_0".
Definition _M6_1 : ident := $"M6_1".
Definition _M7 : ident := $"M7".
Definition _M7_0 : ident := $"M7_0".
Definition _M7_1 : ident := $"M7_1".
Definition _N : ident := $"N".
Definition ___builtin_annot : ident := $"__builtin_annot".
Definition ___builtin_annot_intval : ident := $"__builtin_annot_intval".
Definition ___builtin_bswap : ident := $"__builtin_bswap".
Definition ___builtin_bswap16 : ident := $"__builtin_bswap16".
Definition ___builtin_bswap32 : ident := $"__builtin_bswap32".
Definition ___builtin_bswap64 : ident := $"__builtin_bswap64".
Definition ___builtin_clz : ident := $"__builtin_clz".
Definition ___builtin_clzl : ident := $"__builtin_clzl".
Definition ___builtin_clzll : ident := $"__builtin_clzll".
Definition ___builtin_ctz : ident := $"__builtin_ctz".
Definition ___builtin_ctzl : ident := $"__builtin_ctzl".
Definition ___builtin_ctzll : ident := $"__builtin_ctzll".
Definition ___builtin_debug : ident := $"__builtin_debug".
Definition ___builtin_expect : ident := $"__builtin_expect".
Definition ___builtin_fabs : ident := $"__builtin_fabs".
Definition ___builtin_fabsf : ident := $"__builtin_fabsf".
Definition ___builtin_fmadd : ident := $"__builtin_fmadd".
Definition ___builtin_fmax : ident := $"__builtin_fmax".
Definition ___builtin_fmin : ident := $"__builtin_fmin".
Definition ___builtin_fmsub : ident := $"__builtin_fmsub".
Definition ___builtin_fnmadd : ident := $"__builtin_fnmadd".
Definition ___builtin_fnmsub : ident := $"__builtin_fnmsub".
Definition ___builtin_fsqrt : ident := $"__builtin_fsqrt".
Definition ___builtin_membar : ident := $"__builtin_membar".
Definition ___builtin_memcpy_aligned : ident := $"__builtin_memcpy_aligned".
Definition ___builtin_read16_reversed : ident := $"__builtin_read16_reversed".
Definition ___builtin_read32_reversed : ident := $"__builtin_read32_reversed".
Definition ___builtin_sel : ident := $"__builtin_sel".
Definition ___builtin_sqrt : ident := $"__builtin_sqrt".
Definition ___builtin_unreachable : ident := $"__builtin_unreachable".
Definition ___builtin_va_arg : ident := $"__builtin_va_arg".
Definition ___builtin_va_copy : ident := $"__builtin_va_copy".
Definition ___builtin_va_end : ident := $"__builtin_va_end".
Definition ___builtin_va_start : ident := $"__builtin_va_start".
Definition ___builtin_write16_reversed : ident := $"__builtin_write16_reversed".
Definition ___builtin_write32_reversed : ident := $"__builtin_write32_reversed".
Definition ___compcert_i64_dtos : ident := $"__compcert_i64_dtos".
Definition ___compcert_i64_dtou : ident := $"__compcert_i64_dtou".
Definition ___compcert_i64_sar : ident := $"__compcert_i64_sar".
Definition ___compcert_i64_sdiv : ident := $"__compcert_i64_sdiv".
Definition ___compcert_i64_shl : ident := $"__compcert_i64_shl".
Definition ___compcert_i64_shr : ident := $"__compcert_i64_shr".
Definition ___compcert_i64_smod : ident := $"__compcert_i64_smod".
Definition ___compcert_i64_smulh : ident := $"__compcert_i64_smulh".
Definition ___compcert_i64_stod : ident := $"__compcert_i64_stod".
Definition ___compcert_i64_stof : ident := $"__compcert_i64_stof".
Definition ___compcert_i64_udiv : ident := $"__compcert_i64_udiv".
Definition ___compcert_i64_umod : ident := $"__compcert_i64_umod".
Definition ___compcert_i64_umulh : ident := $"__compcert_i64_umulh".
Definition ___compcert_i64_utod : ident := $"__compcert_i64_utod".
Definition ___compcert_i64_utof : ident := $"__compcert_i64_utof".
Definition ___compcert_va_composite : ident := $"__compcert_va_composite".
Definition ___compcert_va_float64 : ident := $"__compcert_va_float64".
Definition ___compcert_va_int32 : ident := $"__compcert_va_int32".
Definition ___compcert_va_int64 : ident := $"__compcert_va_int64".
Definition _baseIdx : ident := $"baseIdx".
Definition _baseIdx__1 : ident := $"baseIdx__1".
Definition _baseIdx__2 : ident := $"baseIdx__2".
Definition _baseIdx__3 : ident := $"baseIdx__3".
Definition _baseIdx__4 : ident := $"baseIdx__4".
Definition _baseIdx__5 : ident := $"baseIdx__5".
Definition _baseIdx__6 : ident := $"baseIdx__6".
Definition _baseIdx__7 : ident := $"baseIdx__7".
Definition _baseIdx__8 : ident := $"baseIdx__8".
Definition _baseIdx__9 : ident := $"baseIdx__9".
Definition _error : ident := $"error".
Definition _free : ident := $"free".
Definition _i : ident := $"i".
Definition _i__1 : ident := $"i__1".
Definition _i__10 : ident := $"i__10".
Definition _i__11 : ident := $"i__11".
Definition _i__12 : ident := $"i__12".
Definition _i__13 : ident := $"i__13".
Definition _i__14 : ident := $"i__14".
Definition _i__2 : ident := $"i__2".
Definition _i__3 : ident := $"i__3".
Definition _i__4 : ident := $"i__4".
Definition _i__5 : ident := $"i__5".
Definition _i__6 : ident := $"i__6".
Definition _i__7 : ident := $"i__7".
Definition _i__8 : ident := $"i__8".
Definition _i__9 : ident := $"i__9".
Definition _idx : ident := $"idx".
Definition _j : ident := $"j".
Definition _j__1 : ident := $"j__1".
Definition _j__10 : ident := $"j__10".
Definition _j__11 : ident := $"j__11".
Definition _j__12 : ident := $"j__12".
Definition _j__13 : ident := $"j__13".
Definition _j__14 : ident := $"j__14".
Definition _j__2 : ident := $"j__2".
Definition _j__3 : ident := $"j__3".
Definition _j__4 : ident := $"j__4".
Definition _j__5 : ident := $"j__5".
Definition _j__6 : ident := $"j__6".
Definition _j__7 : ident := $"j__7".
Definition _j__8 : ident := $"j__8".
Definition _j__9 : ident := $"j__9".
Definition _k : ident := $"k".
Definition _main : ident := $"main".
Definition _malloc : ident := $"malloc".
Definition _matA : ident := $"matA".
Definition _matB : ident := $"matB".
Definition _matC : ident := $"matC".
Definition _mm_generate : ident := $"mm_generate".
Definition _mm_strassen : ident := $"mm_strassen".
Definition _offset : ident := $"offset".
Definition _size : ident := $"size".
Definition _sum : ident := $"sum".
Definition _t'1 : ident := 128%positive.
Definition _t'10 : ident := 137%positive.
Definition _t'11 : ident := 138%positive.
Definition _t'12 : ident := 139%positive.
Definition _t'13 : ident := 140%positive.
Definition _t'14 : ident := 141%positive.
Definition _t'15 : ident := 142%positive.
Definition _t'16 : ident := 143%positive.
Definition _t'17 : ident := 144%positive.
Definition _t'18 : ident := 145%positive.
Definition _t'19 : ident := 146%positive.
Definition _t'2 : ident := 129%positive.
Definition _t'20 : ident := 147%positive.
Definition _t'21 : ident := 148%positive.
Definition _t'22 : ident := 149%positive.
Definition _t'23 : ident := 150%positive.
Definition _t'24 : ident := 151%positive.
Definition _t'25 : ident := 152%positive.
Definition _t'26 : ident := 153%positive.
Definition _t'27 : ident := 154%positive.
Definition _t'28 : ident := 155%positive.
Definition _t'29 : ident := 156%positive.
Definition _t'3 : ident := 130%positive.
Definition _t'30 : ident := 157%positive.
Definition _t'31 : ident := 158%positive.
Definition _t'32 : ident := 159%positive.
Definition _t'33 : ident := 160%positive.
Definition _t'34 : ident := 161%positive.
Definition _t'35 : ident := 162%positive.
Definition _t'36 : ident := 163%positive.
Definition _t'37 : ident := 164%positive.
Definition _t'38 : ident := 165%positive.
Definition _t'39 : ident := 166%positive.
Definition _t'4 : ident := 131%positive.
Definition _t'40 : ident := 167%positive.
Definition _t'41 : ident := 168%positive.
Definition _t'42 : ident := 169%positive.
Definition _t'43 : ident := 170%positive.
Definition _t'44 : ident := 171%positive.
Definition _t'45 : ident := 172%positive.
Definition _t'46 : ident := 173%positive.
Definition _t'47 : ident := 174%positive.
Definition _t'48 : ident := 175%positive.
Definition _t'49 : ident := 176%positive.
Definition _t'5 : ident := 132%positive.
Definition _t'50 : ident := 177%positive.
Definition _t'51 : ident := 178%positive.
Definition _t'52 : ident := 179%positive.
Definition _t'53 : ident := 180%positive.
Definition _t'54 : ident := 181%positive.
Definition _t'55 : ident := 182%positive.
Definition _t'56 : ident := 183%positive.
Definition _t'57 : ident := 184%positive.
Definition _t'58 : ident := 185%positive.
Definition _t'59 : ident := 186%positive.
Definition _t'6 : ident := 133%positive.
Definition _t'60 : ident := 187%positive.
Definition _t'61 : ident := 188%positive.
Definition _t'62 : ident := 189%positive.
Definition _t'63 : ident := 190%positive.
Definition _t'64 : ident := 191%positive.
Definition _t'7 : ident := 134%positive.
Definition _t'8 : ident := 135%positive.
Definition _t'9 : ident := 136%positive.

Definition f_malloc := {|
  fn_return := (tptr tvoid);
  fn_callconv := cc_default;
  fn_params := ((_size, tuint) :: nil);
  fn_vars := nil;
  fn_temps := nil;
  fn_body :=
(Sreturn (Some (Ecast (Econst_int (Int.repr 0) tint) (tptr tvoid))))
|}.

Definition f_free := {|
  fn_return := tvoid;
  fn_callconv := cc_default;
  fn_params := ((_k, (tptr tvoid)) :: nil);
  fn_vars := nil;
  fn_temps := nil;
  fn_body :=
Sskip
|}.

Definition f_mm_generate := {|
  fn_return := tvoid;
  fn_callconv := cc_default;
  fn_params := ((_matA, (tptr tuint)) :: (_matB, (tptr tuint)) ::
                (_matC, (tptr tuint)) :: (_M, tuint) :: (_N, tuint) ::
                (_K, tuint) :: nil);
  fn_vars := nil;
  fn_temps := ((_i, tint) :: (_j, tint) :: (_sum, tuint) :: (_k, tint) ::
               (_t'2, tuint) :: (_t'1, tuint) :: nil);
  fn_body :=
(Ssequence
  (Sset _i (Econst_int (Int.repr 0) tint))
  (Sloop
    (Ssequence
      (Sifthenelse (Ebinop Olt (Etempvar _i tint) (Etempvar _M tuint) tint)
        Sskip
        Sbreak)
      (Ssequence
        (Sset _j (Econst_int (Int.repr 0) tint))
        (Sloop
          (Ssequence
            (Sifthenelse (Ebinop Olt (Etempvar _j tint) (Etempvar _N tuint)
                           tint)
              Sskip
              Sbreak)
            (Ssequence
              (Sset _sum (Econst_int (Int.repr 0) tint))
              (Ssequence
                (Ssequence
                  (Sset _k (Econst_int (Int.repr 0) tint))
                  (Sloop
                    (Ssequence
                      (Sifthenelse (Ebinop Olt (Etempvar _k tint)
                                     (Etempvar _K tuint) tint)
                        Sskip
                        Sbreak)
                      (Ssequence
                        (Sset _t'1
                          (Ederef
                            (Ebinop Oadd (Etempvar _matA (tptr tuint))
                              (Ebinop Oadd
                                (Ebinop Omul (Etempvar _i tint)
                                  (Etempvar _K tuint) tuint)
                                (Etempvar _k tint) tuint) (tptr tuint))
                            tuint))
                        (Ssequence
                          (Sset _t'2
                            (Ederef
                              (Ebinop Oadd (Etempvar _matB (tptr tuint))
                                (Ebinop Oadd
                                  (Ebinop Omul (Etempvar _k tint)
                                    (Etempvar _N tuint) tuint)
                                  (Etempvar _j tint) tuint) (tptr tuint))
                              tuint))
                          (Sset _sum
                            (Ebinop Oadd (Etempvar _sum tuint)
                              (Ebinop Omul (Etempvar _t'1 tuint)
                                (Etempvar _t'2 tuint) tuint) tuint)))))
                    (Sset _k
                      (Ebinop Oadd (Etempvar _k tint)
                        (Econst_int (Int.repr 1) tint) tint))))
                (Sassign
                  (Ederef
                    (Ebinop Oadd (Etempvar _matC (tptr tuint))
                      (Ebinop Oadd
                        (Ebinop Omul (Etempvar _i tint) (Etempvar _N tuint)
                          tuint) (Etempvar _j tint) tuint) (tptr tuint))
                    tuint) (Etempvar _sum tuint)))))
          (Sset _j
            (Ebinop Oadd (Etempvar _j tint) (Econst_int (Int.repr 1) tint)
              tint)))))
    (Sset _i
      (Ebinop Oadd (Etempvar _i tint) (Econst_int (Int.repr 1) tint) tint))))
|}.

Definition f_mm_strassen := {|
  fn_return := tuint;
  fn_callconv := cc_default;
  fn_params := ((_matA, (tptr tuint)) :: (_matB, (tptr tuint)) ::
                (_matC, (tptr tuint)) :: (_M, tuint) :: (_N, tuint) ::
                (_K, tuint) :: nil);
  fn_vars := nil;
  fn_temps := ((_error, tint) :: (_offset, tint) :: (_M1, (tptr tuint)) ::
               (_M1_0, (tptr tuint)) :: (_i, tint) :: (_j, tint) ::
               (_baseIdx, tint) :: (_M1_1, (tptr tuint)) :: (_i__1, tint) ::
               (_j__1, tint) :: (_baseIdx__1, tint) :: (_M2, (tptr tuint)) ::
               (_M2_0, (tptr tuint)) :: (_i__2, tint) :: (_j__2, tint) ::
               (_baseIdx__2, tint) :: (_M2_1, (tptr tuint)) ::
               (_i__3, tint) :: (_j__3, tint) :: (_M3, (tptr tuint)) ::
               (_M3_0, (tptr tuint)) :: (_i__4, tint) :: (_j__4, tint) ::
               (_M3_1, (tptr tuint)) :: (_i__5, tint) :: (_j__5, tint) ::
               (_baseIdx__3, tint) :: (_M4, (tptr tuint)) ::
               (_M4_0, (tptr tuint)) :: (_i__6, tint) :: (_j__6, tint) ::
               (_M4_1, (tptr tuint)) :: (_i__7, tint) :: (_j__7, tint) ::
               (_baseIdx__4, tint) :: (_M5, (tptr tuint)) ::
               (_M5_0, (tptr tuint)) :: (_i__8, tint) :: (_j__8, tint) ::
               (_baseIdx__5, tint) :: (_M5_1, (tptr tuint)) ::
               (_i__9, tint) :: (_j__9, tint) :: (_M6, (tptr tuint)) ::
               (_M6_0, (tptr tuint)) :: (_i__10, tint) :: (_j__10, tint) ::
               (_baseIdx__6, tint) :: (_M6_1, (tptr tuint)) ::
               (_i__11, tint) :: (_j__11, tint) :: (_baseIdx__7, tint) ::
               (_M7, (tptr tuint)) :: (_M7_0, (tptr tuint)) ::
               (_i__12, tint) :: (_j__12, tint) :: (_baseIdx__8, tint) ::
               (_M7_1, (tptr tuint)) :: (_i__13, tint) :: (_j__13, tint) ::
               (_baseIdx__9, tint) :: (_i__14, tint) :: (_j__14, tint) ::
               (_idx, tint) :: (_t'28, tuint) :: (_t'27, (tptr tvoid)) ::
               (_t'26, (tptr tvoid)) :: (_t'25, (tptr tvoid)) ::
               (_t'24, tuint) :: (_t'23, (tptr tvoid)) ::
               (_t'22, (tptr tvoid)) :: (_t'21, (tptr tvoid)) ::
               (_t'20, tuint) :: (_t'19, (tptr tvoid)) ::
               (_t'18, (tptr tvoid)) :: (_t'17, (tptr tvoid)) ::
               (_t'16, tuint) :: (_t'15, (tptr tvoid)) ::
               (_t'14, (tptr tvoid)) :: (_t'13, (tptr tvoid)) ::
               (_t'12, tuint) :: (_t'11, (tptr tvoid)) ::
               (_t'10, (tptr tvoid)) :: (_t'9, (tptr tvoid)) ::
               (_t'8, tuint) :: (_t'7, (tptr tvoid)) ::
               (_t'6, (tptr tvoid)) :: (_t'5, (tptr tvoid)) ::
               (_t'4, tuint) :: (_t'3, (tptr tvoid)) ::
               (_t'2, (tptr tvoid)) :: (_t'1, (tptr tvoid)) ::
               (_t'64, tuint) :: (_t'63, tuint) :: (_t'62, tuint) ::
               (_t'61, tuint) :: (_t'60, tuint) :: (_t'59, tuint) ::
               (_t'58, tuint) :: (_t'57, tuint) :: (_t'56, tuint) ::
               (_t'55, tuint) :: (_t'54, tuint) :: (_t'53, tuint) ::
               (_t'52, tuint) :: (_t'51, tuint) :: (_t'50, tuint) ::
               (_t'49, tuint) :: (_t'48, tuint) :: (_t'47, tuint) ::
               (_t'46, tuint) :: (_t'45, tuint) :: (_t'44, tuint) ::
               (_t'43, tuint) :: (_t'42, tuint) :: (_t'41, tuint) ::
               (_t'40, tuint) :: (_t'39, tuint) :: (_t'38, tuint) ::
               (_t'37, tuint) :: (_t'36, tuint) :: (_t'35, tuint) ::
               (_t'34, tuint) :: (_t'33, tuint) :: (_t'32, tuint) ::
               (_t'31, tuint) :: (_t'30, tuint) :: (_t'29, tuint) :: nil);
  fn_body :=
(Ssequence
  (Sset _error (Econst_int (Int.repr 0) tint))
  (Ssequence
    (Sifthenelse (Ebinop Ole (Etempvar _M tuint)
                   (Econst_int (Int.repr 2) tint) tint)
      (Ssequence
        (Scall None
          (Evar _mm_generate (Tfunction
                               ((tptr tuint) :: (tptr tuint) ::
                                (tptr tuint) :: tuint :: tuint :: tuint ::
                                nil) tvoid cc_default))
          ((Etempvar _matA (tptr tuint)) :: (Etempvar _matB (tptr tuint)) ::
           (Etempvar _matC (tptr tuint)) :: (Etempvar _M tuint) ::
           (Etempvar _N tuint) :: (Etempvar _K tuint) :: nil))
        (Sreturn (Some (Econst_int (Int.repr 0) tint))))
      Sskip)
    (Ssequence
      (Sifthenelse (Ebinop One
                     (Ebinop Omod (Etempvar _M tuint)
                       (Econst_int (Int.repr 2) tint) tuint)
                     (Econst_int (Int.repr 0) tint) tint)
        (Ssequence
          (Scall None
            (Evar _mm_generate (Tfunction
                                 ((tptr tuint) :: (tptr tuint) ::
                                  (tptr tuint) :: tuint :: tuint :: tuint ::
                                  nil) tvoid cc_default))
            ((Etempvar _matA (tptr tuint)) ::
             (Etempvar _matB (tptr tuint)) ::
             (Etempvar _matC (tptr tuint)) :: (Etempvar _M tuint) ::
             (Etempvar _N tuint) :: (Etempvar _K tuint) :: nil))
          (Sreturn (Some (Econst_int (Int.repr 0) tint))))
        Sskip)
      (Ssequence
        (Sifthenelse (Ebinop One
                       (Ebinop Omod (Etempvar _N tuint)
                         (Econst_int (Int.repr 2) tint) tuint)
                       (Econst_int (Int.repr 0) tint) tint)
          (Ssequence
            (Scall None
              (Evar _mm_generate (Tfunction
                                   ((tptr tuint) :: (tptr tuint) ::
                                    (tptr tuint) :: tuint :: tuint ::
                                    tuint :: nil) tvoid cc_default))
              ((Etempvar _matA (tptr tuint)) ::
               (Etempvar _matB (tptr tuint)) ::
               (Etempvar _matC (tptr tuint)) :: (Etempvar _M tuint) ::
               (Etempvar _N tuint) :: (Etempvar _K tuint) :: nil))
            (Sreturn (Some (Econst_int (Int.repr 0) tint))))
          Sskip)
        (Ssequence
          (Sifthenelse (Ebinop One
                         (Ebinop Omod (Etempvar _K tuint)
                           (Econst_int (Int.repr 2) tint) tuint)
                         (Econst_int (Int.repr 0) tint) tint)
            (Ssequence
              (Scall None
                (Evar _mm_generate (Tfunction
                                     ((tptr tuint) :: (tptr tuint) ::
                                      (tptr tuint) :: tuint :: tuint ::
                                      tuint :: nil) tvoid cc_default))
                ((Etempvar _matA (tptr tuint)) ::
                 (Etempvar _matB (tptr tuint)) ::
                 (Etempvar _matC (tptr tuint)) :: (Etempvar _M tuint) ::
                 (Etempvar _N tuint) :: (Etempvar _K tuint) :: nil))
              (Sreturn (Some (Econst_int (Int.repr 0) tint))))
            Sskip)
          (Ssequence
            (Sset _offset (Econst_int (Int.repr 0) tint))
            (Ssequence
              (Ssequence
                (Scall (Some _t'1)
                  (Evar _malloc (Tfunction (tuint :: nil) (tptr tvoid)
                                  cc_default))
                  ((Ebinop Omul
                     (Ebinop Omul
                       (Ebinop Odiv (Etempvar _M tuint)
                         (Econst_int (Int.repr 2) tint) tuint)
                       (Ebinop Odiv (Etempvar _N tuint)
                         (Econst_int (Int.repr 2) tint) tuint) tuint)
                     (Esizeof tuint tulong) tulong) :: nil))
                (Sset _M1 (Ecast (Etempvar _t'1 (tptr tvoid)) (tptr tuint))))
              (Ssequence
                (Sifthenelse (Ebinop Oeq (Etempvar _M1 (tptr tuint))
                               (Ecast (Econst_int (Int.repr 0) tint)
                                 (tptr tvoid)) tint)
                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))
                  Sskip)
                (Ssequence
                  (Ssequence
                    (Ssequence
                      (Scall (Some _t'2)
                        (Evar _malloc (Tfunction (tuint :: nil) (tptr tvoid)
                                        cc_default))
                        ((Ebinop Omul
                           (Ebinop Omul
                             (Ebinop Odiv (Etempvar _M tuint)
                               (Econst_int (Int.repr 2) tint) tuint)
                             (Ebinop Odiv (Etempvar _K tuint)
                               (Econst_int (Int.repr 2) tint) tuint) tuint)
                           (Esizeof tuint tulong) tulong) :: nil))
                      (Sset _M1_0
                        (Ecast (Etempvar _t'2 (tptr tvoid)) (tptr tuint))))
                    (Ssequence
                      (Sifthenelse (Ebinop Oeq (Etempvar _M1_0 (tptr tuint))
                                     (Ecast (Econst_int (Int.repr 0) tint)
                                       (tptr tvoid)) tint)
                        (Ssequence
                          (Scall None
                            (Evar _free (Tfunction ((tptr tvoid) :: nil)
                                          tvoid cc_default))
                            ((Etempvar _M1 (tptr tuint)) :: nil))
                          (Ssequence
                            (Sset _error (Econst_int (Int.repr 1) tint))
                            (Sreturn (Some (Econst_int (Int.repr 1) tint)))))
                        Sskip)
                      (Ssequence
                        (Sset _offset
                          (Ebinop Oadd
                            (Ebinop Odiv
                              (Ebinop Omul (Etempvar _M tuint)
                                (Etempvar _K tuint) tuint)
                              (Econst_int (Int.repr 2) tint) tuint)
                            (Ebinop Odiv (Etempvar _K tuint)
                              (Econst_int (Int.repr 2) tint) tuint) tuint))
                        (Ssequence
                          (Ssequence
                            (Sset _i (Econst_int (Int.repr 0) tint))
                            (Sloop
                              (Ssequence
                                (Sifthenelse (Ebinop Olt (Etempvar _i tint)
                                               (Ebinop Odiv
                                                 (Etempvar _M tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint) tint)
                                  Sskip
                                  Sbreak)
                                (Ssequence
                                  (Sset _j (Econst_int (Int.repr 0) tint))
                                  (Sloop
                                    (Ssequence
                                      (Sifthenelse (Ebinop Olt
                                                     (Etempvar _j tint)
                                                     (Ebinop Odiv
                                                       (Etempvar _K tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint) tint)
                                        Sskip
                                        Sbreak)
                                      (Ssequence
                                        (Sset _baseIdx
                                          (Ebinop Oadd
                                            (Ebinop Omul (Etempvar _i tint)
                                              (Etempvar _K tuint) tuint)
                                            (Etempvar _j tint) tuint))
                                        (Ssequence
                                          (Sset _t'63
                                            (Ederef
                                              (Ebinop Oadd
                                                (Etempvar _matA (tptr tuint))
                                                (Etempvar _baseIdx tint)
                                                (tptr tuint)) tuint))
                                          (Ssequence
                                            (Sset _t'64
                                              (Ederef
                                                (Ebinop Oadd
                                                  (Etempvar _matA (tptr tuint))
                                                  (Ebinop Oadd
                                                    (Etempvar _baseIdx tint)
                                                    (Etempvar _offset tint)
                                                    tint) (tptr tuint))
                                                tuint))
                                            (Sassign
                                              (Ederef
                                                (Ebinop Oadd
                                                  (Etempvar _M1_0 (tptr tuint))
                                                  (Ebinop Oadd
                                                    (Ebinop Odiv
                                                      (Ebinop Omul
                                                        (Etempvar _i tint)
                                                        (Etempvar _K tuint)
                                                        tuint)
                                                      (Econst_int (Int.repr 2) tint)
                                                      tuint)
                                                    (Etempvar _j tint) tuint)
                                                  (tptr tuint)) tuint)
                                              (Ebinop Oadd
                                                (Etempvar _t'63 tuint)
                                                (Etempvar _t'64 tuint) tuint))))))
                                    (Sset _j
                                      (Ebinop Oadd (Etempvar _j tint)
                                        (Econst_int (Int.repr 1) tint) tint)))))
                              (Sset _i
                                (Ebinop Oadd (Etempvar _i tint)
                                  (Econst_int (Int.repr 1) tint) tint))))
                          (Ssequence
                            (Ssequence
                              (Scall (Some _t'3)
                                (Evar _malloc (Tfunction (tuint :: nil)
                                                (tptr tvoid) cc_default))
                                ((Ebinop Omul
                                   (Ebinop Omul
                                     (Ebinop Odiv (Etempvar _K tuint)
                                       (Econst_int (Int.repr 2) tint) tuint)
                                     (Ebinop Odiv (Etempvar _N tuint)
                                       (Econst_int (Int.repr 2) tint) tuint)
                                     tuint) (Esizeof tuint tulong) tulong) ::
                                 nil))
                              (Sset _M1_1
                                (Ecast (Etempvar _t'3 (tptr tvoid))
                                  (tptr tuint))))
                            (Ssequence
                              (Sifthenelse (Ebinop Oeq
                                             (Etempvar _M1_1 (tptr tuint))
                                             (Ecast
                                               (Econst_int (Int.repr 0) tint)
                                               (tptr tvoid)) tint)
                                (Ssequence
                                  (Scall None
                                    (Evar _free (Tfunction
                                                  ((tptr tvoid) :: nil) tvoid
                                                  cc_default))
                                    ((Etempvar _M1 (tptr tuint)) :: nil))
                                  (Ssequence
                                    (Scall None
                                      (Evar _free (Tfunction
                                                    ((tptr tvoid) :: nil)
                                                    tvoid cc_default))
                                      ((Etempvar _M1_0 (tptr tuint)) :: nil))
                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))
                                Sskip)
                              (Ssequence
                                (Sset _offset
                                  (Ebinop Oadd
                                    (Ebinop Odiv
                                      (Ebinop Omul (Etempvar _K tuint)
                                        (Etempvar _N tuint) tuint)
                                      (Econst_int (Int.repr 2) tint) tuint)
                                    (Ebinop Odiv (Etempvar _N tuint)
                                      (Econst_int (Int.repr 2) tint) tuint)
                                    tuint))
                                (Ssequence
                                  (Ssequence
                                    (Sset _i__1
                                      (Econst_int (Int.repr 0) tint))
                                    (Sloop
                                      (Ssequence
                                        (Sifthenelse (Ebinop Olt
                                                       (Etempvar _i__1 tint)
                                                       (Ebinop Odiv
                                                         (Etempvar _K tuint)
                                                         (Econst_int (Int.repr 2) tint)
                                                         tuint) tint)
                                          Sskip
                                          Sbreak)
                                        (Ssequence
                                          (Sset _j__1
                                            (Econst_int (Int.repr 0) tint))
                                          (Sloop
                                            (Ssequence
                                              (Sifthenelse (Ebinop Olt
                                                             (Etempvar _j__1 tint)
                                                             (Ebinop Odiv
                                                               (Etempvar _N tuint)
                                                               (Econst_int (Int.repr 2) tint)
                                                               tuint) tint)
                                                Sskip
                                                Sbreak)
                                              (Ssequence
                                                (Sset _baseIdx__1
                                                  (Ebinop Oadd
                                                    (Ebinop Omul
                                                      (Etempvar _i__1 tint)
                                                      (Etempvar _N tuint)
                                                      tuint)
                                                    (Etempvar _j__1 tint)
                                                    tuint))
                                                (Ssequence
                                                  (Sset _t'61
                                                    (Ederef
                                                      (Ebinop Oadd
                                                        (Etempvar _matB (tptr tuint))
                                                        (Etempvar _baseIdx__1 tint)
                                                        (tptr tuint)) tuint))
                                                  (Ssequence
                                                    (Sset _t'62
                                                      (Ederef
                                                        (Ebinop Oadd
                                                          (Etempvar _matB (tptr tuint))
                                                          (Ebinop Oadd
                                                            (Etempvar _baseIdx__1 tint)
                                                            (Etempvar _offset tint)
                                                            tint)
                                                          (tptr tuint))
                                                        tuint))
                                                    (Sassign
                                                      (Ederef
                                                        (Ebinop Oadd
                                                          (Etempvar _M1_1 (tptr tuint))
                                                          (Ebinop Oadd
                                                            (Ebinop Odiv
                                                              (Ebinop Omul
                                                                (Etempvar _i__1 tint)
                                                                (Etempvar _N tuint)
                                                                tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint)
                                                            (Etempvar _j__1 tint)
                                                            tuint)
                                                          (tptr tuint))
                                                        tuint)
                                                      (Ebinop Oadd
                                                        (Etempvar _t'61 tuint)
                                                        (Etempvar _t'62 tuint)
                                                        tuint))))))
                                            (Sset _j__1
                                              (Ebinop Oadd
                                                (Etempvar _j__1 tint)
                                                (Econst_int (Int.repr 1) tint)
                                                tint)))))
                                      (Sset _i__1
                                        (Ebinop Oadd (Etempvar _i__1 tint)
                                          (Econst_int (Int.repr 1) tint)
                                          tint))))
                                  (Ssequence
                                    (Ssequence
                                      (Scall (Some _t'4)
                                        (Evar _mm_strassen (Tfunction
                                                             ((tptr tuint) ::
                                                              (tptr tuint) ::
                                                              (tptr tuint) ::
                                                              tuint ::
                                                              tuint ::
                                                              tuint :: nil)
                                                             tuint
                                                             cc_default))
                                        ((Ebinop Oadd
                                           (Etempvar _M1_0 (tptr tuint))
                                           (Econst_int (Int.repr 0) tint)
                                           (tptr tuint)) ::
                                         (Ebinop Oadd
                                           (Etempvar _M1_1 (tptr tuint))
                                           (Econst_int (Int.repr 0) tint)
                                           (tptr tuint)) ::
                                         (Ebinop Oadd
                                           (Etempvar _M1 (tptr tuint))
                                           (Econst_int (Int.repr 0) tint)
                                           (tptr tuint)) ::
                                         (Ebinop Odiv (Etempvar _M tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint) ::
                                         (Ebinop Odiv (Etempvar _N tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint) ::
                                         (Ebinop Odiv (Etempvar _K tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint) :: nil))
                                      (Sset _error (Etempvar _t'4 tuint)))
                                    (Ssequence
                                      (Sifthenelse (Ebinop Oeq
                                                     (Etempvar _error tint)
                                                     (Econst_int (Int.repr 1) tint)
                                                     tint)
                                        (Ssequence
                                          (Scall None
                                            (Evar _free (Tfunction
                                                          ((tptr tvoid) ::
                                                           nil) tvoid
                                                          cc_default))
                                            ((Etempvar _M1 (tptr tuint)) ::
                                             nil))
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M1_0 (tptr tuint)) ::
                                               nil))
                                            (Ssequence
                                              (Scall None
                                                (Evar _free (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                ((Etempvar _M1_1 (tptr tuint)) ::
                                                 nil))
                                              (Sreturn (Some (Econst_int (Int.repr 1) tint))))))
                                        Sskip)
                                      (Ssequence
                                        (Scall None
                                          (Evar _free (Tfunction
                                                        ((tptr tvoid) :: nil)
                                                        tvoid cc_default))
                                          ((Etempvar _M1_0 (tptr tuint)) ::
                                           nil))
                                        (Ssequence
                                          (Sset _M1_0
                                            (Ecast
                                              (Econst_int (Int.repr 0) tint)
                                              (tptr tvoid)))
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M1_1 (tptr tuint)) ::
                                               nil))
                                            (Sset _M1_1
                                              (Ecast
                                                (Econst_int (Int.repr 0) tint)
                                                (tptr tvoid))))))))))))))))
                  (Ssequence
                    (Ssequence
                      (Scall (Some _t'5)
                        (Evar _malloc (Tfunction (tuint :: nil) (tptr tvoid)
                                        cc_default))
                        ((Ebinop Omul
                           (Ebinop Omul
                             (Ebinop Odiv (Etempvar _M tuint)
                               (Econst_int (Int.repr 2) tint) tuint)
                             (Ebinop Odiv (Etempvar _N tuint)
                               (Econst_int (Int.repr 2) tint) tuint) tuint)
                           (Esizeof tuint tulong) tulong) :: nil))
                      (Sset _M2
                        (Ecast (Etempvar _t'5 (tptr tvoid)) (tptr tuint))))
                    (Ssequence
                      (Sifthenelse (Ebinop Oeq (Etempvar _M2 (tptr tuint))
                                     (Ecast (Econst_int (Int.repr 0) tint)
                                       (tptr tvoid)) tint)
                        (Ssequence
                          (Scall None
                            (Evar _free (Tfunction ((tptr tvoid) :: nil)
                                          tvoid cc_default))
                            ((Etempvar _M1 (tptr tuint)) :: nil))
                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))
                        Sskip)
                      (Ssequence
                        (Ssequence
                          (Ssequence
                            (Scall (Some _t'6)
                              (Evar _malloc (Tfunction (tuint :: nil)
                                              (tptr tvoid) cc_default))
                              ((Ebinop Omul
                                 (Ebinop Omul
                                   (Ebinop Odiv (Etempvar _M tuint)
                                     (Econst_int (Int.repr 2) tint) tuint)
                                   (Ebinop Odiv (Etempvar _K tuint)
                                     (Econst_int (Int.repr 2) tint) tuint)
                                   tuint) (Esizeof tuint tulong) tulong) ::
                               nil))
                            (Sset _M2_0
                              (Ecast (Etempvar _t'6 (tptr tvoid))
                                (tptr tuint))))
                          (Ssequence
                            (Sifthenelse (Ebinop Oeq
                                           (Etempvar _M2_0 (tptr tuint))
                                           (Ecast
                                             (Econst_int (Int.repr 0) tint)
                                             (tptr tvoid)) tint)
                              (Ssequence
                                (Scall None
                                  (Evar _free (Tfunction
                                                ((tptr tvoid) :: nil) tvoid
                                                cc_default))
                                  ((Etempvar _M1 (tptr tuint)) :: nil))
                                (Ssequence
                                  (Scall None
                                    (Evar _free (Tfunction
                                                  ((tptr tvoid) :: nil) tvoid
                                                  cc_default))
                                    ((Etempvar _M2 (tptr tuint)) :: nil))
                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))
                              Sskip)
                            (Ssequence
                              (Sset _offset
                                (Ebinop Odiv (Etempvar _K tuint)
                                  (Econst_int (Int.repr 2) tint) tuint))
                              (Ssequence
                                (Ssequence
                                  (Sset _i__2
                                    (Ebinop Odiv (Etempvar _M tuint)
                                      (Econst_int (Int.repr 2) tint) tuint))
                                  (Sloop
                                    (Ssequence
                                      (Sifthenelse (Ebinop Olt
                                                     (Etempvar _i__2 tint)
                                                     (Etempvar _M tuint)
                                                     tint)
                                        Sskip
                                        Sbreak)
                                      (Ssequence
                                        (Sset _j__2
                                          (Econst_int (Int.repr 0) tint))
                                        (Sloop
                                          (Ssequence
                                            (Sifthenelse (Ebinop Olt
                                                           (Etempvar _j__2 tint)
                                                           (Ebinop Odiv
                                                             (Etempvar _K tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint) tint)
                                              Sskip
                                              Sbreak)
                                            (Ssequence
                                              (Sset _baseIdx__2
                                                (Ebinop Oadd
                                                  (Ebinop Omul
                                                    (Etempvar _i__2 tint)
                                                    (Etempvar _K tuint)
                                                    tuint)
                                                  (Etempvar _j__2 tint)
                                                  tuint))
                                              (Ssequence
                                                (Sset _t'59
                                                  (Ederef
                                                    (Ebinop Oadd
                                                      (Etempvar _matA (tptr tuint))
                                                      (Etempvar _baseIdx__2 tint)
                                                      (tptr tuint)) tuint))
                                                (Ssequence
                                                  (Sset _t'60
                                                    (Ederef
                                                      (Ebinop Oadd
                                                        (Etempvar _matA (tptr tuint))
                                                        (Ebinop Oadd
                                                          (Etempvar _baseIdx__2 tint)
                                                          (Etempvar _offset tint)
                                                          tint) (tptr tuint))
                                                      tuint))
                                                  (Sassign
                                                    (Ederef
                                                      (Ebinop Oadd
                                                        (Etempvar _M2_0 (tptr tuint))
                                                        (Ebinop Oadd
                                                          (Ebinop Odiv
                                                            (Ebinop Omul
                                                              (Ebinop Osub
                                                                (Etempvar _i__2 tint)
                                                                (Ebinop Odiv
                                                                  (Etempvar _M tuint)
                                                                  (Econst_int (Int.repr 2) tint)
                                                                  tuint)
                                                                tuint)
                                                              (Etempvar _K tuint)
                                                              tuint)
                                                            (Econst_int (Int.repr 2) tint)
                                                            tuint)
                                                          (Etempvar _j__2 tint)
                                                          tuint)
                                                        (tptr tuint)) tuint)
                                                    (Ebinop Oadd
                                                      (Etempvar _t'59 tuint)
                                                      (Etempvar _t'60 tuint)
                                                      tuint))))))
                                          (Sset _j__2
                                            (Ebinop Oadd
                                              (Etempvar _j__2 tint)
                                              (Econst_int (Int.repr 1) tint)
                                              tint)))))
                                    (Sset _i__2
                                      (Ebinop Oadd (Etempvar _i__2 tint)
                                        (Econst_int (Int.repr 1) tint) tint))))
                                (Ssequence
                                  (Ssequence
                                    (Scall (Some _t'7)
                                      (Evar _malloc (Tfunction (tuint :: nil)
                                                      (tptr tvoid)
                                                      cc_default))
                                      ((Ebinop Omul
                                         (Ebinop Omul
                                           (Ebinop Odiv (Etempvar _K tuint)
                                             (Econst_int (Int.repr 2) tint)
                                             tuint)
                                           (Ebinop Odiv (Etempvar _N tuint)
                                             (Econst_int (Int.repr 2) tint)
                                             tuint) tuint)
                                         (Esizeof tuint tulong) tulong) ::
                                       nil))
                                    (Sset _M2_1
                                      (Ecast (Etempvar _t'7 (tptr tvoid))
                                        (tptr tuint))))
                                  (Ssequence
                                    (Sifthenelse (Ebinop Oeq
                                                   (Etempvar _M2_1 (tptr tuint))
                                                   (Ecast
                                                     (Econst_int (Int.repr 0) tint)
                                                     (tptr tvoid)) tint)
                                      (Ssequence
                                        (Scall None
                                          (Evar _free (Tfunction
                                                        ((tptr tvoid) :: nil)
                                                        tvoid cc_default))
                                          ((Etempvar _M1 (tptr tuint)) ::
                                           nil))
                                        (Ssequence
                                          (Scall None
                                            (Evar _free (Tfunction
                                                          ((tptr tvoid) ::
                                                           nil) tvoid
                                                          cc_default))
                                            ((Etempvar _M2 (tptr tuint)) ::
                                             nil))
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M2_0 (tptr tuint)) ::
                                               nil))
                                            (Sreturn (Some (Econst_int (Int.repr 1) tint))))))
                                      Sskip)
                                    (Ssequence
                                      (Ssequence
                                        (Sset _i__3
                                          (Econst_int (Int.repr 0) tint))
                                        (Sloop
                                          (Ssequence
                                            (Sifthenelse (Ebinop Olt
                                                           (Etempvar _i__3 tint)
                                                           (Ebinop Odiv
                                                             (Etempvar _K tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint) tint)
                                              Sskip
                                              Sbreak)
                                            (Ssequence
                                              (Sset _j__3
                                                (Econst_int (Int.repr 0) tint))
                                              (Sloop
                                                (Ssequence
                                                  (Sifthenelse (Ebinop Olt
                                                                 (Etempvar _j__3 tint)
                                                                 (Ebinop Odiv
                                                                   (Etempvar _N tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint)
                                                                 tint)
                                                    Sskip
                                                    Sbreak)
                                                  (Ssequence
                                                    (Sset _t'58
                                                      (Ederef
                                                        (Ebinop Oadd
                                                          (Etempvar _matB (tptr tuint))
                                                          (Ebinop Oadd
                                                            (Ebinop Omul
                                                              (Etempvar _i__3 tint)
                                                              (Etempvar _N tuint)
                                                              tuint)
                                                            (Etempvar _j__3 tint)
                                                            tuint)
                                                          (tptr tuint))
                                                        tuint))
                                                    (Sassign
                                                      (Ederef
                                                        (Ebinop Oadd
                                                          (Etempvar _M2_1 (tptr tuint))
                                                          (Ebinop Oadd
                                                            (Ebinop Odiv
                                                              (Ebinop Omul
                                                                (Etempvar _i__3 tint)
                                                                (Etempvar _N tuint)
                                                                tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint)
                                                            (Etempvar _j__3 tint)
                                                            tuint)
                                                          (tptr tuint))
                                                        tuint)
                                                      (Etempvar _t'58 tuint))))
                                                (Sset _j__3
                                                  (Ebinop Oadd
                                                    (Etempvar _j__3 tint)
                                                    (Econst_int (Int.repr 1) tint)
                                                    tint)))))
                                          (Sset _i__3
                                            (Ebinop Oadd
                                              (Etempvar _i__3 tint)
                                              (Econst_int (Int.repr 1) tint)
                                              tint))))
                                      (Ssequence
                                        (Ssequence
                                          (Scall (Some _t'8)
                                            (Evar _mm_strassen (Tfunction
                                                                 ((tptr tuint) ::
                                                                  (tptr tuint) ::
                                                                  (tptr tuint) ::
                                                                  tuint ::
                                                                  tuint ::
                                                                  tuint ::
                                                                  nil) tuint
                                                                 cc_default))
                                            ((Ebinop Oadd
                                               (Etempvar _M2_0 (tptr tuint))
                                               (Econst_int (Int.repr 0) tint)
                                               (tptr tuint)) ::
                                             (Ebinop Oadd
                                               (Etempvar _M2_1 (tptr tuint))
                                               (Econst_int (Int.repr 0) tint)
                                               (tptr tuint)) ::
                                             (Ebinop Oadd
                                               (Etempvar _M2 (tptr tuint))
                                               (Econst_int (Int.repr 0) tint)
                                               (tptr tuint)) ::
                                             (Ebinop Odiv (Etempvar _M tuint)
                                               (Econst_int (Int.repr 2) tint)
                                               tuint) ::
                                             (Ebinop Odiv (Etempvar _N tuint)
                                               (Econst_int (Int.repr 2) tint)
                                               tuint) ::
                                             (Ebinop Odiv (Etempvar _K tuint)
                                               (Econst_int (Int.repr 2) tint)
                                               tuint) :: nil))
                                          (Sset _error (Etempvar _t'8 tuint)))
                                        (Ssequence
                                          (Sifthenelse (Ebinop Oeq
                                                         (Etempvar _error tint)
                                                         (Econst_int (Int.repr 1) tint)
                                                         tint)
                                            (Ssequence
                                              (Scall None
                                                (Evar _free (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                ((Etempvar _M1 (tptr tuint)) ::
                                                 nil))
                                              (Ssequence
                                                (Scall None
                                                  (Evar _free (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                  ((Etempvar _M2 (tptr tuint)) ::
                                                   nil))
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M2_0 (tptr tuint)) ::
                                                     nil))
                                                  (Ssequence
                                                    (Scall None
                                                      (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                      ((Etempvar _M2_1 (tptr tuint)) ::
                                                       nil))
                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))
                                            Sskip)
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M2_0 (tptr tuint)) ::
                                               nil))
                                            (Ssequence
                                              (Sset _M2_0
                                                (Ecast
                                                  (Econst_int (Int.repr 0) tint)
                                                  (tptr tvoid)))
                                              (Ssequence
                                                (Scall None
                                                  (Evar _free (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                  ((Etempvar _M2_1 (tptr tuint)) ::
                                                   nil))
                                                (Sset _M2_1
                                                  (Ecast
                                                    (Econst_int (Int.repr 0) tint)
                                                    (tptr tvoid)))))))))))))))
                        (Ssequence
                          (Ssequence
                            (Scall (Some _t'9)
                              (Evar _malloc (Tfunction (tuint :: nil)
                                              (tptr tvoid) cc_default))
                              ((Ebinop Omul
                                 (Ebinop Omul
                                   (Ebinop Odiv (Etempvar _M tuint)
                                     (Econst_int (Int.repr 2) tint) tuint)
                                   (Ebinop Odiv (Etempvar _N tuint)
                                     (Econst_int (Int.repr 2) tint) tuint)
                                   tuint) (Esizeof tuint tulong) tulong) ::
                               nil))
                            (Sset _M3
                              (Ecast (Etempvar _t'9 (tptr tvoid))
                                (tptr tuint))))
                          (Ssequence
                            (Sifthenelse (Ebinop Oeq
                                           (Etempvar _M3 (tptr tuint))
                                           (Ecast
                                             (Econst_int (Int.repr 0) tint)
                                             (tptr tvoid)) tint)
                              (Ssequence
                                (Scall None
                                  (Evar _free (Tfunction
                                                ((tptr tvoid) :: nil) tvoid
                                                cc_default))
                                  ((Etempvar _M1 (tptr tuint)) :: nil))
                                (Ssequence
                                  (Scall None
                                    (Evar _free (Tfunction
                                                  ((tptr tvoid) :: nil) tvoid
                                                  cc_default))
                                    ((Etempvar _M2 (tptr tuint)) :: nil))
                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))
                              Sskip)
                            (Ssequence
                              (Ssequence
                                (Ssequence
                                  (Scall (Some _t'10)
                                    (Evar _malloc (Tfunction (tuint :: nil)
                                                    (tptr tvoid) cc_default))
                                    ((Ebinop Omul
                                       (Ebinop Omul
                                         (Ebinop Odiv (Etempvar _M tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint)
                                         (Ebinop Odiv (Etempvar _K tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint) tuint)
                                       (Esizeof tuint tulong) tulong) :: nil))
                                  (Sset _M3_0
                                    (Ecast (Etempvar _t'10 (tptr tvoid))
                                      (tptr tuint))))
                                (Ssequence
                                  (Sifthenelse (Ebinop Oeq
                                                 (Etempvar _M3_0 (tptr tuint))
                                                 (Ecast
                                                   (Econst_int (Int.repr 0) tint)
                                                   (tptr tvoid)) tint)
                                    (Ssequence
                                      (Scall None
                                        (Evar _free (Tfunction
                                                      ((tptr tvoid) :: nil)
                                                      tvoid cc_default))
                                        ((Etempvar _M1 (tptr tuint)) :: nil))
                                      (Ssequence
                                        (Scall None
                                          (Evar _free (Tfunction
                                                        ((tptr tvoid) :: nil)
                                                        tvoid cc_default))
                                          ((Etempvar _M2 (tptr tuint)) ::
                                           nil))
                                        (Ssequence
                                          (Scall None
                                            (Evar _free (Tfunction
                                                          ((tptr tvoid) ::
                                                           nil) tvoid
                                                          cc_default))
                                            ((Etempvar _M3 (tptr tuint)) ::
                                             nil))
                                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))))
                                    Sskip)
                                  (Ssequence
                                    (Ssequence
                                      (Sset _i__4
                                        (Econst_int (Int.repr 0) tint))
                                      (Sloop
                                        (Ssequence
                                          (Sifthenelse (Ebinop Olt
                                                         (Etempvar _i__4 tint)
                                                         (Ebinop Odiv
                                                           (Etempvar _M tuint)
                                                           (Econst_int (Int.repr 2) tint)
                                                           tuint) tint)
                                            Sskip
                                            Sbreak)
                                          (Ssequence
                                            (Sset _j__4
                                              (Econst_int (Int.repr 0) tint))
                                            (Sloop
                                              (Ssequence
                                                (Sifthenelse (Ebinop Olt
                                                               (Etempvar _j__4 tint)
                                                               (Ebinop Odiv
                                                                 (Etempvar _K tuint)
                                                                 (Econst_int (Int.repr 2) tint)
                                                                 tuint) tint)
                                                  Sskip
                                                  Sbreak)
                                                (Ssequence
                                                  (Sset _t'57
                                                    (Ederef
                                                      (Ebinop Oadd
                                                        (Etempvar _matA (tptr tuint))
                                                        (Ebinop Oadd
                                                          (Ebinop Omul
                                                            (Etempvar _i__4 tint)
                                                            (Etempvar _K tuint)
                                                            tuint)
                                                          (Etempvar _j__4 tint)
                                                          tuint)
                                                        (tptr tuint)) tuint))
                                                  (Sassign
                                                    (Ederef
                                                      (Ebinop Oadd
                                                        (Etempvar _M3_0 (tptr tuint))
                                                        (Ebinop Oadd
                                                          (Ebinop Odiv
                                                            (Ebinop Omul
                                                              (Etempvar _i__4 tint)
                                                              (Etempvar _K tuint)
                                                              tuint)
                                                            (Econst_int (Int.repr 2) tint)
                                                            tuint)
                                                          (Etempvar _j__4 tint)
                                                          tuint)
                                                        (tptr tuint)) tuint)
                                                    (Etempvar _t'57 tuint))))
                                              (Sset _j__4
                                                (Ebinop Oadd
                                                  (Etempvar _j__4 tint)
                                                  (Econst_int (Int.repr 1) tint)
                                                  tint)))))
                                        (Sset _i__4
                                          (Ebinop Oadd (Etempvar _i__4 tint)
                                            (Econst_int (Int.repr 1) tint)
                                            tint))))
                                    (Ssequence
                                      (Ssequence
                                        (Scall (Some _t'11)
                                          (Evar _malloc (Tfunction
                                                          (tuint :: nil)
                                                          (tptr tvoid)
                                                          cc_default))
                                          ((Ebinop Omul
                                             (Ebinop Omul
                                               (Ebinop Odiv
                                                 (Etempvar _K tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint)
                                               (Ebinop Odiv
                                                 (Etempvar _N tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint) tuint)
                                             (Esizeof tuint tulong) tulong) ::
                                           nil))
                                        (Sset _M3_1
                                          (Ecast
                                            (Etempvar _t'11 (tptr tvoid))
                                            (tptr tuint))))
                                      (Ssequence
                                        (Sifthenelse (Ebinop Oeq
                                                       (Etempvar _M3_1 (tptr tuint))
                                                       (Ecast
                                                         (Econst_int (Int.repr 0) tint)
                                                         (tptr tvoid)) tint)
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M1 (tptr tuint)) ::
                                               nil))
                                            (Ssequence
                                              (Scall None
                                                (Evar _free (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                ((Etempvar _M2 (tptr tuint)) ::
                                                 nil))
                                              (Ssequence
                                                (Scall None
                                                  (Evar _free (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                  ((Etempvar _M3 (tptr tuint)) ::
                                                   nil))
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M3_0 (tptr tuint)) ::
                                                     nil))
                                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))
                                          Sskip)
                                        (Ssequence
                                          (Sset _offset
                                            (Ebinop Odiv
                                              (Ebinop Omul
                                                (Etempvar _K tuint)
                                                (Etempvar _N tuint) tuint)
                                              (Econst_int (Int.repr 2) tint)
                                              tuint))
                                          (Ssequence
                                            (Ssequence
                                              (Sset _i__5
                                                (Econst_int (Int.repr 0) tint))
                                              (Sloop
                                                (Ssequence
                                                  (Sifthenelse (Ebinop Olt
                                                                 (Etempvar _i__5 tint)
                                                                 (Ebinop Odiv
                                                                   (Etempvar _K tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint)
                                                                 tint)
                                                    Sskip
                                                    Sbreak)
                                                  (Ssequence
                                                    (Sset _j__5
                                                      (Ebinop Odiv
                                                        (Etempvar _N tuint)
                                                        (Econst_int (Int.repr 2) tint)
                                                        tuint))
                                                    (Sloop
                                                      (Ssequence
                                                        (Sifthenelse 
                                                          (Ebinop Olt
                                                            (Etempvar _j__5 tint)
                                                            (Etempvar _N tuint)
                                                            tint)
                                                          Sskip
                                                          Sbreak)
                                                        (Ssequence
                                                          (Sset _baseIdx__3
                                                            (Ebinop Oadd
                                                              (Ebinop Omul
                                                                (Etempvar _i__5 tint)
                                                                (Etempvar _N tuint)
                                                                tuint)
                                                              (Etempvar _j__5 tint)
                                                              tuint))
                                                          (Ssequence
                                                            (Sset _t'55
                                                              (Ederef
                                                                (Ebinop Oadd
                                                                  (Etempvar _matB (tptr tuint))
                                                                  (Etempvar _baseIdx__3 tint)
                                                                  (tptr tuint))
                                                                tuint))
                                                            (Ssequence
                                                              (Sset _t'56
                                                                (Ederef
                                                                  (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__3 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                  tuint))
                                                              (Sassign
                                                                (Ederef
                                                                  (Ebinop Oadd
                                                                    (Etempvar _M3_1 (tptr tuint))
                                                                    (Ebinop Osub
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__5 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__5 tint)
                                                                    tuint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                  tuint)
                                                                (Ebinop Osub
                                                                  (Etempvar _t'55 tuint)
                                                                  (Etempvar _t'56 tuint)
                                                                  tuint))))))
                                                      (Sset _j__5
                                                        (Ebinop Oadd
                                                          (Etempvar _j__5 tint)
                                                          (Econst_int (Int.repr 1) tint)
                                                          tint)))))
                                                (Sset _i__5
                                                  (Ebinop Oadd
                                                    (Etempvar _i__5 tint)
                                                    (Econst_int (Int.repr 1) tint)
                                                    tint))))
                                            (Ssequence
                                              (Ssequence
                                                (Scall (Some _t'12)
                                                  (Evar _mm_strassen 
                                                  (Tfunction
                                                    ((tptr tuint) ::
                                                     (tptr tuint) ::
                                                     (tptr tuint) :: tuint ::
                                                     tuint :: tuint :: nil)
                                                    tuint cc_default))
                                                  ((Ebinop Oadd
                                                     (Etempvar _M3_0 (tptr tuint))
                                                     (Econst_int (Int.repr 0) tint)
                                                     (tptr tuint)) ::
                                                   (Ebinop Oadd
                                                     (Etempvar _M3_1 (tptr tuint))
                                                     (Econst_int (Int.repr 0) tint)
                                                     (tptr tuint)) ::
                                                   (Ebinop Oadd
                                                     (Etempvar _M3 (tptr tuint))
                                                     (Econst_int (Int.repr 0) tint)
                                                     (tptr tuint)) ::
                                                   (Ebinop Odiv
                                                     (Etempvar _M tuint)
                                                     (Econst_int (Int.repr 2) tint)
                                                     tuint) ::
                                                   (Ebinop Odiv
                                                     (Etempvar _N tuint)
                                                     (Econst_int (Int.repr 2) tint)
                                                     tuint) ::
                                                   (Ebinop Odiv
                                                     (Etempvar _K tuint)
                                                     (Econst_int (Int.repr 2) tint)
                                                     tuint) :: nil))
                                                (Sset _error
                                                  (Etempvar _t'12 tuint)))
                                              (Ssequence
                                                (Sifthenelse (Ebinop Oeq
                                                               (Etempvar _error tint)
                                                               (Econst_int (Int.repr 1) tint)
                                                               tint)
                                                  (Ssequence
                                                    (Scall None
                                                      (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                      ((Etempvar _M1 (tptr tuint)) ::
                                                       nil))
                                                    (Ssequence
                                                      (Scall None
                                                        (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                        ((Etempvar _M2 (tptr tuint)) ::
                                                         nil))
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M3 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M3_0 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M3_1 (tptr tuint)) ::
                                                               nil))
                                                            (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))
                                                  Sskip)
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M3_0 (tptr tuint)) ::
                                                     nil))
                                                  (Ssequence
                                                    (Sset _M3_0
                                                      (Ecast
                                                        (Econst_int (Int.repr 0) tint)
                                                        (tptr tvoid)))
                                                    (Ssequence
                                                      (Scall None
                                                        (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                        ((Etempvar _M3_1 (tptr tuint)) ::
                                                         nil))
                                                      (Sset _M3_1
                                                        (Ecast
                                                          (Econst_int (Int.repr 0) tint)
                                                          (tptr tvoid)))))))))))))))
                              (Ssequence
                                (Ssequence
                                  (Scall (Some _t'13)
                                    (Evar _malloc (Tfunction (tuint :: nil)
                                                    (tptr tvoid) cc_default))
                                    ((Ebinop Omul
                                       (Ebinop Omul
                                         (Ebinop Odiv (Etempvar _M tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint)
                                         (Ebinop Odiv (Etempvar _N tuint)
                                           (Econst_int (Int.repr 2) tint)
                                           tuint) tuint)
                                       (Esizeof tuint tulong) tulong) :: nil))
                                  (Sset _M4
                                    (Ecast (Etempvar _t'13 (tptr tvoid))
                                      (tptr tuint))))
                                (Ssequence
                                  (Sifthenelse (Ebinop Oeq
                                                 (Etempvar _M4 (tptr tuint))
                                                 (Ecast
                                                   (Econst_int (Int.repr 0) tint)
                                                   (tptr tvoid)) tint)
                                    (Ssequence
                                      (Scall None
                                        (Evar _free (Tfunction
                                                      ((tptr tvoid) :: nil)
                                                      tvoid cc_default))
                                        ((Etempvar _M1 (tptr tuint)) :: nil))
                                      (Ssequence
                                        (Scall None
                                          (Evar _free (Tfunction
                                                        ((tptr tvoid) :: nil)
                                                        tvoid cc_default))
                                          ((Etempvar _M2 (tptr tuint)) ::
                                           nil))
                                        (Ssequence
                                          (Scall None
                                            (Evar _free (Tfunction
                                                          ((tptr tvoid) ::
                                                           nil) tvoid
                                                          cc_default))
                                            ((Etempvar _M3 (tptr tuint)) ::
                                             nil))
                                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))))
                                    Sskip)
                                  (Ssequence
                                    (Ssequence
                                      (Ssequence
                                        (Scall (Some _t'14)
                                          (Evar _malloc (Tfunction
                                                          (tuint :: nil)
                                                          (tptr tvoid)
                                                          cc_default))
                                          ((Ebinop Omul
                                             (Ebinop Omul
                                               (Ebinop Odiv
                                                 (Etempvar _M tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint)
                                               (Ebinop Odiv
                                                 (Etempvar _K tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint) tuint)
                                             (Esizeof tuint tulong) tulong) ::
                                           nil))
                                        (Sset _M4_0
                                          (Ecast
                                            (Etempvar _t'14 (tptr tvoid))
                                            (tptr tuint))))
                                      (Ssequence
                                        (Sifthenelse (Ebinop Oeq
                                                       (Etempvar _M4_0 (tptr tuint))
                                                       (Ecast
                                                         (Econst_int (Int.repr 0) tint)
                                                         (tptr tvoid)) tint)
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M1 (tptr tuint)) ::
                                               nil))
                                            (Ssequence
                                              (Scall None
                                                (Evar _free (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                ((Etempvar _M2 (tptr tuint)) ::
                                                 nil))
                                              (Ssequence
                                                (Scall None
                                                  (Evar _free (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                  ((Etempvar _M3 (tptr tuint)) ::
                                                   nil))
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                     nil))
                                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))
                                          Sskip)
                                        (Ssequence
                                          (Ssequence
                                            (Sset _i__6
                                              (Ebinop Odiv
                                                (Etempvar _M tuint)
                                                (Econst_int (Int.repr 2) tint)
                                                tuint))
                                            (Sloop
                                              (Ssequence
                                                (Sifthenelse (Ebinop Olt
                                                               (Etempvar _i__6 tint)
                                                               (Etempvar _M tuint)
                                                               tint)
                                                  Sskip
                                                  Sbreak)
                                                (Ssequence
                                                  (Sset _j__6
                                                    (Ebinop Odiv
                                                      (Etempvar _K tuint)
                                                      (Econst_int (Int.repr 2) tint)
                                                      tuint))
                                                  (Sloop
                                                    (Ssequence
                                                      (Sifthenelse (Ebinop Olt
                                                                    (Etempvar _j__6 tint)
                                                                    (Etempvar _K tuint)
                                                                    tint)
                                                        Sskip
                                                        Sbreak)
                                                      (Ssequence
                                                        (Sset _t'54
                                                          (Ederef
                                                            (Ebinop Oadd
                                                              (Etempvar _matA (tptr tuint))
                                                              (Ebinop Oadd
                                                                (Ebinop Omul
                                                                  (Etempvar _i__6 tint)
                                                                  (Etempvar _K tuint)
                                                                  tuint)
                                                                (Etempvar _j__6 tint)
                                                                tuint)
                                                              (tptr tuint))
                                                            tuint))
                                                        (Sassign
                                                          (Ederef
                                                            (Ebinop Oadd
                                                              (Etempvar _M4_0 (tptr tuint))
                                                              (Ebinop Osub
                                                                (Ebinop Oadd
                                                                  (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Ebinop Osub
                                                                    (Etempvar _i__6 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                  (Etempvar _j__6 tint)
                                                                  tuint)
                                                                (Ebinop Odiv
                                                                  (Etempvar _K tuint)
                                                                  (Econst_int (Int.repr 2) tint)
                                                                  tuint)
                                                                tuint)
                                                              (tptr tuint))
                                                            tuint)
                                                          (Etempvar _t'54 tuint))))
                                                    (Sset _j__6
                                                      (Ebinop Oadd
                                                        (Etempvar _j__6 tint)
                                                        (Econst_int (Int.repr 1) tint)
                                                        tint)))))
                                              (Sset _i__6
                                                (Ebinop Oadd
                                                  (Etempvar _i__6 tint)
                                                  (Econst_int (Int.repr 1) tint)
                                                  tint))))
                                          (Ssequence
                                            (Ssequence
                                              (Scall (Some _t'15)
                                                (Evar _malloc (Tfunction
                                                                (tuint ::
                                                                 nil)
                                                                (tptr tvoid)
                                                                cc_default))
                                                ((Ebinop Omul
                                                   (Ebinop Omul
                                                     (Ebinop Odiv
                                                       (Etempvar _K tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint)
                                                     (Ebinop Odiv
                                                       (Etempvar _N tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint) tuint)
                                                   (Esizeof tuint tulong)
                                                   tulong) :: nil))
                                              (Sset _M4_1
                                                (Ecast
                                                  (Etempvar _t'15 (tptr tvoid))
                                                  (tptr tuint))))
                                            (Ssequence
                                              (Sifthenelse (Ebinop Oeq
                                                             (Etempvar _M4_1 (tptr tuint))
                                                             (Ecast
                                                               (Econst_int (Int.repr 0) tint)
                                                               (tptr tvoid))
                                                             tint)
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                     nil))
                                                  (Ssequence
                                                    (Scall None
                                                      (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                      ((Etempvar _M2 (tptr tuint)) ::
                                                       nil))
                                                    (Ssequence
                                                      (Scall None
                                                        (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                        ((Etempvar _M3 (tptr tuint)) ::
                                                         nil))
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M4 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M4_0 (tptr tuint)) ::
                                                             nil))
                                                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))
                                                Sskip)
                                              (Ssequence
                                                (Sset _offset
                                                  (Ebinop Odiv
                                                    (Ebinop Omul
                                                      (Etempvar _N tuint)
                                                      (Etempvar _K tuint)
                                                      tuint)
                                                    (Econst_int (Int.repr 2) tint)
                                                    tuint))
                                                (Ssequence
                                                  (Ssequence
                                                    (Sset _i__7
                                                      (Econst_int (Int.repr 0) tint))
                                                    (Sloop
                                                      (Ssequence
                                                        (Sifthenelse 
                                                          (Ebinop Olt
                                                            (Etempvar _i__7 tint)
                                                            (Ebinop Odiv
                                                              (Etempvar _K tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint) tint)
                                                          Sskip
                                                          Sbreak)
                                                        (Ssequence
                                                          (Sset _j__7
                                                            (Econst_int (Int.repr 0) tint))
                                                          (Sloop
                                                            (Ssequence
                                                              (Sifthenelse 
                                                                (Ebinop Olt
                                                                  (Etempvar _j__7 tint)
                                                                  (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                  tint)
                                                                Sskip
                                                                Sbreak)
                                                              (Ssequence
                                                                (Sset _baseIdx__4
                                                                  (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__7 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__7 tint)
                                                                    tuint))
                                                                (Ssequence
                                                                  (Sset _t'52
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__4 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                  (Ssequence
                                                                    (Sset _t'53
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Etempvar _baseIdx__4 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M4_1 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__7 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__7 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Osub
                                                                    (Etempvar _t'52 tuint)
                                                                    (Etempvar _t'53 tuint)
                                                                    tuint))))))
                                                            (Sset _j__7
                                                              (Ebinop Oadd
                                                                (Etempvar _j__7 tint)
                                                                (Econst_int (Int.repr 1) tint)
                                                                tint)))))
                                                      (Sset _i__7
                                                        (Ebinop Oadd
                                                          (Etempvar _i__7 tint)
                                                          (Econst_int (Int.repr 1) tint)
                                                          tint))))
                                                  (Ssequence
                                                    (Ssequence
                                                      (Scall (Some _t'16)
                                                        (Evar _mm_strassen 
                                                        (Tfunction
                                                          ((tptr tuint) ::
                                                           (tptr tuint) ::
                                                           (tptr tuint) ::
                                                           tuint :: tuint ::
                                                           tuint :: nil)
                                                          tuint cc_default))
                                                        ((Ebinop Oadd
                                                           (Etempvar _M4_0 (tptr tuint))
                                                           (Econst_int (Int.repr 0) tint)
                                                           (tptr tuint)) ::
                                                         (Ebinop Oadd
                                                           (Etempvar _M4_1 (tptr tuint))
                                                           (Econst_int (Int.repr 0) tint)
                                                           (tptr tuint)) ::
                                                         (Ebinop Oadd
                                                           (Etempvar _M4 (tptr tuint))
                                                           (Econst_int (Int.repr 0) tint)
                                                           (tptr tuint)) ::
                                                         (Ebinop Odiv
                                                           (Etempvar _M tuint)
                                                           (Econst_int (Int.repr 2) tint)
                                                           tuint) ::
                                                         (Ebinop Odiv
                                                           (Etempvar _N tuint)
                                                           (Econst_int (Int.repr 2) tint)
                                                           tuint) ::
                                                         (Ebinop Odiv
                                                           (Etempvar _K tuint)
                                                           (Econst_int (Int.repr 2) tint)
                                                           tuint) :: nil))
                                                      (Sset _error
                                                        (Etempvar _t'16 tuint)))
                                                    (Ssequence
                                                      (Sifthenelse (Ebinop Oeq
                                                                    (Etempvar _error tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M1 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M2 (tptr tuint)) ::
                                                               nil))
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M3 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M4 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4_0 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))
                                                        Sskip)
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M4_0 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Sset _M4_0
                                                            (Ecast
                                                              (Econst_int (Int.repr 0) tint)
                                                              (tptr tvoid)))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M4_1 (tptr tuint)) ::
                                                               nil))
                                                            (Sset _M4_1
                                                              (Ecast
                                                                (Econst_int (Int.repr 0) tint)
                                                                (tptr tvoid)))))))))))))))
                                    (Ssequence
                                      (Ssequence
                                        (Scall (Some _t'17)
                                          (Evar _malloc (Tfunction
                                                          (tuint :: nil)
                                                          (tptr tvoid)
                                                          cc_default))
                                          ((Ebinop Omul
                                             (Ebinop Omul
                                               (Ebinop Odiv
                                                 (Etempvar _M tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint)
                                               (Ebinop Odiv
                                                 (Etempvar _N tuint)
                                                 (Econst_int (Int.repr 2) tint)
                                                 tuint) tuint)
                                             (Esizeof tuint tulong) tulong) ::
                                           nil))
                                        (Sset _M5
                                          (Ecast
                                            (Etempvar _t'17 (tptr tvoid))
                                            (tptr tuint))))
                                      (Ssequence
                                        (Sifthenelse (Ebinop Oeq
                                                       (Etempvar _M5 (tptr tuint))
                                                       (Ecast
                                                         (Econst_int (Int.repr 0) tint)
                                                         (tptr tvoid)) tint)
                                          (Ssequence
                                            (Scall None
                                              (Evar _free (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                              ((Etempvar _M1 (tptr tuint)) ::
                                               nil))
                                            (Ssequence
                                              (Scall None
                                                (Evar _free (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                ((Etempvar _M2 (tptr tuint)) ::
                                                 nil))
                                              (Ssequence
                                                (Scall None
                                                  (Evar _free (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                  ((Etempvar _M3 (tptr tuint)) ::
                                                   nil))
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                     nil))
                                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))
                                          Sskip)
                                        (Ssequence
                                          (Ssequence
                                            (Ssequence
                                              (Scall (Some _t'18)
                                                (Evar _malloc (Tfunction
                                                                (tuint ::
                                                                 nil)
                                                                (tptr tvoid)
                                                                cc_default))
                                                ((Ebinop Omul
                                                   (Ebinop Omul
                                                     (Ebinop Odiv
                                                       (Etempvar _M tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint)
                                                     (Ebinop Odiv
                                                       (Etempvar _K tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint) tuint)
                                                   (Esizeof tuint tulong)
                                                   tulong) :: nil))
                                              (Sset _M5_0
                                                (Ecast
                                                  (Etempvar _t'18 (tptr tvoid))
                                                  (tptr tuint))))
                                            (Ssequence
                                              (Sifthenelse (Ebinop Oeq
                                                             (Etempvar _M5_0 (tptr tuint))
                                                             (Ecast
                                                               (Econst_int (Int.repr 0) tint)
                                                               (tptr tvoid))
                                                             tint)
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                     nil))
                                                  (Ssequence
                                                    (Scall None
                                                      (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                      ((Etempvar _M2 (tptr tuint)) ::
                                                       nil))
                                                    (Ssequence
                                                      (Scall None
                                                        (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                        ((Etempvar _M3 (tptr tuint)) ::
                                                         nil))
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M4 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M5 (tptr tuint)) ::
                                                             nil))
                                                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))
                                                Sskip)
                                              (Ssequence
                                                (Sset _offset
                                                  (Ebinop Odiv
                                                    (Etempvar _K tuint)
                                                    (Econst_int (Int.repr 2) tint)
                                                    tuint))
                                                (Ssequence
                                                  (Ssequence
                                                    (Sset _i__8
                                                      (Econst_int (Int.repr 0) tint))
                                                    (Sloop
                                                      (Ssequence
                                                        (Sifthenelse 
                                                          (Ebinop Olt
                                                            (Etempvar _i__8 tint)
                                                            (Ebinop Odiv
                                                              (Etempvar _M tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint) tint)
                                                          Sskip
                                                          Sbreak)
                                                        (Ssequence
                                                          (Sset _j__8
                                                            (Econst_int (Int.repr 0) tint))
                                                          (Sloop
                                                            (Ssequence
                                                              (Sifthenelse 
                                                                (Ebinop Olt
                                                                  (Etempvar _j__8 tint)
                                                                  (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                  tint)
                                                                Sskip
                                                                Sbreak)
                                                              (Ssequence
                                                                (Sset _baseIdx__5
                                                                  (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__8 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Etempvar _j__8 tint)
                                                                    tuint))
                                                                (Ssequence
                                                                  (Sset _t'50
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Etempvar _baseIdx__5 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                  (Ssequence
                                                                    (Sset _t'51
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__5 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M5_0 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__8 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__8 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'50 tuint)
                                                                    (Etempvar _t'51 tuint)
                                                                    tuint))))))
                                                            (Sset _j__8
                                                              (Ebinop Oadd
                                                                (Etempvar _j__8 tint)
                                                                (Econst_int (Int.repr 1) tint)
                                                                tint)))))
                                                      (Sset _i__8
                                                        (Ebinop Oadd
                                                          (Etempvar _i__8 tint)
                                                          (Econst_int (Int.repr 1) tint)
                                                          tint))))
                                                  (Ssequence
                                                    (Ssequence
                                                      (Scall (Some _t'19)
                                                        (Evar _malloc 
                                                        (Tfunction
                                                          (tuint :: nil)
                                                          (tptr tvoid)
                                                          cc_default))
                                                        ((Ebinop Omul
                                                           (Ebinop Omul
                                                             (Ebinop Odiv
                                                               (Etempvar _K tuint)
                                                               (Econst_int (Int.repr 2) tint)
                                                               tuint)
                                                             (Ebinop Odiv
                                                               (Etempvar _N tuint)
                                                               (Econst_int (Int.repr 2) tint)
                                                               tuint) tuint)
                                                           (Esizeof tuint tulong)
                                                           tulong) :: nil))
                                                      (Sset _M5_1
                                                        (Ecast
                                                          (Etempvar _t'19 (tptr tvoid))
                                                          (tptr tuint))))
                                                    (Ssequence
                                                      (Sifthenelse (Ebinop Oeq
                                                                    (Etempvar _M5_1 (tptr tuint))
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M1 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M2 (tptr tuint)) ::
                                                               nil))
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M3 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M4 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))
                                                        Sskip)
                                                      (Ssequence
                                                        (Sset _offset
                                                          (Ebinop Oadd
                                                            (Ebinop Odiv
                                                              (Ebinop Omul
                                                                (Etempvar _N tuint)
                                                                (Etempvar _K tuint)
                                                                tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint)
                                                            (Ebinop Odiv
                                                              (Etempvar _N tuint)
                                                              (Econst_int (Int.repr 2) tint)
                                                              tuint) tuint))
                                                        (Ssequence
                                                          (Ssequence
                                                            (Sset _i__9
                                                              (Econst_int (Int.repr 0) tint))
                                                            (Sloop
                                                              (Ssequence
                                                                (Sifthenelse 
                                                                  (Ebinop Olt
                                                                    (Etempvar _i__9 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                  Sskip
                                                                  Sbreak)
                                                                (Ssequence
                                                                  (Sset _j__9
                                                                    (Econst_int (Int.repr 0) tint))
                                                                  (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__9 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _t'49
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__9 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__9 tint)
                                                                    tuint)
                                                                    (Etempvar _offset tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M5_1 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__9 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__9 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Etempvar _t'49 tuint))))
                                                                    (Sset _j__9
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__9 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                              (Sset _i__9
                                                                (Ebinop Oadd
                                                                  (Etempvar _i__9 tint)
                                                                  (Econst_int (Int.repr 1) tint)
                                                                  tint))))
                                                          (Ssequence
                                                            (Ssequence
                                                              (Scall (Some _t'20)
                                                                (Evar _mm_strassen 
                                                                (Tfunction
                                                                  ((tptr tuint) ::
                                                                   (tptr tuint) ::
                                                                   (tptr tuint) ::
                                                                   tuint ::
                                                                   tuint ::
                                                                   tuint ::
                                                                   nil) tuint
                                                                  cc_default))
                                                                ((Ebinop Oadd
                                                                   (Etempvar _M5_0 (tptr tuint))
                                                                   (Econst_int (Int.repr 0) tint)
                                                                   (tptr tuint)) ::
                                                                 (Ebinop Oadd
                                                                   (Etempvar _M5_1 (tptr tuint))
                                                                   (Econst_int (Int.repr 0) tint)
                                                                   (tptr tuint)) ::
                                                                 (Ebinop Oadd
                                                                   (Etempvar _M5 (tptr tuint))
                                                                   (Econst_int (Int.repr 0) tint)
                                                                   (tptr tuint)) ::
                                                                 (Ebinop Odiv
                                                                   (Etempvar _M tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint) ::
                                                                 (Ebinop Odiv
                                                                   (Etempvar _N tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint) ::
                                                                 (Ebinop Odiv
                                                                   (Etempvar _K tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint) ::
                                                                 nil))
                                                              (Sset _error
                                                                (Etempvar _t'20 tuint)))
                                                            (Ssequence
                                                              (Sifthenelse 
                                                                (Ebinop Oeq
                                                                  (Etempvar _error tint)
                                                                  (Econst_int (Int.repr 1) tint)
                                                                  tint)
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M2 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))))
                                                                Sskip)
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M5_0 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Sset _M5_0
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sset _M5_1
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))))))))))))))))
                                          (Ssequence
                                            (Ssequence
                                              (Scall (Some _t'21)
                                                (Evar _malloc (Tfunction
                                                                (tuint ::
                                                                 nil)
                                                                (tptr tvoid)
                                                                cc_default))
                                                ((Ebinop Omul
                                                   (Ebinop Omul
                                                     (Ebinop Odiv
                                                       (Etempvar _M tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint)
                                                     (Ebinop Odiv
                                                       (Etempvar _N tuint)
                                                       (Econst_int (Int.repr 2) tint)
                                                       tuint) tuint)
                                                   (Esizeof tuint tulong)
                                                   tulong) :: nil))
                                              (Sset _M6
                                                (Ecast
                                                  (Etempvar _t'21 (tptr tvoid))
                                                  (tptr tuint))))
                                            (Ssequence
                                              (Sifthenelse (Ebinop Oeq
                                                             (Etempvar _M6 (tptr tuint))
                                                             (Ecast
                                                               (Econst_int (Int.repr 0) tint)
                                                               (tptr tvoid))
                                                             tint)
                                                (Ssequence
                                                  (Scall None
                                                    (Evar _free (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                     nil))
                                                  (Ssequence
                                                    (Scall None
                                                      (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                      ((Etempvar _M2 (tptr tuint)) ::
                                                       nil))
                                                    (Ssequence
                                                      (Scall None
                                                        (Evar _free (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                        ((Etempvar _M3 (tptr tuint)) ::
                                                         nil))
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M4 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M5 (tptr tuint)) ::
                                                             nil))
                                                          (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))
                                                Sskip)
                                              (Ssequence
                                                (Ssequence
                                                  (Ssequence
                                                    (Scall (Some _t'22)
                                                      (Evar _malloc (Tfunction
                                                                    (tuint ::
                                                                    nil)
                                                                    (tptr tvoid)
                                                                    cc_default))
                                                      ((Ebinop Omul
                                                         (Ebinop Omul
                                                           (Ebinop Odiv
                                                             (Etempvar _M tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint)
                                                           (Ebinop Odiv
                                                             (Etempvar _K tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint) tuint)
                                                         (Esizeof tuint tulong)
                                                         tulong) :: nil))
                                                    (Sset _M6_0
                                                      (Ecast
                                                        (Etempvar _t'22 (tptr tvoid))
                                                        (tptr tuint))))
                                                  (Ssequence
                                                    (Sifthenelse (Ebinop Oeq
                                                                   (Etempvar _M6_0 (tptr tuint))
                                                                   (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                   tint)
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M1 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M2 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M3 (tptr tuint)) ::
                                                               nil))
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M4 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M5 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))
                                                      Sskip)
                                                    (Ssequence
                                                      (Sset _offset
                                                        (Ebinop Odiv
                                                          (Ebinop Omul
                                                            (Etempvar _K tuint)
                                                            (Etempvar _M tuint)
                                                            tuint)
                                                          (Econst_int (Int.repr 2) tint)
                                                          tuint))
                                                      (Ssequence
                                                        (Ssequence
                                                          (Sset _i__10
                                                            (Econst_int (Int.repr 0) tint))
                                                          (Sloop
                                                            (Ssequence
                                                              (Sifthenelse 
                                                                (Ebinop Olt
                                                                  (Etempvar _i__10 tint)
                                                                  (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                  tint)
                                                                Sskip
                                                                Sbreak)
                                                              (Ssequence
                                                                (Sset _j__10
                                                                  (Econst_int (Int.repr 0) tint))
                                                                (Sloop
                                                                  (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__10 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _baseIdx__6
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__10 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Etempvar _j__10 tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'47
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__6 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'48
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Etempvar _baseIdx__6 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M6_0 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__10 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__10 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Osub
                                                                    (Etempvar _t'47 tuint)
                                                                    (Etempvar _t'48 tuint)
                                                                    tuint))))))
                                                                  (Sset _j__10
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__10 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                            (Sset _i__10
                                                              (Ebinop Oadd
                                                                (Etempvar _i__10 tint)
                                                                (Econst_int (Int.repr 1) tint)
                                                                tint))))
                                                        (Ssequence
                                                          (Ssequence
                                                            (Scall (Some _t'23)
                                                              (Evar _malloc 
                                                              (Tfunction
                                                                (tuint ::
                                                                 nil)
                                                                (tptr tvoid)
                                                                cc_default))
                                                              ((Ebinop Omul
                                                                 (Ebinop Omul
                                                                   (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                   (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                   tuint)
                                                                 (Esizeof tuint tulong)
                                                                 tulong) ::
                                                               nil))
                                                            (Sset _M6_1
                                                              (Ecast
                                                                (Etempvar _t'23 (tptr tvoid))
                                                                (tptr tuint))))
                                                          (Ssequence
                                                            (Sifthenelse 
                                                              (Ebinop Oeq
                                                                (Etempvar _M6_1 (tptr tuint))
                                                                (Ecast
                                                                  (Econst_int (Int.repr 0) tint)
                                                                  (tptr tvoid))
                                                                tint)
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M1 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M2 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))))
                                                              Sskip)
                                                            (Ssequence
                                                              (Sset _offset
                                                                (Ebinop Odiv
                                                                  (Etempvar _N tuint)
                                                                  (Econst_int (Int.repr 2) tint)
                                                                  tuint))
                                                              (Ssequence
                                                                (Ssequence
                                                                  (Sset _i__11
                                                                    (Econst_int (Int.repr 0) tint))
                                                                  (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _i__11 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _j__11
                                                                    (Econst_int (Int.repr 0) tint))
                                                                    (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__11 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _baseIdx__7
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__11 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__11 tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'45
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Etempvar _baseIdx__7 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'46
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__7 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M6_1 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__11 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__11 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'45 tuint)
                                                                    (Etempvar _t'46 tuint)
                                                                    tuint))))))
                                                                    (Sset _j__11
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__11 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                                    (Sset _i__11
                                                                    (Ebinop Oadd
                                                                    (Etempvar _i__11 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint))))
                                                                (Ssequence
                                                                  (Ssequence
                                                                    (Scall (Some _t'24)
                                                                    (Evar _mm_strassen 
                                                                    (Tfunction
                                                                    ((tptr tuint) ::
                                                                    (tptr tuint) ::
                                                                    (tptr tuint) ::
                                                                    tuint ::
                                                                    tuint ::
                                                                    tuint ::
                                                                    nil)
                                                                    tuint
                                                                    cc_default))
                                                                    ((Ebinop Oadd
                                                                    (Etempvar _M6_0 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M6_1 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M6 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    nil))
                                                                    (Sset _error
                                                                    (Etempvar _t'24 tuint)))
                                                                  (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Oeq
                                                                    (Etempvar _error tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M2 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))))
                                                                    Sskip)
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M6_0
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sset _M6_1
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))))))))))))))))
                                                (Ssequence
                                                  (Ssequence
                                                    (Scall (Some _t'25)
                                                      (Evar _malloc (Tfunction
                                                                    (tuint ::
                                                                    nil)
                                                                    (tptr tvoid)
                                                                    cc_default))
                                                      ((Ebinop Omul
                                                         (Ebinop Omul
                                                           (Ebinop Odiv
                                                             (Etempvar _M tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint)
                                                           (Ebinop Odiv
                                                             (Etempvar _N tuint)
                                                             (Econst_int (Int.repr 2) tint)
                                                             tuint) tuint)
                                                         (Esizeof tuint tulong)
                                                         tulong) :: nil))
                                                    (Sset _M7
                                                      (Ecast
                                                        (Etempvar _t'25 (tptr tvoid))
                                                        (tptr tuint))))
                                                  (Ssequence
                                                    (Sifthenelse (Ebinop Oeq
                                                                   (Etempvar _M7 (tptr tuint))
                                                                   (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                   tint)
                                                      (Ssequence
                                                        (Scall None
                                                          (Evar _free 
                                                          (Tfunction
                                                            ((tptr tvoid) ::
                                                             nil) tvoid
                                                            cc_default))
                                                          ((Etempvar _M1 (tptr tuint)) ::
                                                           nil))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M2 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Scall None
                                                              (Evar _free 
                                                              (Tfunction
                                                                ((tptr tvoid) ::
                                                                 nil) tvoid
                                                                cc_default))
                                                              ((Etempvar _M3 (tptr tuint)) ::
                                                               nil))
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M4 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M5 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                  (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))
                                                      Sskip)
                                                    (Ssequence
                                                      (Ssequence
                                                        (Ssequence
                                                          (Scall (Some _t'26)
                                                            (Evar _malloc 
                                                            (Tfunction
                                                              (tuint :: nil)
                                                              (tptr tvoid)
                                                              cc_default))
                                                            ((Ebinop Omul
                                                               (Ebinop Omul
                                                                 (Ebinop Odiv
                                                                   (Etempvar _M tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint)
                                                                 (Ebinop Odiv
                                                                   (Etempvar _K tuint)
                                                                   (Econst_int (Int.repr 2) tint)
                                                                   tuint)
                                                                 tuint)
                                                               (Esizeof tuint tulong)
                                                               tulong) ::
                                                             nil))
                                                          (Sset _M7_0
                                                            (Ecast
                                                              (Etempvar _t'26 (tptr tvoid))
                                                              (tptr tuint))))
                                                        (Ssequence
                                                          (Sifthenelse 
                                                            (Ebinop Oeq
                                                              (Etempvar _M7_0 (tptr tuint))
                                                              (Ecast
                                                                (Econst_int (Int.repr 0) tint)
                                                                (tptr tvoid))
                                                              tint)
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M1 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Scall None
                                                                  (Evar _free 
                                                                  (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                  ((Etempvar _M2 (tptr tuint)) ::
                                                                   nil))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))))
                                                            Sskip)
                                                          (Ssequence
                                                            (Sset _offset
                                                              (Ebinop Odiv
                                                                (Ebinop Omul
                                                                  (Etempvar _M tuint)
                                                                  (Etempvar _K tuint)
                                                                  tuint)
                                                                (Econst_int (Int.repr 2) tint)
                                                                tuint))
                                                            (Ssequence
                                                              (Ssequence
                                                                (Sset _i__12
                                                                  (Econst_int (Int.repr 0) tint))
                                                                (Sloop
                                                                  (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _i__12 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _j__12
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint))
                                                                    (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__12 tint)
                                                                    (Etempvar _K tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _baseIdx__8
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__12 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Etempvar _j__12 tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'43
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Etempvar _baseIdx__8 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'44
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matA (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__8 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M7_0 (tptr tuint))
                                                                    (Ebinop Osub
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__12 tint)
                                                                    (Etempvar _K tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__12 tint)
                                                                    tuint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Osub
                                                                    (Etempvar _t'43 tuint)
                                                                    (Etempvar _t'44 tuint)
                                                                    tuint))))))
                                                                    (Sset _j__12
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__12 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                                  (Sset _i__12
                                                                    (Ebinop Oadd
                                                                    (Etempvar _i__12 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint))))
                                                              (Ssequence
                                                                (Ssequence
                                                                  (Scall (Some _t'27)
                                                                    (Evar _malloc 
                                                                    (Tfunction
                                                                    (tuint ::
                                                                    nil)
                                                                    (tptr tvoid)
                                                                    cc_default))
                                                                    ((Ebinop Omul
                                                                    (Ebinop Omul
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Esizeof tuint tulong)
                                                                    tulong) ::
                                                                    nil))
                                                                  (Sset _M7_1
                                                                    (Ecast
                                                                    (Etempvar _t'27 (tptr tvoid))
                                                                    (tptr tuint))))
                                                                (Ssequence
                                                                  (Sifthenelse 
                                                                    (Ebinop Oeq
                                                                    (Etempvar _M7_1 (tptr tuint))
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M2 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint)))))))))))
                                                                    Sskip)
                                                                  (Ssequence
                                                                    (Sset _offset
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Ssequence
                                                                    (Sset _i__13
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint))
                                                                    (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _i__13 tint)
                                                                    (Etempvar _K tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _j__13
                                                                    (Econst_int (Int.repr 0) tint))
                                                                    (Sloop
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__13 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _baseIdx__9
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__13 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__13 tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'41
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Etempvar _baseIdx__9 tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'42
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matB (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Etempvar _baseIdx__9 tint)
                                                                    (Etempvar _offset tint)
                                                                    tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M7_1 (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Ebinop Osub
                                                                    (Etempvar _i__13 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__13 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'41 tuint)
                                                                    (Etempvar _t'42 tuint)
                                                                    tuint))))))
                                                                    (Sset _j__13
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__13 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                                    (Sset _i__13
                                                                    (Ebinop Oadd
                                                                    (Etempvar _i__13 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint))))
                                                                    (Ssequence
                                                                    (Ssequence
                                                                    (Scall (Some _t'28)
                                                                    (Evar _mm_strassen 
                                                                    (Tfunction
                                                                    ((tptr tuint) ::
                                                                    (tptr tuint) ::
                                                                    (tptr tuint) ::
                                                                    tuint ::
                                                                    tuint ::
                                                                    tuint ::
                                                                    nil)
                                                                    tuint
                                                                    cc_default))
                                                                    ((Ebinop Oadd
                                                                    (Etempvar _M7_0 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M7_1 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M7 (tptr tuint))
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tuint)) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    (Ebinop Odiv
                                                                    (Etempvar _K tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint) ::
                                                                    nil))
                                                                    (Sset _error
                                                                    (Etempvar _t'28 tuint)))
                                                                    (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Oeq
                                                                    (Etempvar _error tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M2 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sreturn (Some (Econst_int (Int.repr 1) tint))))))))))))
                                                                    Sskip)
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7_0 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M7_0
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7_1 (tptr tuint)) ::
                                                                    nil))
                                                                    (Sset _M7_1
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid))))))))))))))))
                                                      (Ssequence
                                                        (Ssequence
                                                          (Sset _i__14
                                                            (Econst_int (Int.repr 0) tint))
                                                          (Sloop
                                                            (Ssequence
                                                              (Sifthenelse 
                                                                (Ebinop Olt
                                                                  (Etempvar _i__14 tint)
                                                                  (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                  tint)
                                                                Sskip
                                                                Sbreak)
                                                              (Ssequence
                                                                (Sset _j__14
                                                                  (Econst_int (Int.repr 0) tint))
                                                                (Sloop
                                                                  (Ssequence
                                                                    (Sifthenelse 
                                                                    (Ebinop Olt
                                                                    (Etempvar _j__14 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tint)
                                                                    Sskip
                                                                    Sbreak)
                                                                    (Ssequence
                                                                    (Sset _idx
                                                                    (Ebinop Oadd
                                                                    (Ebinop Odiv
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__14 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    (Etempvar _j__14 tint)
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Ssequence
                                                                    (Sset _t'37
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M1 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'38
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M4 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'39
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M5 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'40
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M7 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matC (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__14 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__14 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Ebinop Osub
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'37 tuint)
                                                                    (Etempvar _t'38 tuint)
                                                                    tuint)
                                                                    (Etempvar _t'39 tuint)
                                                                    tuint)
                                                                    (Etempvar _t'40 tuint)
                                                                    tuint))))))
                                                                    (Ssequence
                                                                    (Ssequence
                                                                    (Sset _t'35
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M3 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'36
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M5 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matC (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Etempvar _i__14 tint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__14 tint)
                                                                    tuint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'35 tuint)
                                                                    (Etempvar _t'36 tuint)
                                                                    tuint))))
                                                                    (Ssequence
                                                                    (Ssequence
                                                                    (Sset _t'33
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M2 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'34
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M4 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matC (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Ebinop Oadd
                                                                    (Etempvar _i__14 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__14 tint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Etempvar _t'33 tuint)
                                                                    (Etempvar _t'34 tuint)
                                                                    tuint))))
                                                                    (Ssequence
                                                                    (Sset _t'29
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M1 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'30
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M2 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'31
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M3 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Ssequence
                                                                    (Sset _t'32
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _M6 (tptr tuint))
                                                                    (Etempvar _idx tint)
                                                                    (tptr tuint))
                                                                    tuint))
                                                                    (Sassign
                                                                    (Ederef
                                                                    (Ebinop Oadd
                                                                    (Etempvar _matC (tptr tuint))
                                                                    (Ebinop Oadd
                                                                    (Ebinop Oadd
                                                                    (Ebinop Omul
                                                                    (Ebinop Oadd
                                                                    (Etempvar _i__14 tint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _M tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Etempvar _N tuint)
                                                                    tuint)
                                                                    (Etempvar _j__14 tint)
                                                                    tuint)
                                                                    (Ebinop Odiv
                                                                    (Etempvar _N tuint)
                                                                    (Econst_int (Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr tuint))
                                                                    tuint)
                                                                    (Ebinop Oadd
                                                                    (Ebinop Oadd
                                                                    (Ebinop Osub
                                                                    (Etempvar _t'29 tuint)
                                                                    (Etempvar _t'30 tuint)
                                                                    tuint)
                                                                    (Etempvar _t'31 tuint)
                                                                    tuint)
                                                                    (Etempvar _t'32 tuint)
                                                                    tuint)))))))))))
                                                                  (Sset _j__14
                                                                    (Ebinop Oadd
                                                                    (Etempvar _j__14 tint)
                                                                    (Econst_int (Int.repr 1) tint)
                                                                    tint)))))
                                                            (Sset _i__14
                                                              (Ebinop Oadd
                                                                (Etempvar _i__14 tint)
                                                                (Econst_int (Int.repr 1) tint)
                                                                tint))))
                                                        (Ssequence
                                                          (Scall None
                                                            (Evar _free 
                                                            (Tfunction
                                                              ((tptr tvoid) ::
                                                               nil) tvoid
                                                              cc_default))
                                                            ((Etempvar _M1 (tptr tuint)) ::
                                                             nil))
                                                          (Ssequence
                                                            (Sset _M1
                                                              (Ecast
                                                                (Econst_int (Int.repr 0) tint)
                                                                (tptr tvoid)))
                                                            (Ssequence
                                                              (Scall None
                                                                (Evar _free 
                                                                (Tfunction
                                                                  ((tptr tvoid) ::
                                                                   nil) tvoid
                                                                  cc_default))
                                                                ((Etempvar _M2 (tptr tuint)) ::
                                                                 nil))
                                                              (Ssequence
                                                                (Sset _M2
                                                                  (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                (Ssequence
                                                                  (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M3 (tptr tuint)) ::
                                                                    nil))
                                                                  (Ssequence
                                                                    (Sset _M3
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M4 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M4
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M5 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M5
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M6 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M6
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Ssequence
                                                                    (Scall None
                                                                    (Evar _free 
                                                                    (Tfunction
                                                                    ((tptr tvoid) ::
                                                                    nil)
                                                                    tvoid
                                                                    cc_default))
                                                                    ((Etempvar _M7 (tptr tuint)) ::
                                                                    nil))
                                                                    (Ssequence
                                                                    (Sset _M7
                                                                    (Ecast
                                                                    (Econst_int (Int.repr 0) tint)
                                                                    (tptr tvoid)))
                                                                    (Sreturn (Some (Etempvar _error tint)))))))))))))))))))))))))))))))))))))))))))))
|}.

Definition composites : list composite_definition :=
nil.

Definition global_definitions : list (ident * globdef fundef type) :=
((___compcert_va_int32,
   Gfun(External (EF_runtime "__compcert_va_int32"
                   (mksignature (AST.Xptr :: nil) AST.Xint cc_default))
     ((tptr tvoid) :: nil) tuint cc_default)) ::
 (___compcert_va_int64,
   Gfun(External (EF_runtime "__compcert_va_int64"
                   (mksignature (AST.Xptr :: nil) AST.Xlong cc_default))
     ((tptr tvoid) :: nil) tulong cc_default)) ::
 (___compcert_va_float64,
   Gfun(External (EF_runtime "__compcert_va_float64"
                   (mksignature (AST.Xptr :: nil) AST.Xfloat cc_default))
     ((tptr tvoid) :: nil) tdouble cc_default)) ::
 (___compcert_va_composite,
   Gfun(External (EF_runtime "__compcert_va_composite"
                   (mksignature (AST.Xptr :: AST.Xlong :: nil) AST.Xptr
                     cc_default)) ((tptr tvoid) :: tulong :: nil)
     (tptr tvoid) cc_default)) ::
 (___compcert_i64_dtos,
   Gfun(External (EF_runtime "__compcert_i64_dtos"
                   (mksignature (AST.Xfloat :: nil) AST.Xlong cc_default))
     (tdouble :: nil) tlong cc_default)) ::
 (___compcert_i64_dtou,
   Gfun(External (EF_runtime "__compcert_i64_dtou"
                   (mksignature (AST.Xfloat :: nil) AST.Xlong cc_default))
     (tdouble :: nil) tulong cc_default)) ::
 (___compcert_i64_stod,
   Gfun(External (EF_runtime "__compcert_i64_stod"
                   (mksignature (AST.Xlong :: nil) AST.Xfloat cc_default))
     (tlong :: nil) tdouble cc_default)) ::
 (___compcert_i64_utod,
   Gfun(External (EF_runtime "__compcert_i64_utod"
                   (mksignature (AST.Xlong :: nil) AST.Xfloat cc_default))
     (tulong :: nil) tdouble cc_default)) ::
 (___compcert_i64_stof,
   Gfun(External (EF_runtime "__compcert_i64_stof"
                   (mksignature (AST.Xlong :: nil) AST.Xsingle cc_default))
     (tlong :: nil) tfloat cc_default)) ::
 (___compcert_i64_utof,
   Gfun(External (EF_runtime "__compcert_i64_utof"
                   (mksignature (AST.Xlong :: nil) AST.Xsingle cc_default))
     (tulong :: nil) tfloat cc_default)) ::
 (___compcert_i64_sdiv,
   Gfun(External (EF_runtime "__compcert_i64_sdiv"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tlong :: tlong :: nil) tlong cc_default)) ::
 (___compcert_i64_udiv,
   Gfun(External (EF_runtime "__compcert_i64_udiv"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tulong :: tulong :: nil) tulong
     cc_default)) ::
 (___compcert_i64_smod,
   Gfun(External (EF_runtime "__compcert_i64_smod"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tlong :: tlong :: nil) tlong cc_default)) ::
 (___compcert_i64_umod,
   Gfun(External (EF_runtime "__compcert_i64_umod"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tulong :: tulong :: nil) tulong
     cc_default)) ::
 (___compcert_i64_shl,
   Gfun(External (EF_runtime "__compcert_i64_shl"
                   (mksignature (AST.Xlong :: AST.Xint :: nil) AST.Xlong
                     cc_default)) (tlong :: tint :: nil) tlong cc_default)) ::
 (___compcert_i64_shr,
   Gfun(External (EF_runtime "__compcert_i64_shr"
                   (mksignature (AST.Xlong :: AST.Xint :: nil) AST.Xlong
                     cc_default)) (tulong :: tint :: nil) tulong cc_default)) ::
 (___compcert_i64_sar,
   Gfun(External (EF_runtime "__compcert_i64_sar"
                   (mksignature (AST.Xlong :: AST.Xint :: nil) AST.Xlong
                     cc_default)) (tlong :: tint :: nil) tlong cc_default)) ::
 (___compcert_i64_smulh,
   Gfun(External (EF_runtime "__compcert_i64_smulh"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tlong :: tlong :: nil) tlong cc_default)) ::
 (___compcert_i64_umulh,
   Gfun(External (EF_runtime "__compcert_i64_umulh"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tulong :: tulong :: nil) tulong
     cc_default)) ::
 (___builtin_bswap64,
   Gfun(External (EF_builtin "__builtin_bswap64"
                   (mksignature (AST.Xlong :: nil) AST.Xlong cc_default))
     (tulong :: nil) tulong cc_default)) ::
 (___builtin_bswap,
   Gfun(External (EF_builtin "__builtin_bswap"
                   (mksignature (AST.Xint :: nil) AST.Xint cc_default))
     (tuint :: nil) tuint cc_default)) ::
 (___builtin_bswap32,
   Gfun(External (EF_builtin "__builtin_bswap32"
                   (mksignature (AST.Xint :: nil) AST.Xint cc_default))
     (tuint :: nil) tuint cc_default)) ::
 (___builtin_bswap16,
   Gfun(External (EF_builtin "__builtin_bswap16"
                   (mksignature (AST.Xint16unsigned :: nil)
                     AST.Xint16unsigned cc_default)) (tushort :: nil) tushort
     cc_default)) ::
 (___builtin_clz,
   Gfun(External (EF_builtin "__builtin_clz"
                   (mksignature (AST.Xint :: nil) AST.Xint cc_default))
     (tuint :: nil) tint cc_default)) ::
 (___builtin_clzl,
   Gfun(External (EF_builtin "__builtin_clzl"
                   (mksignature (AST.Xlong :: nil) AST.Xint cc_default))
     (tulong :: nil) tint cc_default)) ::
 (___builtin_clzll,
   Gfun(External (EF_builtin "__builtin_clzll"
                   (mksignature (AST.Xlong :: nil) AST.Xint cc_default))
     (tulong :: nil) tint cc_default)) ::
 (___builtin_ctz,
   Gfun(External (EF_builtin "__builtin_ctz"
                   (mksignature (AST.Xint :: nil) AST.Xint cc_default))
     (tuint :: nil) tint cc_default)) ::
 (___builtin_ctzl,
   Gfun(External (EF_builtin "__builtin_ctzl"
                   (mksignature (AST.Xlong :: nil) AST.Xint cc_default))
     (tulong :: nil) tint cc_default)) ::
 (___builtin_ctzll,
   Gfun(External (EF_builtin "__builtin_ctzll"
                   (mksignature (AST.Xlong :: nil) AST.Xint cc_default))
     (tulong :: nil) tint cc_default)) ::
 (___builtin_fabs,
   Gfun(External (EF_builtin "__builtin_fabs"
                   (mksignature (AST.Xfloat :: nil) AST.Xfloat cc_default))
     (tdouble :: nil) tdouble cc_default)) ::
 (___builtin_fabsf,
   Gfun(External (EF_builtin "__builtin_fabsf"
                   (mksignature (AST.Xsingle :: nil) AST.Xsingle cc_default))
     (tfloat :: nil) tfloat cc_default)) ::
 (___builtin_fsqrt,
   Gfun(External (EF_builtin "__builtin_fsqrt"
                   (mksignature (AST.Xfloat :: nil) AST.Xfloat cc_default))
     (tdouble :: nil) tdouble cc_default)) ::
 (___builtin_sqrt,
   Gfun(External (EF_builtin "__builtin_sqrt"
                   (mksignature (AST.Xfloat :: nil) AST.Xfloat cc_default))
     (tdouble :: nil) tdouble cc_default)) ::
 (___builtin_memcpy_aligned,
   Gfun(External (EF_builtin "__builtin_memcpy_aligned"
                   (mksignature
                     (AST.Xptr :: AST.Xptr :: AST.Xlong :: AST.Xlong :: nil)
                     AST.Xvoid cc_default))
     ((tptr tvoid) :: (tptr tvoid) :: tulong :: tulong :: nil) tvoid
     cc_default)) ::
 (___builtin_sel,
   Gfun(External (EF_builtin "__builtin_sel"
                   (mksignature (AST.Xbool :: nil) AST.Xvoid
                     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|}))
     (tbool :: nil) tvoid
     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|})) ::
 (___builtin_annot,
   Gfun(External (EF_builtin "__builtin_annot"
                   (mksignature (AST.Xptr :: nil) AST.Xvoid
                     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|}))
     ((tptr tschar) :: nil) tvoid
     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|})) ::
 (___builtin_annot_intval,
   Gfun(External (EF_builtin "__builtin_annot_intval"
                   (mksignature (AST.Xptr :: AST.Xint :: nil) AST.Xint
                     cc_default)) ((tptr tschar) :: tint :: nil) tint
     cc_default)) ::
 (___builtin_membar,
   Gfun(External (EF_builtin "__builtin_membar"
                   (mksignature nil AST.Xvoid cc_default)) nil tvoid
     cc_default)) ::
 (___builtin_va_start,
   Gfun(External (EF_builtin "__builtin_va_start"
                   (mksignature (AST.Xptr :: nil) AST.Xvoid cc_default))
     ((tptr tvoid) :: nil) tvoid cc_default)) ::
 (___builtin_va_arg,
   Gfun(External (EF_builtin "__builtin_va_arg"
                   (mksignature (AST.Xptr :: AST.Xint :: nil) AST.Xvoid
                     cc_default)) ((tptr tvoid) :: tuint :: nil) tvoid
     cc_default)) ::
 (___builtin_va_copy,
   Gfun(External (EF_builtin "__builtin_va_copy"
                   (mksignature (AST.Xptr :: AST.Xptr :: nil) AST.Xvoid
                     cc_default)) ((tptr tvoid) :: (tptr tvoid) :: nil) tvoid
     cc_default)) ::
 (___builtin_va_end,
   Gfun(External (EF_builtin "__builtin_va_end"
                   (mksignature (AST.Xptr :: nil) AST.Xvoid cc_default))
     ((tptr tvoid) :: nil) tvoid cc_default)) ::
 (___builtin_unreachable,
   Gfun(External (EF_builtin "__builtin_unreachable"
                   (mksignature nil AST.Xvoid cc_default)) nil tvoid
     cc_default)) ::
 (___builtin_expect,
   Gfun(External (EF_builtin "__builtin_expect"
                   (mksignature (AST.Xlong :: AST.Xlong :: nil) AST.Xlong
                     cc_default)) (tlong :: tlong :: nil) tlong cc_default)) ::
 (___builtin_fmax,
   Gfun(External (EF_builtin "__builtin_fmax"
                   (mksignature (AST.Xfloat :: AST.Xfloat :: nil) AST.Xfloat
                     cc_default)) (tdouble :: tdouble :: nil) tdouble
     cc_default)) ::
 (___builtin_fmin,
   Gfun(External (EF_builtin "__builtin_fmin"
                   (mksignature (AST.Xfloat :: AST.Xfloat :: nil) AST.Xfloat
                     cc_default)) (tdouble :: tdouble :: nil) tdouble
     cc_default)) ::
 (___builtin_fmadd,
   Gfun(External (EF_builtin "__builtin_fmadd"
                   (mksignature
                     (AST.Xfloat :: AST.Xfloat :: AST.Xfloat :: nil)
                     AST.Xfloat cc_default))
     (tdouble :: tdouble :: tdouble :: nil) tdouble cc_default)) ::
 (___builtin_fmsub,
   Gfun(External (EF_builtin "__builtin_fmsub"
                   (mksignature
                     (AST.Xfloat :: AST.Xfloat :: AST.Xfloat :: nil)
                     AST.Xfloat cc_default))
     (tdouble :: tdouble :: tdouble :: nil) tdouble cc_default)) ::
 (___builtin_fnmadd,
   Gfun(External (EF_builtin "__builtin_fnmadd"
                   (mksignature
                     (AST.Xfloat :: AST.Xfloat :: AST.Xfloat :: nil)
                     AST.Xfloat cc_default))
     (tdouble :: tdouble :: tdouble :: nil) tdouble cc_default)) ::
 (___builtin_fnmsub,
   Gfun(External (EF_builtin "__builtin_fnmsub"
                   (mksignature
                     (AST.Xfloat :: AST.Xfloat :: AST.Xfloat :: nil)
                     AST.Xfloat cc_default))
     (tdouble :: tdouble :: tdouble :: nil) tdouble cc_default)) ::
 (___builtin_read16_reversed,
   Gfun(External (EF_builtin "__builtin_read16_reversed"
                   (mksignature (AST.Xptr :: nil) AST.Xint16unsigned
                     cc_default)) ((tptr tushort) :: nil) tushort
     cc_default)) ::
 (___builtin_read32_reversed,
   Gfun(External (EF_builtin "__builtin_read32_reversed"
                   (mksignature (AST.Xptr :: nil) AST.Xint cc_default))
     ((tptr tuint) :: nil) tuint cc_default)) ::
 (___builtin_write16_reversed,
   Gfun(External (EF_builtin "__builtin_write16_reversed"
                   (mksignature (AST.Xptr :: AST.Xint16unsigned :: nil)
                     AST.Xvoid cc_default))
     ((tptr tushort) :: tushort :: nil) tvoid cc_default)) ::
 (___builtin_write32_reversed,
   Gfun(External (EF_builtin "__builtin_write32_reversed"
                   (mksignature (AST.Xptr :: AST.Xint :: nil) AST.Xvoid
                     cc_default)) ((tptr tuint) :: tuint :: nil) tvoid
     cc_default)) ::
 (___builtin_debug,
   Gfun(External (EF_external "__builtin_debug"
                   (mksignature (AST.Xint :: nil) AST.Xvoid
                     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|}))
     (tint :: nil) tvoid
     {|cc_vararg:=(Some 1); cc_unproto:=false; cc_structret:=false|})) ::
 (_malloc, Gfun(Internal f_malloc)) :: (_free, Gfun(Internal f_free)) ::
 (_mm_generate, Gfun(Internal f_mm_generate)) ::
 (_mm_strassen, Gfun(Internal f_mm_strassen)) :: nil).

Definition public_idents : list ident :=
(_mm_strassen :: _mm_generate :: _free :: _malloc :: ___builtin_debug ::
 ___builtin_write32_reversed :: ___builtin_write16_reversed ::
 ___builtin_read32_reversed :: ___builtin_read16_reversed ::
 ___builtin_fnmsub :: ___builtin_fnmadd :: ___builtin_fmsub ::
 ___builtin_fmadd :: ___builtin_fmin :: ___builtin_fmax ::
 ___builtin_expect :: ___builtin_unreachable :: ___builtin_va_end ::
 ___builtin_va_copy :: ___builtin_va_arg :: ___builtin_va_start ::
 ___builtin_membar :: ___builtin_annot_intval :: ___builtin_annot ::
 ___builtin_sel :: ___builtin_memcpy_aligned :: ___builtin_sqrt ::
 ___builtin_fsqrt :: ___builtin_fabsf :: ___builtin_fabs ::
 ___builtin_ctzll :: ___builtin_ctzl :: ___builtin_ctz :: ___builtin_clzll ::
 ___builtin_clzl :: ___builtin_clz :: ___builtin_bswap16 ::
 ___builtin_bswap32 :: ___builtin_bswap :: ___builtin_bswap64 ::
 ___compcert_i64_umulh :: ___compcert_i64_smulh :: ___compcert_i64_sar ::
 ___compcert_i64_shr :: ___compcert_i64_shl :: ___compcert_i64_umod ::
 ___compcert_i64_smod :: ___compcert_i64_udiv :: ___compcert_i64_sdiv ::
 ___compcert_i64_utof :: ___compcert_i64_stof :: ___compcert_i64_utod ::
 ___compcert_i64_stod :: ___compcert_i64_dtou :: ___compcert_i64_dtos ::
 ___compcert_va_composite :: ___compcert_va_float64 ::
 ___compcert_va_int64 :: ___compcert_va_int32 :: nil).

Definition prog : Clight.program := 
  mkprogram composites global_definitions public_idents _main Logic.I.


