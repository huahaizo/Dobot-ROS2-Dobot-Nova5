// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from dobot_msgs_v3:msg/ToolVectorActual.idl
// generated code does not contain a copyright notice
#include "dobot_msgs_v3/msg/detail/tool_vector_actual__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
dobot_msgs_v3__msg__ToolVectorActual__init(dobot_msgs_v3__msg__ToolVectorActual * msg)
{
  if (!msg) {
    return false;
  }
  // x
  // y
  // z
  // rx
  // ry
  // rz
  return true;
}

void
dobot_msgs_v3__msg__ToolVectorActual__fini(dobot_msgs_v3__msg__ToolVectorActual * msg)
{
  if (!msg) {
    return;
  }
  // x
  // y
  // z
  // rx
  // ry
  // rz
}

bool
dobot_msgs_v3__msg__ToolVectorActual__are_equal(const dobot_msgs_v3__msg__ToolVectorActual * lhs, const dobot_msgs_v3__msg__ToolVectorActual * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // x
  if (lhs->x != rhs->x) {
    return false;
  }
  // y
  if (lhs->y != rhs->y) {
    return false;
  }
  // z
  if (lhs->z != rhs->z) {
    return false;
  }
  // rx
  if (lhs->rx != rhs->rx) {
    return false;
  }
  // ry
  if (lhs->ry != rhs->ry) {
    return false;
  }
  // rz
  if (lhs->rz != rhs->rz) {
    return false;
  }
  return true;
}

bool
dobot_msgs_v3__msg__ToolVectorActual__copy(
  const dobot_msgs_v3__msg__ToolVectorActual * input,
  dobot_msgs_v3__msg__ToolVectorActual * output)
{
  if (!input || !output) {
    return false;
  }
  // x
  output->x = input->x;
  // y
  output->y = input->y;
  // z
  output->z = input->z;
  // rx
  output->rx = input->rx;
  // ry
  output->ry = input->ry;
  // rz
  output->rz = input->rz;
  return true;
}

dobot_msgs_v3__msg__ToolVectorActual *
dobot_msgs_v3__msg__ToolVectorActual__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__ToolVectorActual * msg = (dobot_msgs_v3__msg__ToolVectorActual *)allocator.allocate(sizeof(dobot_msgs_v3__msg__ToolVectorActual), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(dobot_msgs_v3__msg__ToolVectorActual));
  bool success = dobot_msgs_v3__msg__ToolVectorActual__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
dobot_msgs_v3__msg__ToolVectorActual__destroy(dobot_msgs_v3__msg__ToolVectorActual * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    dobot_msgs_v3__msg__ToolVectorActual__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__init(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__ToolVectorActual * data = NULL;

  if (size) {
    data = (dobot_msgs_v3__msg__ToolVectorActual *)allocator.zero_allocate(size, sizeof(dobot_msgs_v3__msg__ToolVectorActual), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = dobot_msgs_v3__msg__ToolVectorActual__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        dobot_msgs_v3__msg__ToolVectorActual__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
dobot_msgs_v3__msg__ToolVectorActual__Sequence__fini(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      dobot_msgs_v3__msg__ToolVectorActual__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

dobot_msgs_v3__msg__ToolVectorActual__Sequence *
dobot_msgs_v3__msg__ToolVectorActual__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__ToolVectorActual__Sequence * array = (dobot_msgs_v3__msg__ToolVectorActual__Sequence *)allocator.allocate(sizeof(dobot_msgs_v3__msg__ToolVectorActual__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = dobot_msgs_v3__msg__ToolVectorActual__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
dobot_msgs_v3__msg__ToolVectorActual__Sequence__destroy(dobot_msgs_v3__msg__ToolVectorActual__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    dobot_msgs_v3__msg__ToolVectorActual__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__are_equal(const dobot_msgs_v3__msg__ToolVectorActual__Sequence * lhs, const dobot_msgs_v3__msg__ToolVectorActual__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!dobot_msgs_v3__msg__ToolVectorActual__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
dobot_msgs_v3__msg__ToolVectorActual__Sequence__copy(
  const dobot_msgs_v3__msg__ToolVectorActual__Sequence * input,
  dobot_msgs_v3__msg__ToolVectorActual__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(dobot_msgs_v3__msg__ToolVectorActual);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    dobot_msgs_v3__msg__ToolVectorActual * data =
      (dobot_msgs_v3__msg__ToolVectorActual *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!dobot_msgs_v3__msg__ToolVectorActual__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          dobot_msgs_v3__msg__ToolVectorActual__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!dobot_msgs_v3__msg__ToolVectorActual__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
