# MacVim cheat sheet: see https://github.com/Kapeli/cheatsheets for info
cheatsheet do
  title 'MacVim'  
  docset_file_name 'MacVim'
  keyword 'mvimc'

  introduction 'My *awesome* MacVim cheat sheet'

  category do
    id 'MacVim'

    entry do
      command 'bd'
      name 'Buffer delete'
      notes 'Closes current file, and Vim if last file'
    end

    entry do
      command 'gg'
      name 'Go to top of file'
    end
    
    entry do
      command 'gg = _SHIFT_ g'
      name 'Format file'
    end
    
    entry do
      command 'u'
      name 'Undo'
    end
    
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
      command ',,'
      name 'Toggle current window between last two files edited'
    end
  end 
end
