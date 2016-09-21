// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wchar_test.djinni

#include "NativeWcharTestRec.hpp"  // my header
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated {

NativeWcharTestRec::NativeWcharTestRec() = default;

NativeWcharTestRec::~NativeWcharTestRec() = default;

auto NativeWcharTestRec::fromCpp(JNIEnv* jniEnv, const CppType& c) -> ::djinni::LocalRef<JniType> {
    const auto& data = ::djinni::JniClass<NativeWcharTestRec>::get();
    auto r = ::djinni::LocalRef<JniType>{jniEnv->NewObject(data.clazz.get(), data.jconstructor,
                                                           ::djinni::get(::djinni::WString::fromCpp(jniEnv, c.s)))};
    ::djinni::jniExceptionCheck(jniEnv);
    return r;
}

auto NativeWcharTestRec::toCpp(JNIEnv* jniEnv, JniType j) -> CppType {
    ::djinni::JniLocalScope jscope(jniEnv, 2);
    assert(j != nullptr);
    const auto& data = ::djinni::JniClass<NativeWcharTestRec>::get();
    return {::djinni::WString::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_mS))};
}

}  // namespace djinni_generated
