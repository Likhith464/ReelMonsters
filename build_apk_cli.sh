#!/usr/bin/env bash
# Command-line APK build script (No Android Studio required, matching the project hint!)
set -e

echo "=== Building Reel Monster APK from Command Line ==="
if command -v gradle >/dev/null 2>&1; then
    gradle assembleDebug
else
    echo "Installing Gradle wrapper..."
    ./gradlew assembleDebug
fi

echo ""
echo "SUCCESS! Your installable APK is at:"
echo "  app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "To install directly onto your plugged-in Android phone:"
echo "  adb install -r app/build/outputs/apk/debug/app-debug.apk"
