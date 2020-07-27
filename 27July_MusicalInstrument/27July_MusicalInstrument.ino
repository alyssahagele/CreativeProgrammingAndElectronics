



//variable for pins
int redButtonPin = A1;
int yellowButtonPin = A2;


#include "pitches.h"

#include <Servo.h>
Servo myservo;

int buzzer = 11; // for the piezzo buzzer

//notes in melody
int happyBirthdayMelody[] = {
  NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, NOTE_F4, NOTE_E4, NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, NOTE_G4, NOTE_F4, NOTE_C4, NOTE_C4, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_E4, NOTE_D4, NOTE_AS4, NOTE_AS4, NOTE_A4, NOTE_F4, NOTE_G4, NOTE_F4
};

//note durations
int noteDurations[] = {
  8, 8, 4, 4, 4, 2, 8, 8, 4, 4, 4, 2, 8, 8, 4, 4, 4, 4, 4, 8, 8, 4, 4, 4, 2,
};



void setup() {

  pinMode (buzzer, OUTPUT);
  //pinMode (redButtonPin, INPUT); //red button pin
  pinMode (yellowButtonPin, INPUT); //yellow button pin
  //myservo.attach (9);

  
  }

  void loop() {

int buttonState = digitalRead( yellowButtonPin);

if(buttonState == 1) {

// iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 25; thisNote++) {

   
    int noteDuration = 1000 / noteDurations[thisNote];
    tone(buzzer, happyBirthdayMelody[thisNote], noteDuration);

   
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(buzzer);
    
   // if (digitalRead(yellowButtonPin)) {
     // tone(buzzer, happyBirthdayMelody[1]);
    }
}
}

  
