#!/bin/bash

# This script builds Debug APK files for both Taxi Client and Taxi Driver applications.

# Set the paths to the application directories.
CLIENT_APP_PATH="./TaxiClient"
DRIVER_APP_PATH="./TaxiDriver"

# Build Debug APK for Taxi Client.
echo "Building Debug APK for Taxi Client..."
gradle -p "$CLIENT_APP_PATH" assembleDebug

if [ $? -eq 0 ]; then
    echo "Taxi Client Debug APK built successfully."
else
    echo "Failed to build Taxi Client Debug APK."
fi

# Build Debug APK for Taxi Driver.
echo "Building Debug APK for Taxi Driver..."
gradle -p "$DRIVER_APP_PATH" assembleDebug

if [ $? -eq 0 ]; then
    echo "Taxi Driver Debug APK built successfully."
else
    echo "Failed to build Taxi Driver Debug APK."
fi
