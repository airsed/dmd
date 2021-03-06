/*
REQUIRED_ARGS: -HC -c -o-
PERMUTE_ARGS:
TEST_OUTPUT:
---
// Automatically generated by Digital Mars D Compiler v$n$

#pragma once

#include <stddef.h>
#include <stdint.h>

#if !defined(BEGIN_ENUM)
# define BEGIN_ENUM(name, upper, lower) enum class name {
# define ENUM_KEY(type, name, value, enumName, upper, lower, abbrev) name = value,
# define END_ENUM(name, upper, lower) };
#endif
#if !defined(BEGIN_ENUM_NUMERIC)
# define BEGIN_ENUM_NUMERIC(type, name, upper, lower) enum class name : type {
# define ENUM_KEY_NUMERIC(type, name, value, enumName, upper, lower, abbrev) name = value,
# define END_ENUM_NUMERIC(type, name, upper, lower) };
#endif
#if !defined(BEGIN_ENUM_TYPE)
# define BEGIN_ENUM_TYPE(type, name, upper, lower) namespace name {
# define ENUM_KEY_TYPE(type, name, value, enumName, upper, lower, abbrev) static type const name = value;
# define END_ENUM_TYPE(type, name, upper, lower) };
#endif
#if !defined(BEGIN_ANON_ENUM)
# define BEGIN_ANON_ENUM() enum {
# define ANON_ENUM_KEY(type, name, value) name = value,
# define END_ANON_ENUM() };
#endif
#if !defined(BEGIN_ANON_ENUM_NUMERIC)
# define BEGIN_ANON_ENUM_NUMERIC(type) enum : type {
# define ANON_ENUM_KEY_NUMERIC(type, name, value) name = value,
# define END_ANON_ENUM_NUMERIC(type) };
#endif
#if !defined(ENUM_CONSTANT_NUMERIC)
# define ENUM_CONSTANT_NUMERIC(type, name, value) enum : type { name = value };
#endif
#if !defined(ENUM_CONSTANT)
# define ENUM_CONSTANT(type, name, value) static type const name = value;
#endif

struct Foo;
struct FooCpp;

ENUM_CONSTANT_NUMERIC(int32_t, Anon, 10)

ENUM_CONSTANT_NUMERIC(bool, Anon2, true)

ENUM_CONSTANT(const char*, Anon3, "wow")

BEGIN_ENUM(Enum, ENUM, enum)
    ENUM_KEY(int32_t, One, 0, Enum, ENUM, enum, E)
    ENUM_KEY(int32_t, Two, 1, Enum, ENUM, enum, E)
END_ENUM(Enum, ENUM, enum)

BEGIN_ENUM(EnumDefaultType, ENUMDEFAULTTYPE, enumdefaulttype)
    ENUM_KEY(int32_t, One, 1, EnumDefaultType, ENUMDEFAULTTYPE, enumdefaulttype, EDT)
    ENUM_KEY(int32_t, Two, 2, EnumDefaultType, ENUMDEFAULTTYPE, enumdefaulttype, EDT)
END_ENUM(EnumDefaultType, ENUMDEFAULTTYPE, enumdefaulttype)

BEGIN_ENUM_NUMERIC(int8_t, EnumWithType, ENUMWITHTYPE, enumwithtype)
    ENUM_KEY_NUMERIC(int8_t, One, 1, EnumWithType, ENUMWITHTYPE, enumwithtype, EWT)
    ENUM_KEY_NUMERIC(int8_t, Two, 2, EnumWithType, ENUMWITHTYPE, enumwithtype, EWT)
END_ENUM_NUMERIC(int8_t, EnumWithType, ENUMWITHTYPE, enumwithtype)

BEGIN_ANON_ENUM()
    ANON_ENUM_KEY(int32_t, AnonOne, 1)
    ANON_ENUM_KEY(int32_t, AnonTwo, 2)
END_ANON_ENUM()

BEGIN_ANON_ENUM_NUMERIC(int64_t)
    ANON_ENUM_KEY_NUMERIC(int64_t, AnonWithTypeOne, 1LL)
    ANON_ENUM_KEY_NUMERIC(int64_t, AnonWithTypeTwo, 2LL)
END_ANON_ENUM_NUMERIC(int64_t)

BEGIN_ENUM_TYPE(const char*, EnumWithStringType, ENUMWITHSTRINGTYPE, enumwithstringtype)
    ENUM_KEY_TYPE(const char*, One, "1", EnumWithStringType, ENUMWITHSTRINGTYPE, enumwithstringtype, EWST)
    ENUM_KEY_TYPE(const char*, Two, "2", EnumWithStringType, ENUMWITHSTRINGTYPE, enumwithstringtype, EWST)
END_ENUM_TYPE(const char*, EnumWithStringType, ENUMWITHSTRINGTYPE, enumwithstringtype)

BEGIN_ENUM_TYPE(const char*, EnumWithImplicitType, ENUMWITHIMPLICITTYPE, enumwithimplicittype)
    ENUM_KEY_TYPE(const char*, One, "1", EnumWithImplicitType, ENUMWITHIMPLICITTYPE, enumwithimplicittype, EWIT)
    ENUM_KEY_TYPE(const char*, Two, "2", EnumWithImplicitType, ENUMWITHIMPLICITTYPE, enumwithimplicittype, EWIT)
END_ENUM_TYPE(const char*, EnumWithImplicitType, ENUMWITHIMPLICITTYPE, enumwithimplicittype)

ENUM_CONSTANT_NUMERIC(int32_t, AnonMixedOne, 1)
ENUM_CONSTANT_NUMERIC(int64_t, AnonMixedTwo, 2LL)
ENUM_CONSTANT(const char*, AnonMixedA, "a")


BEGIN_ENUM(STC, STC, stc)
    ENUM_KEY(int32_t, a, 1, STC, STC, stc, STC)
    ENUM_KEY(int32_t, b, 2, STC, STC, stc, STC)
END_ENUM(STC, STC, stc)

ENUM_CONSTANT(STC, STC_D, (STC)3)

// ignoring non-cpp struct Foo because of linkage
BEGIN_ENUM_TYPE(Foo, MyEnum, MYENUM, myenum)
    ENUM_KEY_TYPE(Foo, A, Foo(42), MyEnum, MYENUM, myenum, ME)
    ENUM_KEY_TYPE(Foo, B, Foo(84), MyEnum, MYENUM, myenum, ME)
END_ENUM_TYPE(Foo, MyEnum, MYENUM, myenum)

ENUM_CONSTANT(MyEnum, test, Foo(42))

struct FooCpp
{
    int32_t i;
    FooCpp() : i() {}
};

BEGIN_ENUM_TYPE(FooCpp, MyEnumCpp, MYENUMCPP, myenumcpp)
    ENUM_KEY_TYPE(FooCpp, A, FooCpp(42), MyEnumCpp, MYENUMCPP, myenumcpp, MEC)
    ENUM_KEY_TYPE(FooCpp, B, FooCpp(84), MyEnumCpp, MYENUMCPP, myenumcpp, MEC)
END_ENUM_TYPE(FooCpp, MyEnumCpp, MYENUMCPP, myenumcpp)

ENUM_CONSTANT(MyEnum, testCpp, Foo(42))

// ignoring enum `dtoh_enum.b` because type `int[]` is currently not supported for enum constants.
// ignoring enum `dtoh_enum.c` because type `int[int]` is currently not supported for enum constants.
// ignoring function dtoh_enum.foo because it's extern
// ignoring enum `dtoh_enum.d` because type `extern (C) void function()` is currently not supported for enum constants.
// ignoring variable dtoh_enum.e_b because of linkage
// ignoring enum `dtoh_enum.e` because type `immutable(bool)*` is currently not supported for enum constants.
---
*/

enum Anon = 10;
enum Anon2 = true;
enum Anon3 = "wow";

enum Enum
{
    One,
    Two
}

enum EnumDefaultType : int
{
    One = 1,
    Two = 2
}

enum EnumWithType : byte
{
    One = 1,
    Two = 2
}

enum
{
    AnonOne = 1,
    AnonTwo = 2
}

enum : long
{
    AnonWithTypeOne = 1,
    AnonWithTypeTwo = 2
}

enum EnumWithStringType : string
{
    One = "1",
    Two = "2"
}

enum EnumWithImplicitType
{
    One = "1",
    Two = "2"
}

enum
{
    AnonMixedOne = 1,
    long AnonMixedTwo = 2,
    string AnonMixedA = "a"
}

enum STC
{
    a = 1,
    b = 2,
}

enum STC_D = STC.a | STC.b;

struct Foo { int i; }
enum MyEnum { A = Foo(42), B = Foo(84) }
enum test = MyEnum.A;

extern(C++) struct FooCpp { int i; }
enum MyEnumCpp { A = FooCpp(42), B = FooCpp(84) }
enum testCpp = MyEnum.A;

// currently unsupported enums
enum b = [1, 2, 3];
enum c = [2: 3];

extern(C) void foo();
enum d = &foo;

immutable bool e_b;
enum e = &e_b;
