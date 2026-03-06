// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/Arc.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__ARC__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__ARC__STRUCT_H_

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

/// Struct defined in srv/Arc in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__Arc_Request
{
  double x1;
  double y1;
  double z1;
  double rx1;
  double ry1;
  double rz1;
  double x2;
  double y2;
  double z2;
  double rx2;
  double ry2;
  double rz2;
  rosidl_runtime_c__String__Sequence param_value;
} dobot_msgs_v3__srv__Arc_Request;

// Struct for a sequence of dobot_msgs_v3__srv__Arc_Request.
typedef struct dobot_msgs_v3__srv__Arc_Request__Sequence
{
  dobot_msgs_v3__srv__Arc_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__Arc_Request__Sequence;


// Constants defined in the message

/// Struct defined in srv/Arc in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__Arc_Response
{
  int32_t res;
} dobot_msgs_v3__srv__Arc_Response;

// Struct for a sequence of dobot_msgs_v3__srv__Arc_Response.
typedef struct dobot_msgs_v3__srv__Arc_Response__Sequence
{
  dobot_msgs_v3__srv__Arc_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__Arc_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__ARC__STRUCT_H_
