// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from dobot_msgs_v3:srv/ModbusCreate.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__STRUCT_H_
#define DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'ip'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/ModbusCreate in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__ModbusCreate_Request
{
  rosidl_runtime_c__String ip;
  int32_t port;
  int32_t slave_id;
  int32_t is_rtu;
} dobot_msgs_v3__srv__ModbusCreate_Request;

// Struct for a sequence of dobot_msgs_v3__srv__ModbusCreate_Request.
typedef struct dobot_msgs_v3__srv__ModbusCreate_Request__Sequence
{
  dobot_msgs_v3__srv__ModbusCreate_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__ModbusCreate_Request__Sequence;


// Constants defined in the message

// Include directives for member types
// Member 'index'
// already included above
// #include "rosidl_runtime_c/string.h"

/// Struct defined in srv/ModbusCreate in the package dobot_msgs_v3.
typedef struct dobot_msgs_v3__srv__ModbusCreate_Response
{
  int32_t res;
  rosidl_runtime_c__String index;
} dobot_msgs_v3__srv__ModbusCreate_Response;

// Struct for a sequence of dobot_msgs_v3__srv__ModbusCreate_Response.
typedef struct dobot_msgs_v3__srv__ModbusCreate_Response__Sequence
{
  dobot_msgs_v3__srv__ModbusCreate_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} dobot_msgs_v3__srv__ModbusCreate_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__STRUCT_H_
