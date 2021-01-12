make:
	~/.gem/ruby/2.7.0/bin/json_resume convert alexday.json --template=templates/resume.mustache --out=tex --dest-dir=resume && \
	cd resume && \
	sed "s|LaTeX|\\\\LaTeX|g" -i resume.tex && \
	latexmk -pdf resume.tex && \
	cd ../ && \
	~/.gem/ruby/2.7.0/bin/json_resume convert alexday.json --template=templates/cv.mustache --out=tex --dest-dir=cv && \
	cd cv && \
	sed "s|LaTeX|\\\\LaTeX|g" -i resume.tex && \
	latexmk -pdf resume.tex
