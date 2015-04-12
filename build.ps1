function buildsource($infile)
{
	"--------------------------------------"
	$outfile = "$(pwd)\out\$($infile.basename)"
	$tmp = "$($outfile).tmp"
	$tgt = "$($outfile).png"
	$lilypondout = "$($tmp).png"

	# Has the source file changed? Don't build if it hasn't.
	$build = $true
	if (test-path $tgt) {
		$outobj = get-item $tgt
		if ($outobj.lastwritetime -gt $infile.lastwritetime) {
			$build = $false
		}
	}

	if ($build) {
		"Building $lilypondout from $infile"

		&"c:\Program Files (x86)\LilyPond\usr\bin\lilypond.exe" -dbackend=eps -dno-aux-files -o $tmp -dresolution=600 --png $_
		if (test-path $lilypondout) {
			"Cropping $lilypondout to $tgt"
			&"C:\Program Files\ImageMagick-6.9.1-Q16\convert.exe" $lilypondout -trim $tgt
			if (test-path $tgt) {
				"Cleaning up $lilypondout"
				remove-item $lilypondout
			} else {
				write-warning "Failed to trim $lilypondout to $png"
			}
		} else {
			write-warning "Could not generate $lilypondout"
		}
	} else {
		"Source file $infile unchanged; skipping"
	}
}

gci src\*.ly | %{ buildsource($_) }
gci auto\*.ly | %{ buildsource($_) }
