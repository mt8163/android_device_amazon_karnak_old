/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _INPUT_PROPERTY_MAP_H
#define _INPUT_PROPERTY_MAP_H

#include <utils/KeyedVector.h>
#include <utils/String8.h>

namespace android {

/*
 * Shim providing the Android 9 String8-based PropertyMap ABI consumed by
 * libmtkcam_stdutils.so.  Only the symbols that blob actually imports are
 * implemented; everything else is omitted intentionally.
 */
class PropertyMap {
public:
    PropertyMap();
    ~PropertyMap();

    void clear();
    void addProperty(const String8& key, const String8& value);
    bool hasProperty(const String8& key) const;
    bool tryGetProperty(const String8& key, String8& outValue) const;
    bool tryGetProperty(const String8& key, bool& outValue) const;
    bool tryGetProperty(const String8& key, int32_t& outValue) const;
    bool tryGetProperty(const String8& key, float& outValue) const;

private:
    KeyedVector<String8, String8> mProperties;
};

} // namespace android

#endif // _INPUT_PROPERTY_MAP_H
