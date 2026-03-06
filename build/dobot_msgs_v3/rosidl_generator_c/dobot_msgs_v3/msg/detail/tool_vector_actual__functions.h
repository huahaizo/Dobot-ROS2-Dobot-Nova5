// generated from rosidl_generator_c/resource/idl__functions.h.em
// with input from dobot_msgs_v3:msg/ToolVectorActual.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__FUNCTIONS_H_
#define DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__FUNCTIONS_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stdlib.h>

#include "rosidl_runtime_c/visibility_control.h"
#include "dobot_msgs_v3/msg/rosidl_generator_c__visibility_control.h"

#include "dobot_msgs_v3/msg/detail/tool_vector_actual__struct.h"

/// Initialize msg/ToolVectorActual message.
/**
 * If the init function is called twice for the same message without
 * calling fini inbetween previously allocated memory will be leaked.
 * \param[in,out] msg The previously allocated message pointer.
 * Fields without a default value will not be initialized by this function.
 * You might want to call memset(msg, 0, sizeof(
 * dobot_msgs_v3__msg__ToolVectorActual
 * )) before or use
 * dobot_msgs_v3__msg__ToolVectorActual__create()
 * to allocate and initialize the message.
 * \return true if initialization was successful, otherwise false
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__init(dobot_msgs_v3__msg__ToolVectorActual * msg);

/// Finalize msg/ToolVectorActual message.
/**
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
void
dobot_msgs_v3__msg__ToolVectorActual__fini(dobot_msgs_v3__msg__ToolVectorActual * msg);

/// Create msg/ToolVectorActual message.
/**
 * It allocates the memory for the message, sets the memory to zero, and
 * calls
 * dobot_msgs_v3__msg__ToolVectorActual__init().
 * \return The pointer to the initialized message if successful,
 * otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
dobot_msgs_v3__msg__ToolVectorActual *
dobot_msgs_v3__msg__ToolVectorActual__create();

/// Destroy msg/ToolVectorActual message.
/**
 * It calls
 * dobot_msgs_v3__msg__ToolVectorActual__fini()
 * and frees the memory of the message.
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
void
dobot_msgs_v3__msg__ToolVectorActual__destroy(dobot_msgs_v3__msg__ToolVectorActual * msg);

/// Check for msg/ToolVectorActual message equality.
/**
 * \param[in] lhs The message on the left hand size of the equality operator.
 * \param[in] rhs The message on the right hand size of the equality operator.
 * \return true if messages are equal, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__are_equal(const dobot_msgs_v3__msg__ToolVectorActual * lhs, const dobot_msgs_v3__msg__ToolVectorActual * rhs);

/// Copy a msg/ToolVectorActual message.
/**
 * This functions performs a deep copy, as opposed to the shallow copy that
 * plain assignment yields.
 *
 * \param[in] input The source message pointer.
 * \param[out] output The target message pointer, which must
 *   have been initialized before calling this function.
 * \return true if successful, or false if either pointer is null
 *   or memory allocation fails.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__copy(
  const dobot_msgs_v3__msg__ToolVectorActual * input,
  dobot_msgs_v3__msg__ToolVectorActual * output);

/// Initialize array of msg/ToolVectorActual messages.
/**
 * It allocates the memory for the number of elements and calls
 * dobot_msgs_v3__msg__ToolVectorActual__init()
 * for each element of the array.
 * \param[in,out] array The allocated array pointer.
 * \param[in] size The size / capacity of the array.
 * \return true if initialization was successful, otherwise false
 * If the array pointer is valid and the size is zero it is guaranteed
 # to return true.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__init(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array, size_t size);

/// Finalize array of msg/ToolVectorActual messages.
/**
 * It calls
 * dobot_msgs_v3__msg__ToolVectorActual__fini()
 * for each element of the array and frees the memory for the number of
 * elements.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
void
dobot_msgs_v3__msg__ToolVectorActual__Sequence__fini(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array);

/// Create array of msg/ToolVectorActual messages.
/**
 * It allocates the memory for the array and calls
 * dobot_msgs_v3__msg__ToolVectorActual__Sequence__init().
 * \param[in] size The size / capacity of the array.
 * \return The pointer to the initialized array if successful, otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
dobot_msgs_v3__msg__ToolVectorActual__Sequence *
dobot_msgs_v3__msg__ToolVectorActual__Sequence__create(size_t size);

/// Destroy array of msg/ToolVectorActual messages.
/**
 * It calls
 * dobot_msgs_v3__msg__ToolVectorActual__Sequence__fini()
 * on the array,
 * and frees the memory of the array.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
void
dobot_msgs_v3__msg__ToolVectorActual__Sequence__destroy(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array);

/// Check for msg/ToolVectorActual message array equality.
/**
 * \param[in] lhs The message array on the left hand size of the equality operator.
 * \param[in] rhs The message array on the right hand size of the equality operator.
 * \return true if message arrays are equal in size and content, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__are_equal(const dobot_msgs_v3__msg__ToolVectorActual__Sequence * lhs, const dobot_msgs_v3__msg__ToolVectorActual__Sequence * rhs);

/// Copy an array of msg/ToolVectorActual messages.
/**
 * This functions performs a deep copy, as opposed to the shallow copy that
 * plain assignment yields.
 *
 * \param[in] input The source array pointer.
 * \param[out] output The target array pointer, which must
 *   have been initialized before calling this function.
 * \return true if successful, or false if either pointer
 *   is null or memory allocation fails.
 */
ROSIDL_GENERATOR_C_PUBLIC_dobot_msgs_v3
bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__copy(
  const dobot_msgs_v3__msg__ToolVectorActual__Sequence * input,
  dobot_msgs_v3__msg__ToolVectorActual__Sequence * output);

#ifdef __cplusplus
}
#endif

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__FUNCTIONS_H_
