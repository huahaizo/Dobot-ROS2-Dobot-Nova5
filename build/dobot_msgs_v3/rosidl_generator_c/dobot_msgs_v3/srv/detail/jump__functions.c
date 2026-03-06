// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from dobot_msgs_v3:srv/Jump.idl
// generated code does not contain a copyright notice
#include "dobot_msgs_v3/srv/detail/jump__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"

bool
dobot_msgs_v3__srv__Jump_Request__init(dobot_msgs_v3__srv__Jump_Request * msg)
{
  if (!msg) {
    return false;
  }
  // offset1
  // offset2
  // offset3
  // offset4
  // offset5
  // offset6
  return true;
}

void
dobot_msgs_v3__srv__Jump_Request__fini(dobot_msgs_v3__srv__Jump_Request * msg)
{
  if (!msg) {
    return;
  }
  // offset1
  // offset2
  // offset3
  // offset4
  // offset5
  // offset6
}

bool
dobot_msgs_v3__srv__Jump_Request__are_equal(const dobot_msgs_v3__srv__Jump_Request * lhs, const dobot_msgs_v3__srv__Jump_Request * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // offset1
  if (lhs->offset1 != rhs->offset1) {
    return false;
  }
  // offset2
  if (lhs->offset2 != rhs->offset2) {
    return false;
  }
  // offset3
  if (lhs->offset3 != rhs->offset3) {
    return false;
  }
  // offset4
  if (lhs->offset4 != rhs->offset4) {
    return false;
  }
  // offset5
  if (lhs->offset5 != rhs->offset5) {
    return false;
  }
  // offset6
  if (lhs->offset6 != rhs->offset6) {
    return false;
  }
  return true;
}

bool
dobot_msgs_v3__srv__Jump_Request__copy(
  const dobot_msgs_v3__srv__Jump_Request * input,
  dobot_msgs_v3__srv__Jump_Request * output)
{
  if (!input || !output) {
    return false;
  }
  // offset1
  output->offset1 = input->offset1;
  // offset2
  output->offset2 = input->offset2;
  // offset3
  output->offset3 = input->offset3;
  // offset4
  output->offset4 = input->offset4;
  // offset5
  output->offset5 = input->offset5;
  // offset6
  output->offset6 = input->offset6;
  return true;
}

dobot_msgs_v3__srv__Jump_Request *
dobot_msgs_v3__srv__Jump_Request__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Request * msg = (dobot_msgs_v3__srv__Jump_Request *)allocator.allocate(sizeof(dobot_msgs_v3__srv__Jump_Request), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(dobot_msgs_v3__srv__Jump_Request));
  bool success = dobot_msgs_v3__srv__Jump_Request__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
dobot_msgs_v3__srv__Jump_Request__destroy(dobot_msgs_v3__srv__Jump_Request * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    dobot_msgs_v3__srv__Jump_Request__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
dobot_msgs_v3__srv__Jump_Request__Sequence__init(dobot_msgs_v3__srv__Jump_Request__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Request * data = NULL;

  if (size) {
    data = (dobot_msgs_v3__srv__Jump_Request *)allocator.zero_allocate(size, sizeof(dobot_msgs_v3__srv__Jump_Request), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = dobot_msgs_v3__srv__Jump_Request__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        dobot_msgs_v3__srv__Jump_Request__fini(&data[i - 1]);
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
dobot_msgs_v3__srv__Jump_Request__Sequence__fini(dobot_msgs_v3__srv__Jump_Request__Sequence * array)
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
      dobot_msgs_v3__srv__Jump_Request__fini(&array->data[i]);
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

dobot_msgs_v3__srv__Jump_Request__Sequence *
dobot_msgs_v3__srv__Jump_Request__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Request__Sequence * array = (dobot_msgs_v3__srv__Jump_Request__Sequence *)allocator.allocate(sizeof(dobot_msgs_v3__srv__Jump_Request__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = dobot_msgs_v3__srv__Jump_Request__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
dobot_msgs_v3__srv__Jump_Request__Sequence__destroy(dobot_msgs_v3__srv__Jump_Request__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    dobot_msgs_v3__srv__Jump_Request__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
dobot_msgs_v3__srv__Jump_Request__Sequence__are_equal(const dobot_msgs_v3__srv__Jump_Request__Sequence * lhs, const dobot_msgs_v3__srv__Jump_Request__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!dobot_msgs_v3__srv__Jump_Request__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
dobot_msgs_v3__srv__Jump_Request__Sequence__copy(
  const dobot_msgs_v3__srv__Jump_Request__Sequence * input,
  dobot_msgs_v3__srv__Jump_Request__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(dobot_msgs_v3__srv__Jump_Request);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    dobot_msgs_v3__srv__Jump_Request * data =
      (dobot_msgs_v3__srv__Jump_Request *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!dobot_msgs_v3__srv__Jump_Request__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          dobot_msgs_v3__srv__Jump_Request__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!dobot_msgs_v3__srv__Jump_Request__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}


bool
dobot_msgs_v3__srv__Jump_Response__init(dobot_msgs_v3__srv__Jump_Response * msg)
{
  if (!msg) {
    return false;
  }
  // res
  return true;
}

void
dobot_msgs_v3__srv__Jump_Response__fini(dobot_msgs_v3__srv__Jump_Response * msg)
{
  if (!msg) {
    return;
  }
  // res
}

bool
dobot_msgs_v3__srv__Jump_Response__are_equal(const dobot_msgs_v3__srv__Jump_Response * lhs, const dobot_msgs_v3__srv__Jump_Response * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // res
  if (lhs->res != rhs->res) {
    return false;
  }
  return true;
}

bool
dobot_msgs_v3__srv__Jump_Response__copy(
  const dobot_msgs_v3__srv__Jump_Response * input,
  dobot_msgs_v3__srv__Jump_Response * output)
{
  if (!input || !output) {
    return false;
  }
  // res
  output->res = input->res;
  return true;
}

dobot_msgs_v3__srv__Jump_Response *
dobot_msgs_v3__srv__Jump_Response__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Response * msg = (dobot_msgs_v3__srv__Jump_Response *)allocator.allocate(sizeof(dobot_msgs_v3__srv__Jump_Response), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(dobot_msgs_v3__srv__Jump_Response));
  bool success = dobot_msgs_v3__srv__Jump_Response__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
dobot_msgs_v3__srv__Jump_Response__destroy(dobot_msgs_v3__srv__Jump_Response * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    dobot_msgs_v3__srv__Jump_Response__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
dobot_msgs_v3__srv__Jump_Response__Sequence__init(dobot_msgs_v3__srv__Jump_Response__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Response * data = NULL;

  if (size) {
    data = (dobot_msgs_v3__srv__Jump_Response *)allocator.zero_allocate(size, sizeof(dobot_msgs_v3__srv__Jump_Response), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = dobot_msgs_v3__srv__Jump_Response__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        dobot_msgs_v3__srv__Jump_Response__fini(&data[i - 1]);
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
dobot_msgs_v3__srv__Jump_Response__Sequence__fini(dobot_msgs_v3__srv__Jump_Response__Sequence * array)
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
      dobot_msgs_v3__srv__Jump_Response__fini(&array->data[i]);
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

dobot_msgs_v3__srv__Jump_Response__Sequence *
dobot_msgs_v3__srv__Jump_Response__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  dobot_msgs_v3__srv__Jump_Response__Sequence * array = (dobot_msgs_v3__srv__Jump_Response__Sequence *)allocator.allocate(sizeof(dobot_msgs_v3__srv__Jump_Response__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = dobot_msgs_v3__srv__Jump_Response__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
dobot_msgs_v3__srv__Jump_Response__Sequence__destroy(dobot_msgs_v3__srv__Jump_Response__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    dobot_msgs_v3__srv__Jump_Response__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
dobot_msgs_v3__srv__Jump_Response__Sequence__are_equal(const dobot_msgs_v3__srv__Jump_Response__Sequence * lhs, const dobot_msgs_v3__srv__Jump_Response__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!dobot_msgs_v3__srv__Jump_Response__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
dobot_msgs_v3__srv__Jump_Response__Sequence__copy(
  const dobot_msgs_v3__srv__Jump_Response__Sequence * input,
  dobot_msgs_v3__srv__Jump_Response__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(dobot_msgs_v3__srv__Jump_Response);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    dobot_msgs_v3__srv__Jump_Response * data =
      (dobot_msgs_v3__srv__Jump_Response *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!dobot_msgs_v3__srv__Jump_Response__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          dobot_msgs_v3__srv__Jump_Response__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!dobot_msgs_v3__srv__Jump_Response__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
