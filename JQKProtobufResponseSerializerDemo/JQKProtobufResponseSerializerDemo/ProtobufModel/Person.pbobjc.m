// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Person.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Person.pbobjc.h"
 #import "Dog.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - JQKPersonRoot

@implementation JQKPersonRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - JQKPersonRoot_FileDescriptor

static GPBFileDescriptor *JQKPersonRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"com.xwoder.jqkprotobufresponseserializer"
                                                 objcPrefix:@"JQK"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum JQKSex

GPBEnumDescriptor *JQKSex_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Male\000Female\000";
    static const int32_t values[] = {
        JQKSex_Male,
        JQKSex_Female,
    };
    static const char *extraTextFormatInfo = "\002\000\004\000\001\006\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(JQKSex)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:JQKSex_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL JQKSex_IsValidValue(int32_t value__) {
  switch (value__) {
    case JQKSex_Male:
    case JQKSex_Female:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum JQKLocation

GPBEnumDescriptor *JQKLocation_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Asia\000Antarctica\000Oceania\000Europe\000Africa\000So"
        "uthAmerica\000NorthAmerica\000";
    static const int32_t values[] = {
        JQKLocation_Asia,
        JQKLocation_Antarctica,
        JQKLocation_Oceania,
        JQKLocation_Europe,
        JQKLocation_Africa,
        JQKLocation_SouthAmerica,
        JQKLocation_NorthAmerica,
    };
    static const char *extraTextFormatInfo = "\007\000\004\000\001\n\000\002\007\000\003\006\000\004\006\000\005\014\000\006\014\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(JQKLocation)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:JQKLocation_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL JQKLocation_IsValidValue(int32_t value__) {
  switch (value__) {
    case JQKLocation_Asia:
    case JQKLocation_Antarctica:
    case JQKLocation_Oceania:
    case JQKLocation_Europe:
    case JQKLocation_Africa:
    case JQKLocation_SouthAmerica:
    case JQKLocation_NorthAmerica:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - JQKPerson

@implementation JQKPerson

@dynamic name;
@dynamic hasDog, dog;
@dynamic sex;
@dynamic loc;

typedef struct JQKPerson__storage_ {
  uint32_t _has_storage_[1];
  JQKSex sex;
  JQKLocation loc;
  NSString *name;
  JQKDog *dog;
} JQKPerson__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = JQKPerson_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(JQKPerson__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "dog",
        .dataTypeSpecific.className = GPBStringifySymbol(JQKDog),
        .number = JQKPerson_FieldNumber_Dog,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(JQKPerson__storage_, dog),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sex",
        .dataTypeSpecific.enumDescFunc = JQKSex_EnumDescriptor,
        .number = JQKPerson_FieldNumber_Sex,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(JQKPerson__storage_, sex),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "loc",
        .dataTypeSpecific.enumDescFunc = JQKLocation_EnumDescriptor,
        .number = JQKPerson_FieldNumber_Loc,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(JQKPerson__storage_, loc),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[JQKPerson class]
                                     rootClass:[JQKPersonRoot class]
                                          file:JQKPersonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(JQKPerson__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t JQKPerson_Sex_RawValue(JQKPerson *message) {
  GPBDescriptor *descriptor = [JQKPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:JQKPerson_FieldNumber_Sex];
  return GPBGetMessageInt32Field(message, field);
}

void SetJQKPerson_Sex_RawValue(JQKPerson *message, int32_t value) {
  GPBDescriptor *descriptor = [JQKPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:JQKPerson_FieldNumber_Sex];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t JQKPerson_Loc_RawValue(JQKPerson *message) {
  GPBDescriptor *descriptor = [JQKPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:JQKPerson_FieldNumber_Loc];
  return GPBGetMessageInt32Field(message, field);
}

void SetJQKPerson_Loc_RawValue(JQKPerson *message, int32_t value) {
  GPBDescriptor *descriptor = [JQKPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:JQKPerson_FieldNumber_Loc];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
