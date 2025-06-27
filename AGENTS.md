# MediaPipe Samples Contributor Guide

This repository contains official MediaPipe samples. To build the Android Object Detection sample without Android Studio, you can use the provided build script.

## Building Object Detection sample from the command line

1. Run the build script:

   ```bash
   tools/build-object-detection.sh
   ```

   This script installs the Android SDK (if not present) and runs Gradle to assemble the debug APK for the Object Detection sample.

2. The resulting APK will be located in `examples/object_detection/android/app/build/outputs/apk/debug/`. Artifacts are not committed to the repository.

