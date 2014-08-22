.Phony:: all view

all: pdf

ps: paper.tex
	latex paper.tex
	bibtex paper
	latex paper.tex
	latex paper.tex
	dvips -q paper.dvi -o paper.ps
	ps2pdf paper.ps DPskyline.pdf
	#dvips -h draft.pro paper.dvi -o draftpaper.ps
	make clean

pdf: paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	#dvips -h draft.pro paper.dvi -o draftpaper.ps

view:
	gv paper.ps &

pspdf:
	ps2pdf paper.ps
	acroread paper.pdf &

clean:
	-rm -rf *~ *.bak paper.ps paper.out
	-rm -rf paper.aux paper.blg paper.bbl paper.dvi paper.log
	-find . -name "*.bak" | xargs rm -rf

