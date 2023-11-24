package com.rmldemo.guardsquare


import android.os.Bundle
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterFragmentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

    }
    companion object {
        var detectionReport : Boolean = false
        @JvmStatic
        fun emulator(debug: Long){
            Log.d("TAG", "emulator detection : $debug")
            detectionReport = true
        }

        @JvmStatic
        fun root(debug: Long){
            Log.d("TAG", "root detection : $debug")
            detectionReport = true
        }
    }
}
