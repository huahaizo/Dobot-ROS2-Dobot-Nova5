// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from dobot_msgs_v3:msg/RobotStatus.idl
// generated code does not contain a copyright notice
#include "dobot_msgs_v3/msg/detail/robot_status__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
dobot_msgs_v3__msg__RobotStatus__init(dobot_msgs_v3__msg__RobotStatus * msg)
{
  if (!msg) {
    return false;
  }
  // is_enable
  // is_connected
  return true;
}

void
dobot_msgs_v3__msg__RobotStatus__fini(dobot_msgs_v3__msg__RobotStatus * msg)
{
  if (!msg) {
    return;
  }
  // is_enable
  // is_connected
}

bool
dobot_msgs_v3__msg__RobotStatus__are_equal(const dobot_msgs_v3__msg__RobotStatus * lhs, const dobot_msgs_v3__msg__RobotStatus * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // is_enable
  if (lhs->is_enable != rhs->is_enable) {
    return false;
  }
  // is_connected
  if (lhs->is_connected != rhs->is_connected) {
    return false;
  }
  return true;
}

bool
dobot_msgs_v3__msg__RobotStatus__copy(
  const dobot_msgs_v3__msg__RobotStatus * input,
  dobot_msgs_v3__msg__RobotStatus * output)
{
  if (!input || !output) {
    return false;
  }
  // is_enable
  output->is_enable = input->is_enable;
  // is_connected
  output->is_connected = input->is_connected;
  return true;
}

dobot_msgs_v3__msg__RobotStatus *
dobot_msgs_v3__msg__RobotStatus__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__RobotStatus * msg = (dobot_msgs_v3__msg__RobotStatus *)allocator.allocate(sizeof(dobot_msgs_v3__msg__RobotStatus), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(dobot_msgs_v3__msg__RobotStatus));
  bool success = dobot_msgs_v3__msg__RobotStatus__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
dobot_msgs_v3__msg__RobotStatus__destroy(dobot_msgs_v3__msg__RobotStatus * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    dobot_msgs_v3__msg__RobotStatus__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
dobot_msgs_v3__msg__RobotStatus__Sequence__init(dobot_msgs_v3__msg__RobotStatus__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__RobotStatus * data = NULL;

  if (size) {
    data = (dobot_msgs_v3__msg__RobotStatus *)allocator.zero_allocate(size, sizeof(dobot_msgs_v3__msg__RobotStatus), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = dobot_msgs_v3__msg__RobotStatus__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        dobot_msgs_v3__msg__RobotStatus__fini(&data[i - 1]);
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
dobot_msgs_v3__msg__RobotStatus__Sequence__fini(dobot_msgs_v3__msg__RobotStatus__Sequence * array)
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
      dobot_msgs_v3__msg__RobotStatus__fini(&array->data[i]);
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

dobot_msgs_v3__msg__RobotStatus__Sequence *
dobot_msgs_v3__msg__RobotStatus__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__msg__RobotStatus__Sequence * array = (dobot_msgs_v3__msg__RobotStatus__Sequence *)allocator.allocate(sizeof(dobot_msgs_v3__msg__RobotStatus__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = dobot_msgs_v3__msg__RobotStatus__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
dobot_msgs_v3__msg__RobotStatus__Sequence__destroy(dobot_msgs_v3__msg__RobotStatus__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    dobot_msgs_v3__msg__RobotStatus__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
dobot_msgs_v3__msg__RobotStatus__Sequence__are_equal(const dobot_msgs_v3__msg__RobotStatus__Sequence * lhs, const dobot_msgs_v3__msg__RobotStatus__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!dobot_msgs_v3__msg__RobotStatus__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
dobot_msgs_v3__msg__RobotStatus__Sequence__copy(
  const dobot_msgs_v3__msg__RobotStatus__Sequence * input,
  dobot_msgs_v3__msg__RobotStatus__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(dobot_msgs_v3__msg__RobotStatus);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    dobot_msgs_v3__msg__RobotStatus * data =
      (dobot_msgs_v3__msg__RobotStatus *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!dobot_msgs_v3__msg__RobotStatus__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          dobot_msgs_v3__msg__RobotStatus__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!dobot_msgs_v3__msg__RobotStatus__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
