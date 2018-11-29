package com.example.karanmotreja.lab7;

import android.content.Intent;
import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;


public class FindTeamActivity extends Activity {

    private TeamRivalry myTeamRivalry = new TeamRivalry();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_team);
        //get button
        Button button = findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findCoffee(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);
    }


    private void findCoffee(View view) {
        //get spinner
        Spinner crowdSpinner = findViewById(R.id.spinner);
        //get spinner item array position
        Integer crowd = crowdSpinner.getSelectedItemPosition();

        myTeamRivalry.setRivalry(crowd);

        String suggestedRivalry = myTeamRivalry.getTeamRival();

        String suggestedRivalryURL = myTeamRivalry.getTeamRivalURL();
        Log.i("rival", suggestedRivalry);
        Log.i("url", suggestedRivalryURL);

        Intent intent = new Intent(this, ReceiveTeamActivity.class);

        intent.putExtra("teamRivalName", suggestedRivalry);
        intent.putExtra("teamRivalURL", suggestedRivalryURL);

        //start intent
        startActivity(intent);

    }
}
