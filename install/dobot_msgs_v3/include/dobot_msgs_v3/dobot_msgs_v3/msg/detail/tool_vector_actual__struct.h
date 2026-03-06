// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:msg/ToolVectorActual.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__STRUCT_H_
#define DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

/// Struct defined in msg/ToolVectorActual in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__msg__ToolVectorActual
{
  double x;
  double y;
  double z;
  double rx;
  double ry;
  double rz;
} dobot_msgs_v3__msg__ToolVectorActual;

// Struct for a sequence of dobot_msgs_v3__msg__ToolVectorActual.
typedef struct dobot_msgs_v3__msg__ToolVectorActual__Sequence
{
  dobot_msgs_v3__msg__ToolVectorActual * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__msg__ToolVectorActual__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__STRUCT_H_
