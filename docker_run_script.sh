#!/bin/bash
docker run -it -d --name lunarvim-container -v $HOME/<PATH_TO_EXPORT_INTO_CONTAINER>:/root/42 hebaja/lunarvim-container
docker start lunarvim-container
docker exec -i lunarvim-container sh -c 'cat > /root/.local/share/lunarvim/lvim/lua/lvim/core/cmp.lua' < ~/Documents/cmp.lua
docker attach lunarvim-container
