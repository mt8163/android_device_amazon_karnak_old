#include <sensor/SensorManager.h>
#include <sensor/Sensor.h>
#include <sensor/SensorEventQueue.h>
#include <sensor/BitTube.h>
#include <sensor/ISensorServer.h>
#include <sensor/ISensorEventConnection.h>

extern "C" {
  void _ZN7android16SensorEventQueue4readEP12ASensorEventj() {}

  void _ZNK7android16SensorEventQueue5getFdEv() {}

  void _ZNK7android16SensorEventQueue13disableSensorEPKNS_6SensorE() {}

  void _ZNK7android16SensorEventQueue12enableSensorEPKNS_6SensorE() {}
}
