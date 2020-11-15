#include "PumpControler.h"
#include "Arduino.h"

PumpController::PumpController(uint8_t pin)
{
    _pin = pin;
    _isActiv = false;
    pinMode(_pin, OUTPUT);
    digitalWrite(_pin, LOW);
}

void PumpController::start()
{
    if (_isActiv) {
        return;
    }
    _isActiv = true;
    digitalWrite(_pin, HIGH);
}

void PumpController::stop()
{
    if (!_isActiv) {
        return;
    }
    _isActiv = false;
    digitalWrite(_pin, LOW);
}

bool PumpController::isActiv()
{
    return _isActiv;
}