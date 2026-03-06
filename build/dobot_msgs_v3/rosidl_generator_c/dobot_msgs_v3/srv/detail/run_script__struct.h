// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/RunScript.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__RUN_SCRIPT__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__RUN_SCRIPT__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'project_name'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/RunScript in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__RunScript_Request
{
  rosidl_runtime_c__String project_name;
} dobot_msgs_v3__srv__RunScript_Request;

// Struct for a sequence of dobot_msgs_v3__srv__RunScript_Request.
typedef struct dobot_msgs_v3__srv__RunScript_Request__Sequence
{
  dobot_msgs_v3__srv__RunScript_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__RunScript_Request__Sequence;


// Constants defined in the message

/// Struct defined in srv/RunScript in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__RunScript_Response
{
  int32_t res;
} dobot_msgs_v3__srv__RunScript_Response;

// Struct for a sequence of dobot_msgs_v3__srv__RunScript_Response.
typedef struct dobot_msgs_v3__srv__RunScript_Response__Sequence
{
  dobot_msgs_v3__srv__RunScript_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__RunScript_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__RUN_SCRIPT__STRUCT_H_
