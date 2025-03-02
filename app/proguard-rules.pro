# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-dontobfuscate
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

-keep class kotlinx.coroutines.CoroutineExceptionHandler
-keep class kotlinx.coroutines.internal.MainDispatcherFactory

-printusage usage.txt
-printseeds seeds.txt
-printmapping mapping.txt

-keep class com.termux.gui.** { *; }

-keep class com.termux.gui.protocol.protobuf.v0.GUIProt0 { *; }

# for protocol buffers
-keep class * extends com.google.protobuf.GeneratedMessageLite { *; }
-dontwarn javax.annotation.concurrent.GuardedBy
-dontwarn com.google.errorprone.annotations.Immutable

