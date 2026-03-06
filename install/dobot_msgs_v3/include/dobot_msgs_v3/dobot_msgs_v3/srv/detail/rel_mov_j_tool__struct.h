// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/RelMovJTool.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J_TOOL__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J_TOOL__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'param_value'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/RelMovJTool in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__RelMovJTool_Request
{
  double offset1;
  double offset2;
  double offset3;
  double offset4;
  double offset5;
  double offset6;
  int32_t tool;
  rosidl_runtime_c__String__Sequence param_value;
} dobot_msgs_v3__srv__RelMovJTool_Request;

// Struct for a sequence of dobot_msgs_v3__srv__RelMovJTool_Request.
typedef struct dobot_msgs_v3__srv__RelMovJTool_Request__Sequence
{
  dobot_msgs_v3__srv__RelMovJTool_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__RelMovJTool_Request__Sequence;


// Constants defined in the message

/// Struct defined in srv/RelMovJTool in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__RelMovJTool_Response
{
  int32_t res;
} dobot_msgs_v3__srv__RelMovJTool_Response;

// Struct for a sequence of dobot_msgs_v3__srv__RelMovJTool_Response.
typedef struct dobot_msgs_v3__srv__RelMovJTool_Response__Sequence
{
  dobot_msgs_v3__srv__RelMovJTool_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__RelMovJTool_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J_TOOL__STRUCT_H_
