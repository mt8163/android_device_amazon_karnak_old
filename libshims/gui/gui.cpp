#include <gui/BufferQueue.h>
#include <gui/IGraphicBufferAlloc.h>

using namespace android;

extern "C" {
void _ZN7android11IDumpTunnel11asInterfaceERKNS_2spINS_7IBinderEEE() { return; }
}

extern "C" {
/*nougat - Q doesnt have this android::sp<android::IGraphicBufferAlloc>&
 * allocator */
void _ZN7android11BufferQueueC1ERKNS_2spINS_19IGraphicBufferAllocEEE() {}
void _ZN7android11BufferQueueC2ERKNS_2spINS_19IGraphicBufferAllocEEE() {}
}

extern "C" void
_ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEEb(
    sp<IGraphicBufferProducer>* outProducer,
    sp<IGraphicBufferConsumer>* outConsumer, bool consumerIsSurfaceFlinger);

extern "C" void
_ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEERKNS1_INS_19IGraphicBufferAllocEEE(
    sp<IGraphicBufferProducer>* outProducer,
    sp<IGraphicBufferConsumer>* outConsumer, void* allocator) {
  _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEEb(
      outProducer, outConsumer, false);
}

extern "C" void _ZN7android5FenceD1Ev() { return; }
