/*Credits To @k4y0z */
#include <cstdint>
#include <google/protobuf/wire_format_lite.h>

using namespace google::protobuf::internal;

extern "C" uint32_t _ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(uint32_t first_byte_or_zero);
extern "C" uint32_t _ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEv() {
    return _ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(0);
}

extern "C" bool _ZN6google8protobuf8internal14WireFormatLite9ReadBytesEPNS0_2io16CodedInputStreamEPNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(google::protobuf::io::CodedInputStream* input, std::string* value);
extern "C" bool _ZN6google8protobuf8internal14WireFormatLite10ReadStringEPNS0_2io16CodedInputStreamEPNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(google::protobuf::io::CodedInputStream* input, std::string* value){
    return _ZN6google8protobuf8internal14WireFormatLite9ReadBytesEPNS0_2io16CodedInputStreamEPNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE(input, value);
}
