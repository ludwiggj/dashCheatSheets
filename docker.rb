# Docker cheat sheet: see https://github.com/Kapeli/cheatsheets for info
cheatsheet do
  title 'Docker'               # Will be displayed by Dash in the docset list
  docset_file_name 'Docker'    # Used for the filename of the docset
  keyword 'dockercs'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My *awesome* docker cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'docker-machine'  # Must be unique and is used as title of the category

    entry do
      command 'create'
      name 'Create docker machine'
      notes "
        ```
        # To create a machine with BT proxies, for use on greenside:

        docker-machine create --driver virtualbox --engine-env HTTP_PROXY=http://proxy.intra.bt.com:8080 --engine-env HTTPS_PROXY=http://proxy.intra.bt.com:8080 <MACHINE_NAME>
        ```"
    end
    
    entry do
      command 'env'
      name 'Set up environment for docker machine'
      notes "
        ```
        # To set up environment for docker machine, with no proxy:

        eval $(docker-machine env --no-proxy <MACHINE_NAME>)
        ```"
    end
    
    entry do
      command 'ls'
      name 'List docker machines'
    end
    
    entry do
      command 'ssh'
      name 'ssh into docker machine'
      notes "
        ```
        docker-machine ssh <MACHINE_NAME>
        ```"
    end
    
    entry do
      command 'start'
      name 'Start docker machine'
      notes "
        ```
        docker-machine start <MACHINE_NAME>
        ```"
    end
    
    entry do
      command 'stop'
      name 'Stop docker machine'
      notes "
        ```
        docker-machine stop <MACHINE_NAME>
        ```"
    end
    
  end
  
  category do
    id 'docker'
    
    entry do
      command 'attach'
      name 'Attach to image running in background'
      notes "
        ```
        docker attach <CONTAINER_ID>
        ```
        "
    end

    entry do
      command 'build'
      name 'Build image'
      notes "
        ```
        # Build image from Docker file in current directory
      
        docker build .
        ```
      "
    end
    
    entry do
      command 'exec'
      name 'Run command in running container'
      notes "
        ```
        # Run interactive terminal in running container
      
        docker exec -it <CONTAINER_ID> /bin/bash
        ```
      "
    end

    entry do
      command 'images'
      name 'List docker images'
    end
 
    entry do
      command 'inspect'
      name 'Return low-level information on a container or image'
      notes "
        ```
        docker inspect CONTAINER|IMAGE
        ```
      "
    end

    entry do
      command 'network'
      name 'View / inspect networks'
      notes "
        ```
        # View available networks
        docker network ls

        # View containers running on network
        docker network inspect <NETWORK NAME>

        # Create network
        docker network create --driver bridge <NETWORK_NAME>
        ```
        "
    end

    entry do
      command 'ps'
      name 'List containers'
      notes "
        ```
        # Show all containers (default shows just running)
        docker ps -a

        # Show the latest created container, include non-running
        docker ps -l
        ```
      "
    end

    entry do
      command 'rm'
      name 'Remove one or more containers'
      notes "
        ```
        docker rm [OPTIONS] <CONTAINER_ID>

        # Remove all containers
        docker rm --force `docker ps -qa`
        ```

        Selected options:

          -f, --force=false      Force the removal of a running container (uses SIGKILL)
          -v, --volumes=false    Remove the volumes associated with the container

      "
    end

    entry do
      command 'rmi'
      name 'Remove one or more images'
      notes "
        ```
        docker rmi [OPTIONS] <IMAGE_NAME>

        # Remove all containers
        docker rm --force `docker ps -qa`
        ```

        Selected options:

          -f, --force=false    Force removal of the image

      "
    end

    entry do
      command 'run'
      name 'Run container'
      notes "
        ```
        # To launch a container from the image in interactive mode, detached mode:
        docker run -itd <IMAGE_NAME> /bin/bash

        # To expose container's port 80 as host port 8000:
        docker run -p 8000:80 <IMAGE_NAME>
        
        # Now you can ssh into docker host, and get from port 8000:
        curl localhost:8000

        # To mount docker host directory <HOST_DIR_NAME> into container at <DIR_NAME> (directory lives independently of container lifecycle):
        docker run -itd -v <HOST_DIR_NAME>:<DIR_NAME> --name=<CONTAINER_NAME> <IMAGE_NAME> /bin/bash

        Selected options for docker run:

          -d, --detach=false              Run container in background and print container ID
          -e, --env=[]                    Set environment variables
          --entrypoint=                   Overwrite the default ENTRYPOINT of the image
          --env-file=[]                   Read in a file of environment variables
          --expose=[]                     Expose a port or a range of ports; other docker containers on same network can see port, but NOT docker host
          -i, --interactive=false         Keep STDIN open even if not attached
          --name=<CONTAINER_NAME>         Assign a name to the container
          --net=<NETWORK_NAME>            Set the Network for the container
          -p, --publish=[]                Publish a container's port(s) to the host
          -t, --tty=false                 Allocate a pseudo-TTY
          -v, --volume=[]                 Bind mount a volume
          --volumes-from=[]               Mount volumes from the specified container(s)

        ```

        Volumes...

        ```
        # To add data volume to a container (directory is automatically created on docker host):
        docker run -itd -v <DIR_NAME> --name=<CONTAINER_NAME> <IMAGE_NAME> /bin/bash

        # To mount the same directory in another container
        docker run -itd --volumes-from=<CONTAINER_NAME> --name=<ANOTHER_CONTAINER_NAME> <IMAGE_NAME> /bin/bash
        ```
      "
    end

    entry do
      command 'stop'
      name 'Stop container'
      notes "
        ```
        docker stop <CONTAINER_ID>
        ```
      "
    end

  end
  notes 'Some notes at the end of the cheat sheet'
end
