# Vim/Nerdtree cheat sheet: see https://github.com/Kapeli/cheatsheets for info
cheatsheet do
  title 'Vim Nerdtree'  
  docset_file_name 'VimNerdtree'
  keyword 'vimcs'

  introduction 'My *awesome* vim / nerdtree cheat sheet'

  category do
    id 'nerdtree'

    entry do
      command 'I'
      name 'Toggle hidden files'
    end

    entry do
      command 'm'
      name 'Open NERD tree menu'
      notes 'Used to add/delete files etc.'
    end
    
    entry do
      command 'R'
      name 'Refresh directory list'
    end
    
    entry do
      command 's'
      name 'Open file in split window'
    end
  end

  category do
    id 'vim'

    entry do
      command 'V'
      name 'Visual mode'
      notes 'Select block, line by line (via V or CR)'
    end

    entry do
      command ',cc'
      name 'Comment line/block'
    end
    
    entry do
      command ',cu'
      name 'Uncomment line/block'
    end
    
    entry do
      command ',m'
      name 'Toggle NERD tree window'
    end
    
    entry do
      command ',.'
      name 'Recently opened files'
    end
    
    entry do
      command 'u'
      name 'Undo'
    end
  end 
end
