// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from yaml-test.djinni

#import "DBExternInterface1+Private.h"
#import "DBExternInterface1.h"
#import "DBClientInterface+Private.h"
#import "DBClientReturnedRecord+Private.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

@interface DBExternInterface1 ()

- (id)initWithCpp:(const std::shared_ptr<::ExternInterface1>&)cppRef;

@end

@implementation DBExternInterface1 {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ExternInterface1>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ExternInterface1>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull DBClientReturnedRecord *)foo:(nullable id<DBClientInterface>)i {
    try {
        auto r = _cppRefHandle.get()->foo(::djinni_generated::ClientInterface::toCpp(i));
        return ::djinni_generated::ClientReturnedRecord::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto ExternInterface1::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto ExternInterface1::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<DBExternInterface1>(cpp);
}

}  // namespace djinni_generated

@end
