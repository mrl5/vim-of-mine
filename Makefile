init: get-plugin-manager get-colors get-pluggins get-coc-plugin transfer clean

get-plugin-manager:
	@echo getting .vim/autoload ...
	./.vim/get.sh ./.vim/autoload

get-colors:
	@echo getting .vim/colors ...
	./.vim/get.sh ./.vim/colors

get-pluggins:
	@echo getting .vim/plugged ...
	./.vim/get.sh ./.vim/plugged

get-coc-plugin:
	@echo getting .vim/plugged/neoclide/coc.nvim ...
	./.vim/plugged/coc.sh

transfer:
	mv -v ~/.vimrc ~/.vimrc.old || echo 'no existing .vimrc found'
	mv -v ~/.vim ~/.vim.old || echo 'no existing .vim found'
	mv -v .vimrc ~/
	mv -v .vim ~/

clean:
	git checkout -- .
