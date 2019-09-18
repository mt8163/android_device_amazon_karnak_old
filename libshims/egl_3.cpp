 
#include <ui/GraphicBuffer.h>
#include <ui/GraphicBufferMapper.h>

using namespace android;

status_t GraphicBufferMapper::lock(buffer_handle_t handle, uint32_t usage, const Rect& bounds,
                                   void** vaddr, int32_t* outBytesPerPixel,
                                   int32_t* outBytesPerStride)
extern "C" void* _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPv(
	buffer_handle_t handle, uint32_t usage, const Rect& bounds, void** vaddr);

extern "C" void* _ZN7android19GraphicBufferMapper4lockEPK13native_handleiRKNS_4RectEPPv(
	buffer_handle_t handle, int32_t usage, const Rect& bounds, void** vaddr) {
	return _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPv(
		handle, static_cast<uint32_t>(usage), bounds, vaddr);
}
