const int soundSensorPin = A2; // Analog pin connected to the Big Sound Sensor Module
const int buzzerPin = 8; // Digital pin connected to the buzzer

void setup() {
  pinMode(soundSensorPin, INPUT); // Set the Sound Sensor pin as INPUT
  pinMode(buzzerPin, OUTPUT); // Set the buzzer pin as OUTPUT
  Serial.begin(9600); // Initialize serial communication for debugging (optional)
}

void loop() {
  int soundValue = analogRead(soundSensorPin); // Read the analog value from the Sound Sensor
  
  // Display the sound sensor value on the Serial Monitor
  Serial.print("Sound Level: ");
  Serial.println(soundValue);

  // Adjust the threshold value according to your environment
  int threshold = 250;

  if (soundValue > threshold) {
    // Sound detected! Add your desired action here.
    // For example, turn on the buzzer as an auditory indication of sound detection.
    digitalWrite(buzzerPin, HIGH);
  } else {
    // No sound detected, turn off the buzzer
    digitalWrite(buzzerPin, LOW);
  }

  delay(500); // Add a small delay to avoid rapid repeated detections
} 