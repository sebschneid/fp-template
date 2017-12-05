all: main.pdf
	
main.pdf: content/* figures/* data/*
	lualatex main.tex
	biber main.bcf
	lualatex main.tex
	lualatex main.tex
	mkdir -p log
	mv *.log *.aux *.toc *.bbl *.bcf *.xml *.blg ./log

clean:
	rm -rf log 
        rm main.pdf
