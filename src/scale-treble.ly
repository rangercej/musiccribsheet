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
<<
	{
		\time 16/1
		\clef treble
		\override Score.KeySignature.stencil = ##f
		\override Score.TimeSignature.stencil = ##f
	
		g4 a b c' d' e' f' g' a' b' c'' d'' e'' f'' g'' a'' b'' c''' d'''
	}
	\addlyrics {
		G A B Middle-C D E F G A B C D E F G A B C D
	}
>>
