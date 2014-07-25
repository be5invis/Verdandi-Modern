ls ./*.sfd |%{ moei genmark.moe $_ }
ls ./build/*.sfd |%{ fontforge -script ./export.pe $_ }
ls ./build/*.ttf |%{ ttfautohint $_ ("dist/" + $_.Name); sfnt2woff ("dist/" + $_.Name)}