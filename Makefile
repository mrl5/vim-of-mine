init: get-plugin-manager get-colors get-pluggins get-coc-plugin get-ctags transfer clean

get-plugin-manager:
	@echo getting .vim/autoload ...
	./get.sh .vim/autoload

get-colors:
	@echo getting .vim/colors ...
	./get.sh .vim/colors

get-pluggins:
	@echo getting .vim/plugged ...
	./get.sh .vim/plugged

get-coc-plugin:
	@echo getting .vim/plugged/neoclide/coc.nvim ...
	.vim/plugged/coc.sh

get-ctags:
	@echo getting ctags ...
	./get.sh .local/lib/ctags

transfer:
	mv -v ~/.vimrc ~/.vimrc.old || echo 'no existing .vimrc found'
	mv -v ~/.vim ~/.vim.old || echo 'no existing .vim found'
	mv -v .vimrc ~/
	mv -v .vim ~/
	mv -v ~/.local/lib/ctags/ ~/.local/lib/ctags.old || echo 'no existing .local/lib/ctags found'
	mv -v ~/.ctags ~/.ctags.old || echo 'no existing .ctags found'
	mkdir -p ~/.local/lib/ctags
	mv -v .local/lib/ctags ~/.local/lib/
	mv -v .ctags ~/

clean:
	git checkout -- .
