package com.example.arcloud_sample_flutter

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.graffity.arcloud.ar.ARCloudFragment

class ARActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_aractivity)

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                .replace(R.id.ar_activity, ARCloudFragment())
                .commitNow()
        }
    }
}