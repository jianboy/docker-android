

aapt package -f \
-M AndroidManifest.xml \ 
-I "$ANDROID_HOME/platforms/android-N/android.jar" \
-S res/ \
-J gen/ \
-m \

