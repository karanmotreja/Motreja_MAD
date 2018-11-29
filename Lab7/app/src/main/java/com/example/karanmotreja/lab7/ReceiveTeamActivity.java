package com.example.karanmotreja.lab7;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;


public class ReceiveTeamActivity extends Activity {

    private String teamRival;
    private String teamRivalURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_team);

        //get intent
        Intent intent = getIntent();
        teamRival = intent.getStringExtra("teamRivalName");
        teamRivalURL = intent.getStringExtra("teamRivalURL");
        Log.i("rival received", teamRival);
        Log.i("url received", teamRivalURL);

        //update text view
        TextView messageView = findViewById(R.id.coffeeShopTextView);
        messageView.setText("Your teams biggest rival is " + teamRival);

        //get image button
        ImageButton imageButton = findViewById(R.id.imageButton);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                loadWebSite(view);
            }
        };

        //add listener to the button
        imageButton.setOnClickListener(onclick);
    }

    private void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(teamRivalURL));
        startActivity(intent);
    }
}
