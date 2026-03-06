// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/GetInRegs.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__GET_IN_REGS__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__GET_IN_REGS__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'val_type'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/GetInRegs in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__GetInRegs_Request
{
  int32_t index;
  int32_t addr;
  int32_t count;
  rosidl_runtime_c__String__Sequence val_type;
} dobot_msgs_v3__srv__GetInRegs_Request;

// Struct for a sequence of dobot_msgs_v3__srv__GetInRegs_Request.
typedef struct dobot_msgs_v3__srv__GetInRegs_Request__Sequence
{
  dobot_msgs_v3__srv__GetInRegs_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__GetInRegs_Request__Sequence;


// Constants defined in the message

// Include directives for member types
// Member 'value'
// already included above
// #include "rosidl_runtime_c/string.h"

/// Struct defined in srv/GetInRegs in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__GetInRegs_Response
{
  int32_t res;
  rosidl_runtime_c__String value;
} dobot_msgs_v3__srv__GetInRegs_Response;

// Struct for a sequence of dobot_msgs_v3__srv__GetInRegs_Response.
typedef struct dobot_msgs_v3__srv__GetInRegs_Response__Sequence
{
  dobot_msgs_v3__srv__GetInRegs_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__GetInRegs_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__GET_IN_REGS__STRUCT_H_
