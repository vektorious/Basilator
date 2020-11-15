#ifndef ConfigStore_h
#define ConfigStore_h

class ConfigStore
{
    public:
        int getLightIntensity();
        void setLightIntensity(int lightIntensity);
        
        void setWifiConfig(char* ssid, char* password, bool isAccessPoint);
        bool isAccessPoint();
        char* getSSID();
        char* getWifiPassword();

    private:
        int _lightIntensity;
        char* _ssid;
        char* _password;
        bool _isAccessPoint;
};

#endif