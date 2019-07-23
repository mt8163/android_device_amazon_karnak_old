#include <gui/BufferQueue.h>

using namespace android;

//void BufferQueue::createBufferQueue(sp<IGraphicBufferProducer>* outProducer,
//        sp<IGraphicBufferConsumer>* outConsumer,
//        bool consumerIsSurfaceFlinger) 
extern "C" void _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEEb(
	sp<IGraphicBufferProducer>* outProducer,
        sp<IGraphicBufferConsumer>* outConsumer,
        bool consumerIsSurfaceFlinger); 

extern "C" void _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEERKNS1_INS_19IGraphicBufferAllocEEE(
	sp<IGraphicBufferProducer>* outProducer,
        sp<IGraphicBufferConsumer>* outConsumer,
	void *allocator) {
	//const sp<IGraphicBufferAlloc>& allocator) {
	_ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEEb(outProducer, outConsumer, false); //FIXME: check consumerIsSurfaceFlinger
}

// android::Fence::~Fence()
extern "C" void _ZN7android5FenceD1Ev() {
	// no-op, the explicit destructor was replaced with = default;
}
