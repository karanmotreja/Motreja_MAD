package com.example.karanmotreja.project2;

import android.app.Activity;
import android.os.Bundle;
import android.media.AudioManager;
import android.media.SoundPool;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends Activity {

    private SoundPool sp;
    private int sound1;
    private int sound2;
    private int sound3;
    private int sound4;
    private int sound5;
    private int sound6;
    private int sound7;
    private int sound8;
    private int sound9;


    private String artist;


    @Override
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        artist = savedInstanceState.getString("artist");
        if(artist != null) {
            switch (artist) {
                case "flume":
                    flumeSounds(null);
                    break;
                case "ekali":
                    ekaliSounds(null);
                    break;
                case "kaytranada":
                    kaytraSounds(null);
                    break;
            }
        }


    }

    // invoked when the activity may be temporarily destroyed, save the instance state here
    @Override
    public void onSaveInstanceState(Bundle outState)
    {
        outState.putString("artist", artist);

        super.onSaveInstanceState(outState);
    }


    public void flumeSounds(View view)
    {
        sound1 = sp.load(getApplicationContext(),R.raw.flume1,1);
        sound2 = sp.load(getApplicationContext(),R.raw.flume2,1);
        sound3 = sp.load(getApplicationContext(),R.raw.flume3,1);
        sound4 = sp.load(getApplicationContext(),R.raw.flume4,1);
        sound5 = sp.load(getApplicationContext(),R.raw.flume5,1);
        sound6 = sp.load(getApplicationContext(),R.raw.flume6,1);
        sound7 = sp.load(getApplicationContext(),R.raw.flume7,1);
        sound8 = sp.load(getApplicationContext(),R.raw.flume8,1);
        sound9 = sp.load(getApplicationContext(),R.raw.flume9,1);

        TextView textView = findViewById(R.id.currentArtist);
        textView.setText(getString(R.string.flume));
        artist = "flume";


    }


    public void ekaliSounds(View view)
    {
        sound1 = sp.load(getApplicationContext(),R.raw.ekali1,1);
        sound2 = sp.load(getApplicationContext(),R.raw.ekali2,1);
        sound3 = sp.load(getApplicationContext(),R.raw.ekali3,1);
        sound4 = sp.load(getApplicationContext(),R.raw.ekali4,1);
        sound5 = sp.load(getApplicationContext(),R.raw.ekali5,1);
        sound6 = sp.load(getApplicationContext(),R.raw.ekali6,1);
        sound7 = sp.load(getApplicationContext(),R.raw.ekali7,1);
        sound8 = sp.load(getApplicationContext(),R.raw.ekali8,1);
        sound9 = sp.load(getApplicationContext(),R.raw.ekali9,1);

        TextView textView = findViewById(R.id.currentArtist);
        textView.setText(getString(R.string.ekali));
        artist = "ekali";

    }


    public void kaytraSounds(View view)
    {
        sound1 = sp.load(getApplicationContext(),R.raw.kaytra1,1);
        sound2 = sp.load(getApplicationContext(),R.raw.kaytra,1);
        sound3 = sp.load(getApplicationContext(),R.raw.kaytra3,1);
        sound4 = sp.load(getApplicationContext(),R.raw.kaytra4,1);
        sound5 = sp.load(getApplicationContext(),R.raw.kaytra5,1);
        sound6 = sp.load(getApplicationContext(),R.raw.kaytra6,1);
        sound7 = sp.load(getApplicationContext(),R.raw.kaytra7,1);
        sound8 = sp.load(getApplicationContext(),R.raw.kaytra8,1);
        sound9 = sp.load(getApplicationContext(),R.raw.kaytra9,1);

        TextView textView = findViewById(R.id.currentArtist);
        textView.setText(getString(R.string.kaytranada));
        artist = "kaytranada";

    }




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        sp = new SoundPool(9, AudioManager.STREAM_MUSIC,0);



    }


    public void playsound1 (View view)
    {
        sp.play(sound1,1.0f,1.0f,0,0,10f);
    }

    public void playsound2 (View view)
    {
        sp.play(sound2,1.0f,1.0f,0,0,10f);

    }

    public void playsound3 (View view)
    {
        sp.play(sound3,1.0f,1.0f,0,0,10f);

    }

    public void playsound4 (View view)
    {
        sp.play(sound4,1.0f,1.0f,0,0,10f);

    }

    public void playsound5 (View view)
    {
        sp.play(sound5,1.0f,1.0f,0,0,10f);

    }

    public void playsound6 (View view)
    {
        sp.play(sound6,1.0f,1.0f,0,0,10f);

    }

    public void playsound7 (View view)
    {
        sp.play(sound7,1.0f,1.0f,0,0,10f);

    }

    public void playsound8 (View view)
    {
        sp.play(sound8,1.0f,1.0f,0,0,10f);

    }

    public void playsound9 (View view)
    {
        sp.play(sound9,1.0f,1.0f,0,0,10f);

    }



}



