// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/Sync.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SYNC__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__SYNC__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

/// Struct defined in srv/Sync in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__Sync_Request
{
  uint8_t structure_needs_at_least_one_member;
} dobot_msgs_v3__srv__Sync_Request;

// Struct for a sequence of dobot_msgs_v3__srv__Sync_Request.
typedef struct dobot_msgs_v3__srv__Sync_Request__Sequence
{
  dobot_msgs_v3__srv__Sync_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__Sync_Request__Sequence;


// Constants defined in the message

/// Struct defined in srv/Sync in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__Sync_Response
{
  int32_t res;
} dobot_msgs_v3__srv__Sync_Response;

// Struct for a sequence of dobot_msgs_v3__srv__Sync_Response.
typedef struct dobot_msgs_v3__srv__Sync_Response__Sequence
{
  dobot_msgs_v3__srv__Sync_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__Sync_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SYNC__STRUCT_H_
