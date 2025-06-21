#!/bin/bash
set -e
ANDROID_HOME=${ANDROID_HOME:-/opt/android-sdk}
CMDLINE_URL="https://dl.google.com/android/repository/commandlinetools-linux-9123335_latest.zip"
mkdir -p "$ANDROID_HOME/cmdline-tools"
if [ ! -d "$ANDROID_HOME/cmdline-tools/latest" ]; then
  tmpdir=$(mktemp -d)
  curl -L "$CMDLINE_URL" -o "$tmpdir/cmdline.zip"
  unzip -q "$tmpdir/cmdline.zip" -d "$tmpdir"
  mv "$tmpdir/cmdline-tools" "$ANDROID_HOME/cmdline-tools/latest"
  rm -rf "$tmpdir"
fi
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"
yes | sdkmanager --licenses >/dev/null
yes | sdkmanager "platform-tools" "platforms;android-32" "build-tools;33.0.0"
