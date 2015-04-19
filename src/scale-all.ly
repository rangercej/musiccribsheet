\version "2.18.2"
\paper {
	indent = 0\mm
	line-width = 110\mm
	oddHeaderMarkup = ""
	evenHeaderMarkup = ""
	oddFooterMarkup = ""
	evenFooterMarkup = ""
}
\header {
	tagline = ""
}
\layout {
	\context {
		\PianoStaff
		\consists #Span_stem_engraver
	}
}

{
	\new PianoStaff <<
		\new Staff {
			\time 32/1
			\clef treble
			\override Score.KeySignature.stencil = ##f
			\override Score.TimeSignature.stencil = ##f
			r\breve r1. c'4 d'4 e'4 f'4 g'4 a'4 b'4 c''4 d''4 e''4 f''4 g''4 a''4 b''4 c'''4
		}
		\new Staff {
			\time 32/1
			\clef bass
			\override Score.KeySignature.stencil = ##f
			\override Score.TimeSignature.stencil = ##f
			c,4 d,4 e,4 f,4 g,4 a,4 b,4 c4 d4 e4 f4 g4 a4 b4
			\crossStaff { c'4 }
			r\breve r1.
		}
		\addlyrics {
			C D E F G A B C D E F G A B C D E F G A B C D E F G A B C
		}
	>>
}
