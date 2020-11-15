#ifndef JsonHandler_h
#define JsonHandler_h

#include <WiFi.h>
#include "controller/PumpControler.h"

class JsonHandler
{
    public:
        JsonHandler(WiFiClient client);
        void handleRequest();
        void printHeader(int statusCode, char* statusMessage);

    private:
        void _printHeader(int statusCode, char* statusMessage);
        WiFiClient _client;
        PumpController _pumpController;
};

#endif