package com.example.karanmotreja.motrejafinal;

import android.content.Context;
import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
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

        ImageView small = findViewById(R.id.imageView);
        ImageView medium = findViewById(R.id.imageView);
        ImageView large = findViewById(R.id.imageView);
        ImageView def = findViewById(R.id.imageView);

        small.setImageResource(R.drawable.pizza_veggie);


        String perfectPizza;
        String pizzaShop;
        String pizzaShopURL;

        //check radio buttons
        if (side_id == -1) {
            //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select the crust type!";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();

        } else {
            if (sauce) { //White
                if (side_id == R.id.radioButton1) { //Thin
                    pizzaShop = "Pizzeria Locale";
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thin crust pizza with white sauce";
                            small.setImageResource(R.drawable.pizza_veggie);
                            break;
                        case "Medium":
                            perfectPizza = "medium thin crust pizza with white sauce";
                            medium.setImageResource(R.drawable.pizza_meat);
                            break;
                        case "Large":
                            perfectPizza = "large thin crust pizza with white sauce";
                            large.setImageResource(R.drawable.pizza_supreme);
                            break;
                        default:
                            perfectPizza = "thin crust pizza with white sauce";
                            def.setImageResource(R.drawable.pizza_cheese);
                    }
                } else { //Thick
                    pizzaShop = "Old Chicago";
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thick crust pizza with white sauce";
                            small.setImageResource(R.drawable.pizza_veggie);
                            break;
                        case "Medium":
                            perfectPizza = "medium thick crust pizza with white sauce";
                            medium.setImageResource(R.drawable.pizza_meat);
                            break;
                        case "Large":
                            perfectPizza = "large thick crust pizza with white sauce";
                            large.setImageResource(R.drawable.pizza_supreme);
                            break;
                        default:
                            perfectPizza = "thick crust pizza with white sauce";
                            def.setImageResource(R.drawable.pizza_cheese);
                    }
                }
            } else { //Red
                if (side_id == R.id.radioButton2) { //Thick
                    pizzaShop = "Old Chicago";
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thick crust pizza with red sauce";
                            small.setImageResource(R.drawable.pizza_veggie);
                            break;
                        case "Medium":
                            perfectPizza = "medium thick crust pizza with red sauce";
                            medium.setImageResource(R.drawable.pizza_meat);
                            break;
                        case "Large":
                            perfectPizza = "large thick crust pizza with red sauce";
                            large.setImageResource(R.drawable.pizza_supreme);
                            break;
                        default:
                            perfectPizza = "thick crust pizza with red sauce";
                            def.setImageResource(R.drawable.pizza_cheese);
                    }
                } else {
                    pizzaShop = "Pizzeria Locale";
                    switch (pizzaSize) {
                        case "Small":
                            perfectPizza = "small thin crust pizza with red sauce";
                            small.setImageResource(R.drawable.pizza_veggie);
                            break;
                        case "Medium":
                            perfectPizza = "medium thin crust pizza with red sauce";
                            medium.setImageResource(R.drawable.pizza_meat);
                            break;
                        case "Large":
                            perfectPizza = "large thin crust pizza with red sauce";
                            large.setImageResource(R.drawable.pizza_supreme);
                            break;
                        default:
                            perfectPizza = "thin crust pizza with red sauce";
                            def.setImageResource(R.drawable.pizza_cheese);
                    }
                }
            }

            //edit text
            EditText editText = (EditText) findViewById(R.id.editText);
            String pizzaName = editText.getText().toString();


            //text view
            TextView pizzaSelection = findViewById(R.id.pizzaTextView);
            pizzaSelection.setText("The " + pizzaName + " is a " + perfectPizza + "." + " You should check out " + pizzaShop + ".");

        }

    }
}
