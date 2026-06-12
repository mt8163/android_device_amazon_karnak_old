/*
 * Copyright 2020 The Android Open Source Project
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
 * keystore.mt8163.so is patched to load libkeymaster_messages-v28, but the old
 * blob still expects to resolve the complete object destructor for
 * keymaster::GenerateKeyResponse.
 *
 * The implementation in system/keymaster deletes key_blob.key_material. Keep
 * the legacy blob on its original ownership model by exporting the old D1
 * destructor symbol as a no-op before libkeymaster_messages-v28 is loaded.
 */
extern "C" __attribute__((used, visibility("default"))) void
keymaster_generate_key_response_dtor() __asm__("_ZN9keymaster19GenerateKeyResponseD1Ev");

extern "C" void keymaster_generate_key_response_dtor() {}
