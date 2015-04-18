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
		\override Score.KeySignature.stencil = ##f
		\override Score.Clef.stencil = ##f
		\clef bass
		\time 6/8
	}
>>
