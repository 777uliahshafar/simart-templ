# SIMART TEMPLATE

This template was created using article class in 10/11/2020. The purpose of this template is to create fabolous article. With the help of helpers4ht, the configuration of this template can turn the compilation to HTML. In case we need to create word file, we can easily copy text from html file or open html file with Microsoft word.

## Attention!!
Before using latex for document typesetting, ask yourself can Microsoft word accomplish your task much easier? if yes then you had better not use latex. Beside that, writing in neovim is still good for raw text. Happy writing.

## Change compiler engine

% Add this line below to the first fifth line in begginning main file. Specify the compiler engine.

`%! TeX program = pdflatex ` for pdflatex
or
`%! TeX program = lualatex` for LuaLatex(recommended)

### Create texmf directory for custom package

Install Helpers4ht

`mkdir -p $(kpsewhich -var-value TEXMFHOME)/tex/latex`

This will create directory ~/Library/texmf/tex/latex.

### Lualatex to HTML package support

This template has already been configured with helpers4ht in mycfg file. Some style of text required package which can be activated in preamble main.tex. Just clone this rep in texmf/tex/latex folder.

`git clone https://github.com/777uliahshafar/helpers4ht.git`

### Compile HTML

`make4ht -ul filename "configfilename"`

-u = compile with encoing utf-8
-l = cimpile with lualatex engine

## Datetime2 for bahasai

The default datetime2 doesn't support DTMtoday Indonesian date format. In order to achive it, create/copy custom datetime2-bahasai.ldf package in texmf from dotfiles.

## Set Main file for Subfiles packages

Sometimes, subfiles will not read the main files in the project directory which will not compile writed subfile in the main compiling. It's because the main file have not being introduced or set yet. Setting can be done by create file `main.tex.latexmain`.A

# Issues

## Can't find font

Ensure each paragraph or config have no additional unprovided font.

## Japanese typesetting
The most recent method is using `jlreq` document class.


