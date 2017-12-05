all: main.pdf
	
main.pdf: content/* figures/* data/*
	lualatex main.tex
	biber main.bcf
	lualatex main.tex
	lualatex main.tex
	mkdir -p log
	mv *.log *.aux *.out *.toc *.bbl *.bcf *.run *.xml *.blg ./log

clean:
	rm -rf log 
