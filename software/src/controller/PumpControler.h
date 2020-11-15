#ifndef PumpController_h
#define PumpController_h

#include "Arduino.h"

class PumpController
{
    public:
        PumpController(uint8_t pin);
        void start();
        void stop();
        // void timed(uint8_t seconds);
        bool isActiv();

    private:
        bool _isActiv;
        uint8_t _pin;
};

#endif