// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from multiple_inheritance.djinni

#import "DBListenerCaller+Private.h"
#import "DBListenerCaller.h"
#import "DBFirstListener+Private.h"
#import "DBListenerCaller+Private.h"
#import "DBSecondListener+Private.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

@interface DBListenerCaller ()

- (id)initWithCpp:(const std::shared_ptr<::testsuite::ListenerCaller>&)cppRef;

@end

@implementation DBListenerCaller {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::testsuite::ListenerCaller>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::testsuite::ListenerCaller>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable DBListenerCaller *)init:(nullable id<DBFirstListener>)firstL
                            secondL:(nullable id<DBSecondListener>)secondL {
    try {
        auto r = ::testsuite::ListenerCaller::init(::djinni_generated::FirstListener::toCpp(firstL),
                                                   ::djinni_generated::SecondListener::toCpp(secondL));
        return ::djinni_generated::ListenerCaller::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callFirst {
    try {
        _cppRefHandle.get()->callFirst();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callSecond {
    try {
        _cppRefHandle.get()->callSecond();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto ListenerCaller::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto ListenerCaller::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<DBListenerCaller>(cpp);
}

}  // namespace djinni_generated

@end
