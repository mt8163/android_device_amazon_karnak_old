/*
 * Copyright (C) 2008 The Android Open Source Project
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

/*
 * Shim providing the Android 9 String8-based PropertyMap ABI.
 * libmtkcam_stdutils.so imports these symbols; the AOSP 11 libinput no longer
 * exports them.  Only the nine symbols actually referenced by the blob are
 * implemented here.
 */

#include <input/PropertyMap.h>
#include <cstdlib>

namespace android {

PropertyMap::PropertyMap() {}

PropertyMap::~PropertyMap() {}

void PropertyMap::clear() {
    mProperties.clear();
}

void PropertyMap::addProperty(const String8& key, const String8& value) {
    mProperties.replaceValueFor(key, value);
}

bool PropertyMap::hasProperty(const String8& key) const {
    return mProperties.indexOfKey(key) >= 0;
}

bool PropertyMap::tryGetProperty(const String8& key, String8& outValue) const {
    ssize_t index = mProperties.indexOfKey(key);
    if (index < 0) return false;
    outValue = mProperties.valueAt(index);
    return true;
}

bool PropertyMap::tryGetProperty(const String8& key, bool& outValue) const {
    String8 stringValue;
    if (!tryGetProperty(key, stringValue) || stringValue.isEmpty()) return false;
    if (stringValue == "1" || stringValue == "true") {
        outValue = true;
    } else if (stringValue == "0" || stringValue == "false") {
        outValue = false;
    } else {
        return false;
    }
    return true;
}

bool PropertyMap::tryGetProperty(const String8& key, int32_t& outValue) const {
    String8 stringValue;
    if (!tryGetProperty(key, stringValue) || stringValue.isEmpty()) return false;
    char* end;
    outValue = static_cast<int32_t>(strtol(stringValue.string(), &end, 10));
    return *end == '\0';
}

bool PropertyMap::tryGetProperty(const String8& key, float& outValue) const {
    String8 stringValue;
    if (!tryGetProperty(key, stringValue) || stringValue.isEmpty()) return false;
    char* end;
    outValue = strtof(stringValue.string(), &end);
    return *end == '\0';
}

} // namespace android
