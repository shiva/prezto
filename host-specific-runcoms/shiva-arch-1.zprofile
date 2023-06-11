
echo "Configuring $HOST specific zprofile env"

add_folder_to_path()
{
  FOLDER=$1
  shift;
  if [[ -d $FOLDER ]]; then
    path=(
        $FOLDER
        $path
    )
  fi
}

export ANDROID_HOME=~/AndroidSDK
export CHROME_EXECUTABLE=`which chromium`

add_folder_to_path ~/.cargo/bin
add_folder_to_path ~/.local/bin
add_folder_to_path $HOME/snap/flutter/common/flutter/bin
add_folder_to_path $ANDROID_HOME/platform-tools
add_folder_to_path $ANDROID_HOME/tools
add_folder_to_path $ANDROID_HOME/tools/bin
add_folder_to_path $ANDROID_HOME/cmdline-tools/latest/bin

alias work='cd ~/dev/rt-planner/rt-planner-rest-server'
