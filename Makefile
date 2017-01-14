TEX_CC = latexmk -pdf -output-directory=aux -synctex=1 -file-line-error
IMG_CC = convert -density 300 -depth 8 -quality 85

combo_proofs.png: combo_proofs.pdf
	$(IMG_CC) combo_proofs.pdf combo_proofs.png

combo_proofs.pdf: combo_proofs.tex
	$(TEX_CC) combo_proofs.tex
	mv aux/combo_proofs.pdf .

.PHONY: clean
clean:
	rm -rf aux/ combo_proofs.pdf combo_proofs.png
