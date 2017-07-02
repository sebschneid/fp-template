all: main.pdf
	
main.pdf: content/* figures/* data/*
	lualatex content/main.tex
	biber main.bcf
	lualatex content/main.tex
	lualatex content/main.tex
	mkdir -p logfiles
	mv *.log *.aux *.out *.toc *.bbl *.bcf *.run *.xml *.blg ./logfiles

clean:
	rm -rf logfiles 
