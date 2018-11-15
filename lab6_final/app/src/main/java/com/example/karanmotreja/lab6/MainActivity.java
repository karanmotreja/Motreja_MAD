package com.example.karanmotreja.lab6;

import android.content.Context;
import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findTeam(View view)
    {
        ToggleButton toggle = findViewById(R.id.toggleButton);
        boolean location = toggle.isChecked();


        Spinner sports = findViewById(R.id.spinner);
        String sportType = String.valueOf(sports.getSelectedItem());

        RadioGroup side = findViewById(R.id.radioGroup);
        int side_id = side.getCheckedRadioButtonId();

        ImageView nfl = findViewById(R.id.imageView);
        ImageView mlb = findViewById(R.id.imageView);
        ImageView nba = findViewById(R.id.imageView);

        nfl.setImageResource(R.drawable.nfl);


        String perfectTeam;

        //check radio buttons
        if (side_id == -1) {
            //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select a region!";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else {
            if (location) { //California
                if (side_id == R.id.radioButton1) { //North
                    switch (sportType) {
                        case "NFL":
                            perfectTeam = "San Francisco 49ers";
                            nfl.setImageResource(R.drawable.nfl);
                            break;
                        case "NBA":
                            perfectTeam = "Golden State Warriors";
                            nba.setImageResource(R.drawable.nba);
                            break;
                        case "MLB":
                            perfectTeam = "San Francisco Giants";
                            mlb.setImageResource(R.drawable.mlb);
                            break;
                        default:
                            perfectTeam = "San Francisco 49ers";
                            nfl.setImageResource(R.drawable.nfl);
                    }
                } else { //South
                    switch (sportType) {
                        case "NFL":
                            perfectTeam = "LA Rams";
                            nfl.setImageResource(R.drawable.nfl);
                            break;
                        case "NBA":
                            perfectTeam = "LA Lakers";
                            nba.setImageResource(R.drawable.nba);
                            break;
                        case "MLB":
                            perfectTeam = "LA Dodgers";
                            mlb.setImageResource(R.drawable.mlb);
                            break;
                        default:
                            perfectTeam = "LA Rams";
                            nfl.setImageResource(R.drawable.nfl);
                    }
                }
            } else { //Florida
                if (side_id == R.id.radioButton2) { //South
                    switch (sportType) {
                        case "NFL":
                            perfectTeam = "Miami Dolphins";
                            nfl.setImageResource(R.drawable.nfl);
                            break;
                        case "NBA":
                            perfectTeam = "Miami Heat";
                            nba.setImageResource(R.drawable.nba);
                            break;
                        case "MLB":
                            perfectTeam = "Miami Marlins";
                            mlb.setImageResource(R.drawable.mlb);
                            break;
                        default:
                            perfectTeam = "Miami Dolphins";
                            nfl.setImageResource(R.drawable.nfl);
                    }
                } else {
                    switch (sportType) {
                        case "NFL":
                            perfectTeam = "Jacksonville Jaguars";
                            nfl.setImageResource(R.drawable.nfl);
                            break;
                        case "NBA":
                            perfectTeam = "Orlando Magic";
                            nba.setImageResource(R.drawable.nba);
                            break;
                        case "MLB":
                            perfectTeam = "Tampa Bay Rays";
                            mlb.setImageResource(R.drawable.mlb);
                            break;
                        default:
                            perfectTeam = "Jacksonville Jaguars";
                            nfl.setImageResource(R.drawable.nfl);
                    }
                }
            }

            //text view
            TextView sportSelection = findViewById(R.id.sportTextView);
            sportSelection.setText("You should root for the " + perfectTeam + "!");

        }

    }
}
