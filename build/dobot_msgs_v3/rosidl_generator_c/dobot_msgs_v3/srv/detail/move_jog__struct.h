// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/MoveJog.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'axis_id'
// Member 'param_value'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/MoveJog in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__MoveJog_Request
{
  rosidl_runtime_c__String axis_id;
  rosidl_runtime_c__String__Sequence param_value;
} dobot_msgs_v3__srv__MoveJog_Request;

// Struct for a sequence of dobot_msgs_v3__srv__MoveJog_Request.
typedef struct dobot_msgs_v3__srv__MoveJog_Request__Sequence
{
  dobot_msgs_v3__srv__MoveJog_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__MoveJog_Request__Sequence;


// Constants defined in the message

/// Struct defined in srv/MoveJog in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__MoveJog_Response
{
  int32_t res;
} dobot_msgs_v3__srv__MoveJog_Response;

// Struct for a sequence of dobot_msgs_v3__srv__MoveJog_Response.
typedef struct dobot_msgs_v3__srv__MoveJog_Response__Sequence
{
  dobot_msgs_v3__srv__MoveJog_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__MoveJog_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__STRUCT_H_
