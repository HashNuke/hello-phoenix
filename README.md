# HelloPhoenix

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.


```
export APP_NAME=hello_phoenix
export APP_VERSION=0.0.5
export TMP_TAR_PATH=/tmp/$APP_NAME.tar.gz
export RUN_DIR=$HOME/srv/$APP_NAME

cp ~/projects/$APP_NAME/rel/$APP_NAME/releases/$APP_VERSION/$APP_NAME.tar.gz $TMP_TAR_PATH

mkdir $RUN_DIR
cd $RUN_DIR
tar -xf $TMP_TAR_PATH
bin/$APP_NAME ping
```
