pro hgSlang,$
  slangTerm,$
  showMe

; DO: make it an option to print txt file to screen, or to open the PDF
; version; in other words, make txt files and TeX files...maybe
;  -- the IDL version will be simpler "quick look" information and
;     can be embedded in the TeX files using "%;" in the beginning of 
;     each line to be printed to screen

; ShowMe keyword takes in a-z or 'all' and simply is meant
; to print a list to screen of what is in the Heliogeo Jargon/Slang
; Dictionary

; ShowMe Option
if keyword_set(showme) then begin
  slangTerm='skip'
  case showMe of
    'a': definitions=['']
    'b': definitions=['']
    'c': definitions=['']
    'all': definitions=['']
    else: definitions='ShowMe is invalid. Please set ShowMe={[a-z]|all}'
  endcase
  print,definitions
endif

; Make slangTerm Lower Case
slangTerm = strlowcase(slangTerm)

; Hyphen Ambiguities
; Some people use hyphens more than others, and some people
; uses slashes, etc. For example, one might see any of the 
; following: (i) magnetosphere/ionosphere coupling, 
; (ii) magnetosphere-ionosphere coupling, 
; (iii) magnetosphere ionosphere coupling.
; To remedy this, I remove dahses (-) and slahses (/).
; NOTE: this part is ripped from strReplace (Han Wen, 1995)
slangTerm = strJoin(strSplit(slangTerm,'/-',/extract),' ')



; Acronym Ambiguities
; Sometimes an acronym search will be performed, which
; I want to account for; however, there are often acronyms
; that stand for different terms, which is usually obvious
; from context, but not to a program like. My solution for 
; this is to stop here and ask the User if they mean 
; X, Y, Z, etc. They can also select "I don't know," which 
; will print out definitions of all by setting slangTerm='skip'
; and using a recursion loop with the vector of possibilities, 
; e.g., mlt=['magnetic local time','mesosphere-lower-thermosphere']
; will loop twice to print definitions. (Must use forward_function
; for recursion...if I remember correctly.)
case slangTerm of
  'mlt': acronyms=['magnetic local time', 'mesosphere lower thermosphere']
  ELSE: acronyms=!NULL
endcase
; If acronym is multivalued, ask for clarification?
if n_elements(acronyms) ne 0 then begin
  print,''
  print,'The acronym you''ve selected has more than one meaning: '
  for i=0,n_elements(acronyms)-1 do begin
    print,i,'  ',acronyms[i]
  endfor
  temp=''
  print,''
  print,'Please select the number corresponding to your inquiry. If you are '+$
   'unsure or want to see all definitions corresponding to your acronym, '+$
   'then enter -1.'
  read,prompt='Please enter number: ',temp
  print,''
  if temp eq -1 then begin
    slangTerm='skip' 
  endif else begin
    slangTerm=acronyms[temp]
    acronyms=!NULL
  endelse
endif
; If required, Recursively go through definitions
if n_elements(acronyms) ne 0 then begin
  for i=0,n_elements(acronyms)-1 do begin
    hgSlang,acronyms[i]
  endfor
endif



; Get Definition
case slangTerm of
  'skip': temp=!NULL  ; do nothing but move on
;---------------------------------------------------------
; A A A A A A A A A A A A A A A A A A A A A A A A A A A A 
;---------------------------------------------------------
  'ae' OR 'ae index': BEGIN
     END
  'auroral oval': BEGIN
    END
  'auroral electrojet': BEGIN
    END
  'alfven wave': BEGIN
    END
  'alfven bounce period': BEGIN
    END
;---------------------------------------------------------
; B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
;---------------------------------------------------------
  'b2i': BEGIN
     END
  'b1': BEGIN
     END
  'b2e': BEGIN
     END
  'b5': BEGIN
     END

;---------------------------------------------------------
; C C C C C C C C C C C C C C C C C C C C C C C C C C C C 
;---------------------------------------------------------
  'central plasma sheet' OR 'cps': BEGIN
    END
  'curvature drift': BEGIN
    END

;---------------------------------------------------------
; D D D D D D D D D D D D D D D D D D D D D D D D D D D D 
;---------------------------------------------------------
  'dst' OR 'dst index': BEGIN
     END
  'dmsp': BEGIN
     END
;---------------------------------------------------------
; E E E E E E E E E E E E E E E E E E E E E E E E E E E E 
;---------------------------------------------------------

;---------------------------------------------------------
; F F F F F F F F F F F F F F F F F F F F F F F F F F F F 
;---------------------------------------------------------
  'field aligned current' or 'fac' or 'field aligned currents': BEGIN
    END
  'fukushima''s theorem' OR 'fukushima theorem': BEGIN
    END
;---------------------------------------------------------
; G G G G G G G G G G G G G G G G G G G G G G G G G G G G 
;---------------------------------------------------------
  'gradient curvature drift': BEGIN
    END
  'gradient drift': BEGIN
    END

;---------------------------------------------------------
; H H H H H H H H H H H H H H H H H H H H H H H H H H H H 
;---------------------------------------------------------
  'hall current': BEGIN
    END
  'height integrated conductivity' OR 'height integrated conductivities': BEGIN
    END
;---------------------------------------------------------
; I I I I I I I I I I I I I I I I I I I I I I I I I I I I 
;---------------------------------------------------------
  'inner magnetospere': BEGIN
    END
  'injection': BEGIN
    END

;---------------------------------------------------------
; J J J J J J J J J J J J J J J J J J J J J J J J J J J J 
;---------------------------------------------------------

;---------------------------------------------------------
; K K K K K K K K K K K K K K K K K K K K K K K K K K K K 
;---------------------------------------------------------
  'kp' OR 'kp index': BEGIN
     END

;---------------------------------------------------------
; L L L L L L L L L L L L L L L L L L L L L L L L L L L L 
;---------------------------------------------------------

;---------------------------------------------------------
; M M M M M M M M M M M M M M M M M M M M M M M M M M M M 
;---------------------------------------------------------
  'magnetic storm' OR 'geomagnetic storm': BEGIN
    END
  'magnetic local time': BEGIN
    END
  'magnetosphere ionosphere coupling' OR 'm i coupling' OR 'mi coupling': BEGIN
    END

;---------------------------------------------------------
; N N N N N N N N N N N N N N N N N N N N N N N N N N N N 
;---------------------------------------------------------

;---------------------------------------------------------
; O O O O O O O O O O O O O O O O O O O O O O O O O O O O 
;---------------------------------------------------------
  'ohm''s law': BEGIN
     END

;---------------------------------------------------------
; P P P P P P P P P P P P P P P P P P P P P P P P P P P P 
;---------------------------------------------------------
  'partial ring current': BEGIN
    END
  'pedersen current': BEGIN
     END
  'pedersen conductance': BEGIN
     END
  'poynting flux' OR 'poynting vector': BEGIN
    END
  'polar rain': BEGIN
     END
  'plasma pressure': BEGIN
    END


;---------------------------------------------------------
; Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q Q 
;---------------------------------------------------------


;---------------------------------------------------------
; R R R R R R R R R R R R R R R R R R R R R R R R R R R R 
;---------------------------------------------------------
  'ring current': BEGIN
    END
  'region 2 field aligned current' or 'region 2 fac' or 'r2 fac' or 'r2': BEGIN
     END
  'region 1 field aligned current' or 'region 1 fac' or 'r1 fac' or 'r1': BEGIN
     END

;---------------------------------------------------------
; S S S S S S S S S S S S S S S S S S S S S S S S S S S S 
;---------------------------------------------------------
  'sym-h' OR 'sym-h index': BEGIN
     END

;---------------------------------------------------------
; T T T T T T T T T T T T T T T T T T T T T T T T T T T T 
;---------------------------------------------------------

;---------------------------------------------------------
; U U U U U U U U U U U U U U U U U U U U U U U U U U U U 
;---------------------------------------------------------

;---------------------------------------------------------
; V V V V V V V V V V V V V V V V V V V V V V V V V V V V 
;---------------------------------------------------------

;---------------------------------------------------------
; W W W W W W W W W W W W W W W W W W W W W W W W W W W W 
;---------------------------------------------------------

;---------------------------------------------------------
; X X X X X X X X X X X X X X X X X X X X X X X X X X X X 
;---------------------------------------------------------

;---------------------------------------------------------
; Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y Y 
;---------------------------------------------------------

;---------------------------------------------------------
; Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z 
;---------------------------------------------------------

;---------------------------------------------------------
; ELSE ELSE ELSE ELSE ELSE ELSE ELSE ELSE ELSE ELSE ELSE 
;---------------------------------------------------------
  ELSE: BEGIN
    print,''
    print,'Good question! Unfortuantely, the HelioGeo Jargon/Slang '+$
      'Dictionary does not have the term in it yet! Google it.'
    print,''
  END
ENDCASE


END ; endPro
