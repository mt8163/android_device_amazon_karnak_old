//fixes 09-18 02:41:15.323  1547  1547 E vndksupport: Could not load /vendor/lib/hw/hwcomposer.mt8163.so from default namespace: dlopen failed: cannot locate symbol "_ZN7android19GraphicBufferMapper4lockEPK13native_handlejRKNS_4RectEPPv" referenced by "/vendor/lib/hw/hwcomposer.mt8163.so"....

#include <stdint.h>

namespace android {
    extern "C" void _ZN7android13GraphicBuffer4lockEjPPvPiS3_(uint32_t inUsage, void** vaddr, int32_t* outBytesPerPixel, int32_t* outBytesPerStride);

    extern "C" void _ZN7android13GraphicBuffer4lockEjPPv(uint32_t inUsage, void** vaddr) {
        _ZN7android13GraphicBuffer4lockEjPPvPiS3_(inUsage, vaddr, nullptr, nullptr);
    }
}
