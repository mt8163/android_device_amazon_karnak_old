#include <ui/GraphicBufferMapper.h>

namespace android {
extern "C" status_t
_ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPvPiS9_(
    buffer_handle_t handle, uint32_t usage, const Rect& bounds, void** vaddr,
    int32_t* outBytesPerPixel, int32_t* outBytesPerStride);

extern "C" status_t
_ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPv(
    buffer_handle_t handle, uint32_t usage, const Rect& bounds, void** vaddr) {
  return _ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPvPiS9_(
      handle, usage, bounds, vaddr, nullptr, nullptr);
}

extern "C" void _ZN7android13GraphicBuffer4lockEjPPvPiS3_(
    uint32_t inUsage, void** vaddr, int32_t* outBytesPerPixel,
    int32_t* outBytesPerStride);

extern "C" void _ZN7android13GraphicBuffer4lockEjPPv(uint32_t inUsage,
                                                     void** vaddr) {
  _ZN7android13GraphicBuffer4lockEjPPvPiS3_(inUsage, vaddr, nullptr, nullptr);
}
}  // namespace android
