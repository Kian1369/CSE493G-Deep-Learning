#!/bin/bash
set -euo pipefail

CODE=(
	"cse493g1/rnn_layers.py"
	"cse493g1/transformer_layers.py"
	"cse493g1/classifiers/rnn.py"
	"cse493g1/gan_pytorch.py"
	"cse493g1/simclr/contrastive_loss.py"
	"cse493g1/simclr/data_utils.py"
	"cse493g1/simclr/utils.py"
)
NOTEBOOKS=(
	"RNN_Captioning.ipynb"
	"Transformer_Captioning.ipynb"
	"Generative_Adversarial_Networks.ipynb"
	"Self_Supervised_Learning.ipynb"
	"LSTM_Captioning.ipynb"
)
PDFS=(
	"RNN_Captioning.ipynb"
  	"Transformer_Captioning.ipynb"
	"Generative_Adversarial_Networks.ipynb"
)

FILES=( "${CODE[@]}" "${NOTEBOOKS[@]}" )
ZIP_FILENAME="a3_code_submission.zip"
PDF_FILENAME="a3_inline_submission.pdf"

for FILE in "${FILES[@]}"
do
	if [ ! -f ${FILE} ]; then
		echo -e "${C_R}Required file ${FILE} not found, Exiting.${C_E}"
		exit 0
	fi
done

echo -e "### Zipping file ###"
rm -f ${ZIP_FILENAME}
zip -q "${ZIP_FILENAME}" -r ${NOTEBOOKS[@]} $(find . -name "*.py") $(find . -name "*.pyx") -x "makepdf.py"

echo -e "### Creating PDFs ###"
python makepdf.py --notebooks "${PDFS[@]}" --pdf_filename "${PDF_FILENAME}"

echo -e "### Done! Please submit ${ZIP_FILENAME} and ${PDF_FILENAME} to Gradescope. ###"
