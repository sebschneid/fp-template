all: main.pdf
	
main.pdf: content/* figures/* data/*
	lualatex content/main.tex
	biber main.bcf
	lualatex content/main.tex
	lualatex content/main.tex
	mkdir -p log
	mv *.log *.aux *.out *.toc *.bbl *.bcf *.run *.xml *.blg ./log

clean:
	rm -rf log 
