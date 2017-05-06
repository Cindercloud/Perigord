#!/bin/sh

VOLUME_HOME="/truffle/project"

echo "starting testrpc"
testrpc &

if [[ ! -d $VOLUME_HOME/.cindercloud ]]; then
    echo "=> an empty project folder detected in $VOLUME_HOME"
    echo "=> Installing default truffle project"
    cd $VOLUME_HOME && truffle init
    cd $VOLUME_HOME && touch .cindercloud
    echo "=> Done!"  
else
    echo "=> Using an existing volume of project"
fi

cd $VOLUME_HOME && exec truffle watch    