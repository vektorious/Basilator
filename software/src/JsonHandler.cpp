#include "Arduino.h"
#include <WiFi.h>
#include "JsonHandler.h"
#include "controller/PumpControler.h"

JsonHandler::JsonHandler(WiFiClient client) {
    _client = client;
    _pumpController = PumpController(1); // TODO: Change pin
}

void JsonHandler::handleRequest() {
    String currentLine = "";                // make a String to hold incoming data from the client
    String header = "";
    while (_client.connected()) {            // loop while the client's connected
      if (_client.available()) {             // if there's bytes to read from the client,
        char c = _client.read();             // read a byte, then
        Serial.write(c);                    // print it out the serial monitor
        header += c;
        if (c == '\n') {                    // if the byte is a newline character
          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            _printHeader(200, "OK");
            
            // turns the GPIOs on and off
            if (header.indexOf("POST /pump/on") >= 0) {
              _pumpController.start();
            } else if (header.indexOf("POST /pump/off") >= 0) {
              _pumpController.stop();
            }

            // Display the HTML web page
            _client.println("<!DOCTYPE html><html>");
            _client.println("<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            _client.println("<link rel=\"icon\" href=\"data:,\">");
            // CSS to style the on/off buttons 
            // Feel free to change the background-color and font-size attributes to fit your preferences
            _client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
            _client.println(".button { background-color: #4CAF50; border: none; color: white; padding: 16px 40px;");
            _client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
            _client.println(".button2 {background-color: #555555;}</style></head>");
            
            // Web Page Heading
            _client.println("<body><h1>ESP32 Web Server</h1></body></html>");
            
            // The HTTP response ends with another blank line
            _client.println();
            // Break out of the while loop
            break;
          } else { // if you got a newline, then clear currentLine
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }
      }
    }
    // Clear the header variable
    header = "";
    // Close the connection
    _client.stop();
    Serial.println("Client disconnected.");
    Serial.println("");
}


void JsonHandler::printHeader(int statusCode, char* statusMessage) {
    _printHeader(statusCode, statusMessage);
}

void JsonHandler::_printHeader(int statusCode, char* statusMessage) {
    _client.print("HTTP/1.1 ");
    _client.print(statusCode);
    _client.print(" ");
    _client.print(statusMessage);
    _client.println("Content-type:text/html");
    _client.println("Connection: close");
    _client.println();
}
