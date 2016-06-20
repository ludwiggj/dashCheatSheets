# Chef cheat sheet: see https://github.com/Kapeli/cheatsheets for info
cheatsheet do
  title 'Chef'               # Will be displayed by Dash in the docset list
  docset_file_name 'Chef'    # Used for the filename of the docset
  keyword 'chefcs'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My *awesome* chef cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'knife'  # Must be unique and is used as title of the category

    entry do
      command 'cookbook upload'
      name 'Upload cookbook'
      notes "
        ```
        # To upload a cookbook to chef nodes:

        knife cookbook upload install_jenkins_slave_prereqs
        ```
      "
    end
    
    entry do
      command 'role from...'
      name 'Upload role'
      notes "
        ```
        # To upload a role to chef nodes:

        knife role from file <path_to_role_json_file>
        
        e.g.
        
        knife role from file roles/jenkins_build_slave.json
      ```"
    end    
  end
end
