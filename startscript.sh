#!/bin/sh

sed "s/var GETH_HOSTNAME\t= \"localhost\";/var GETH_HOSTNAME\t= \"$GETH_HOSTNAME\";/g" /explorer/app/app.js > /explorer/app/apptmp.js
sed "s/var GETH_RPCPORT  \t= 8545;/var GETH_RPCPORT  \t= $GETH_RPCPORT;/g" /explorer/app/apptmp.js > /explorer/app/app.js
rm -f /explorer/app/apptmp.js
npm start
