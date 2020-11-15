#include "Arduino.h"
#include "ConfigStore.h"

int ConfigStore::getLightIntensity() {
    return _lightIntensity;
}

void ConfigStore::setLightIntensity(int lightIntensity) {
    _lightIntensity = lightIntensity;
}

void ConfigStore::setWifiConfig(char* ssid, char* password, bool isAccessPoint) {
    _ssid = ssid;
    _password = password;
    _isAccessPoint = isAccessPoint;
}

bool ConfigStore::isAccessPoint() {
    return _isAccessPoint;
}

char* ConfigStore::getSSID() {
    return _ssid;
}

char* ConfigStore::getWifiPassword() {
    return _password;
}
