make:
	json_resume convert alexday_cv.json --template=template.mustache --out=tex && \
	sed "s|LaTeX|\\\\LaTeX|g" -i resume.tex && \
	latexmk -pdf resume.tex
