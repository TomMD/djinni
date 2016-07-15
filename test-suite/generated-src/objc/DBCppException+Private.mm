// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from exception.djinni

#import "DBCppException+Private.h"
#import "DBCppException.h"
#import "DBCppException+Private.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

@interface DBCppException ()

- (id)initWithCpp:(const std::shared_ptr<::testsuite::CppException>&)cppRef;

@end

@implementation DBCppException {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::testsuite::CppException>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::testsuite::CppException>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (int32_t)throwAnException {
    try {
        auto r = _cppRefHandle.get()->throw_an_exception();
        return ::djinni::I32::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable DBCppException *)get {
    try {
        auto r = ::testsuite::CppException::get();
        return ::djinni_generated::CppException::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto CppException::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto CppException::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<DBCppException>(cpp);
}

}  // namespace djinni_generated

@end
