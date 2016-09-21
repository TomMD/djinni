// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wchar_test.djinni

#include "NativeWcharTestHelpers.hpp"  // my header
#include "NativeWcharTestRec.hpp"
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated {

NativeWcharTestHelpers::NativeWcharTestHelpers() : ::djinni::JniInterface<::testsuite::WcharTestHelpers, NativeWcharTestHelpers>("com/dropbox/djinni/test/WcharTestHelpers$CppProxy") {}

NativeWcharTestHelpers::~NativeWcharTestHelpers() = default;


CJNIEXPORT void JNICALL Java_com_dropbox_djinni_test_WcharTestHelpers_00024CppProxy_nativeDestroy(JNIEnv* jniEnv, jobject /*this*/, jlong nativeRef)
{
    try {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        delete reinterpret_cast<::djinni::CppProxyHandle<::testsuite::WcharTestHelpers>*>(nativeRef);
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, )
}

CJNIEXPORT jobject JNICALL Java_com_dropbox_djinni_test_WcharTestHelpers_getRecord(JNIEnv* jniEnv, jobject /*this*/)
{
    try {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::testsuite::WcharTestHelpers::get_record();
        return ::djinni::release(::djinni_generated::NativeWcharTestRec::fromCpp(jniEnv, r));
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_dropbox_djinni_test_WcharTestHelpers_getString(JNIEnv* jniEnv, jobject /*this*/)
{
    try {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::testsuite::WcharTestHelpers::get_string();
        return ::djinni::release(::djinni::WString::fromCpp(jniEnv, r));
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_dropbox_djinni_test_WcharTestHelpers_checkString(JNIEnv* jniEnv, jobject /*this*/, jstring j_str)
{
    try {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::testsuite::WcharTestHelpers::check_string(::djinni::WString::toCpp(jniEnv, j_str));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_dropbox_djinni_test_WcharTestHelpers_checkRecord(JNIEnv* jniEnv, jobject /*this*/, jobject j_rec)
{
    try {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::testsuite::WcharTestHelpers::check_record(::djinni_generated::NativeWcharTestRec::toCpp(jniEnv, j_rec));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

}  // namespace djinni_generated
