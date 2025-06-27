#!/bin/bash
set -e
# Build the object detection Android sample without Android Studio.
# 1. Install Android SDK if needed.
# 2. Run Gradle to assemble the debug APK.
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SAMPLE_DIR="$ROOT_DIR/examples/object_detection/android"
ANDROID_HOME=${ANDROID_HOME:-/opt/android-sdk}
"$ROOT_DIR/tools/setup-android.sh"
export ANDROID_HOME
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"
cd "$SAMPLE_DIR"
echo "sdk.dir=$ANDROID_HOME" > local.properties
./gradlew assembleDebug
