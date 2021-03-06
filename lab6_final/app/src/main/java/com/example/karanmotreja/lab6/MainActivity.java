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
import android.widget.EditText;
import android.widget.Toast;
import android.widget.ToggleButton;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findPizza(View view)
    {
        ToggleButton toggle = findViewById(R.id.toggleButton);
        boolean sauce = toggle.isChecked();


        Spinner size = findViewById(R.id.spinner);
        String pizzaSize = String.valueOf(size.getSelectedItem());

        RadioGroup side = findViewById(R.id.radioGroup);
        int side_id = side.getCheckedRadioButtonId();

//        ImageView nfl = findViewById(R.id.imageView);
//        ImageView mlb = findViewById(R.id.imageView);
//        ImageView nba = findViewById(R.id.imageView);

//        nfl.setImageResource(R.drawable.nfl);


        String perfectPizza;

        //check radio buttons
        if (side_id == -1) {
            //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select a sauce!";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();

        } else {
            if (sauce) { //White
                if (side_id == R.id.radioButton1) { //Thin
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thin crust pizza with white sauce";

                            break;
                        case "Medium":
                            perfectPizza = "medium thin crust pizza with white sauce";
                            break;
                        case "Large":
                            perfectPizza = "large thin crust pizza with white sauce";
                            break;
                        default:
                            perfectPizza = "thin crust pizza with white sauce";

                    }
                } else { //Thick
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thick crust pizza with white sauce";

                            break;
                        case "Medium":
                            perfectPizza = "medium thick crust pizza with white sauce";
                            break;
                        case "Large":
                            perfectPizza = "large thick crust pizza with white sauce";
                            break;
                        default:
                            perfectPizza = "thick crust pizza with white sauce";
                    }
                }
            } else { //Red
                if (side_id == R.id.radioButton2) { //Thick
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thick crust pizza with red sauce";
                            break;
                        case "Medium":
                            perfectPizza = "medium thick crust pizza with red sauce";
                            break;
                        case "Large":
                            perfectPizza = "large thick crust pizza with red sauce";
                            break;
                        default:
                            perfectPizza = "thick crust pizza with red sauce";
                    }
                } else {
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thin crust pizza with red sauce";

                            break;
                        case "Medium":
                            perfectPizza = "medium thin crust pizza with red sauce";
                            break;
                        case "Large":
                            perfectPizza = "large thin crust pizza with red sauce";
                            break;
                        default:
                            perfectPizza = "thin crust pizza with red sauce";
                    }
                }
            }

            //edit text
            EditText editText = (EditText) findViewById(R.id.editText);
            String pizzaName = editText.getText().toString();


            //text view
            TextView pizzaSelection = findViewById(R.id.pizzaTextView);
            pizzaSelection.setText("The " + pizzaName + " is a " + perfectPizza + ".");

        }

    }
}
