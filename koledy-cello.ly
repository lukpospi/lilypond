				%Rychle, bratři
\version "2.16.2"

%cdur =

{ 
\key c \major
\time 4/4
\clef bass
\relative c,
{
c d e f 
g a b c
d e f g
a b c d
e f g a
b c b a
g f e d
c b a g
f e d c
b a g f
e d c2
}}

\paper {
  ragged-last-bottom = ##f
%  #(define page-breaking ly:page-turn-breaking)
%  blank-page-force = ##t
  first-page-number = 2
  print-page-number = ##t
  top-margin = 20\mm
  bottom-margin = 25\mm
  left-margin = 20\mm
  line-width = 170\mm
}

#(set-global-staff-size 22)

\book {

				%1. veta
  				
  
  \markup { 
    
    \override #'(font-name . "Nimbus Sans L") 
    
    {
				%\override #'(font-series . bold) 

      \override #'(font-size . 2)
      { "C dur" }
    }
  }

  \score {     
    \context Voice = jmeno {
      \set Staff.midiInstrument=""
      \set Score.skipBars = ##t

      <<
				%zde nazev umisteni not
	\cdur
      >> 

     

    }
 
  }

}
