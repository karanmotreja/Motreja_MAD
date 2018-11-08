package com.example.karanmotreja.lab5;

import android.app.Activity;
import android.os.Bundle;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.EditText;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void chooseTeam(View view)
    {
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();
        TextView nflText = findViewById(R.id.message);
        nflText.setText("Your favorite team is the " + nameValue + "!");
        ImageView nfl = findViewById(R.id.imageView);
        nfl.setImageResource(R.drawable.nfl);
    }
}
