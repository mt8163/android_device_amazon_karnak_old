
#include <gui/BufferQueue.h>
#include <gui/SurfaceComposerClient.h>
#include <gui/ISurfaceComposer.h>
#include <utils/Errors.h>
#include <utils/String8.h>
#include <utils/StrongPointer.h>

#include <private/gui/ComposerService.h>

#include <string>


//<sp<IBinder> SurfaceComposerClient::getPhysicalDisplayToken(unsigned long long)
extern "C" void *_ZN7android21SurfaceComposerClient23getPhysicalDisplayTokenEy(unsigned long long);

//sp<IBinder> SurfaceComposerClient::getBuiltInDisplay(int32_t id); 
extern "C" void* _ZN7android21SurfaceComposerClient17getBuiltInDisplayEi(int32_t id){
  return _ZN7android21SurfaceComposerClient23getPhysicalDisplayTokenEy(static_cast<uint64_t>(id));
}

