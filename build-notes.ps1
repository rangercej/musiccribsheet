remove-item auto\*

$types = @{
	"breve" = @("\breve", "semi-breve")
	"semi-breve" = @(1, "minim")
	"minim" = @(2, "crotchet")
	"crotchet" = @(4, "quaver")
	"quaver" = @(8, "semi-quaver")
	"semi-quaver" = @(16, "demi-semi-quaver")
	"demi-semi-quaver" = @(32, "hemi-demi-semi-quaver")
	"hemi-demi-semi-quaver" = @(64, "breve")
}

$types.Keys | %{
	$fname = "auto\note-$($_).ly"
	"\version `"2.18.2`"" | out-file -encoding ascii $fname
	"\paper {" | out-file -encoding ascii -append $fname
	"	indent = 0\mm" | out-file -encoding ascii -append $fname
	"	line-width = 20\mm" | out-file -encoding ascii -append $fname
	"	oddHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	oddFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"\header {" | out-file -encoding ascii -append $fname
	"	tagline = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"{" | out-file -encoding ascii -append $fname
	"	\time 16/1" | out-file -encoding ascii -append $fname
	"	\clef treble" | out-file -encoding ascii -append $fname
	"	\override Score.KeySignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.TimeSignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.Clef.stencil = ##f" | out-file -encoding ascii -append $fname
	"	g'$($types[$_][0])" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
}

$types.Keys | %{
	$fname = "auto\tied-note-$($_).ly"
	"\version `"2.18.2`"" | out-file -encoding ascii $fname
	"\paper {" | out-file -encoding ascii -append $fname
	"	indent = 0\mm" | out-file -encoding ascii -append $fname
	"	line-width = 20\mm" | out-file -encoding ascii -append $fname
	"	oddHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	oddFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"\header {" | out-file -encoding ascii -append $fname
	"	tagline = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"{" | out-file -encoding ascii -append $fname
	"	\time 16/1" | out-file -encoding ascii -append $fname
	"	\clef treble" | out-file -encoding ascii -append $fname
	"	\override Score.KeySignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.TimeSignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.Clef.stencil = ##f" | out-file -encoding ascii -append $fname
	"	g'$($types[$_][0])~ g'$($types[$_][0])" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
}

$types.Keys | %{
	$fname = "auto\rest-$($_).ly"
	"\version `"2.18.2`"" | out-file -encoding ascii $fname
	"\paper {" | out-file -encoding ascii -append $fname
	"	indent = 0\mm" | out-file -encoding ascii -append $fname
	"	line-width = 20\mm" | out-file -encoding ascii -append $fname
	"	oddHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	oddFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"\header {" | out-file -encoding ascii -append $fname
	"	tagline = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"{" | out-file -encoding ascii -append $fname
	"	\time 16/1" | out-file -encoding ascii -append $fname
	"	\clef treble" | out-file -encoding ascii -append $fname
	"	\override Score.KeySignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.TimeSignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.Clef.stencil = ##f" | out-file -encoding ascii -append $fname
	"	r$($types[$_][0])" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
}

$types.Keys | %{
	$fname = "auto\dotted-note-$($_).ly"
	"\version `"2.18.2`"" | out-file -encoding ascii $fname
	"\paper {" | out-file -encoding ascii -append $fname
	"	indent = 0\mm" | out-file -encoding ascii -append $fname
	"	line-width = 20\mm" | out-file -encoding ascii -append $fname
	"	oddHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	oddFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"\header {" | out-file -encoding ascii -append $fname
	"	tagline = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"{" | out-file -encoding ascii -append $fname
	"	\time 16/1" | out-file -encoding ascii -append $fname
	"	\clef treble" | out-file -encoding ascii -append $fname
	"	\override Score.KeySignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.TimeSignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.Clef.stencil = ##f" | out-file -encoding ascii -append $fname
	"	g'$($types[$_][0])." | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
}

$types.Keys | %{
	$fname = "auto\tied-note-dotted-note-$($_).ly"
	"\version `"2.18.2`"" | out-file -encoding ascii $fname
	"\paper {" | out-file -encoding ascii -append $fname
	"	indent = 0\mm" | out-file -encoding ascii -append $fname
	"	line-width = 20\mm" | out-file -encoding ascii -append $fname
	"	oddHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenHeaderMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	oddFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"	evenFooterMarkup = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"\header {" | out-file -encoding ascii -append $fname
	"	tagline = `"`"" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
	"{" | out-file -encoding ascii -append $fname
	"	\time 16/1" | out-file -encoding ascii -append $fname
	"	\clef treble" | out-file -encoding ascii -append $fname
	"	\override Score.KeySignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.TimeSignature.stencil = ##f" | out-file -encoding ascii -append $fname
	"	\override Score.Clef.stencil = ##f" | out-file -encoding ascii -append $fname
	"	g'$($types[$_][0])~ g'$($types[$types[$_][1]][0])" | out-file -encoding ascii -append $fname
	"}" | out-file -encoding ascii -append $fname
}


