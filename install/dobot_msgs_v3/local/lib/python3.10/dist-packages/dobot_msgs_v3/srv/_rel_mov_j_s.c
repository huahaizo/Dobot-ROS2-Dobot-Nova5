// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from dobot_msgs_v3:srv/RelMovJ.idl
// generated code does not contain a copyright notice
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
#include <Python.h>
#include <stdbool.h>
#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "numpy/ndarrayobject.h"
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif
#include "rosidl_runtime_c/visibility_control.h"
#include "dobot_msgs_v3/srv/detail/rel_mov_j__struct.h"
#include "dobot_msgs_v3/srv/detail/rel_mov_j__functions.h"

#include "rosidl_runtime_c/primitives_sequence.h"
#include "rosidl_runtime_c/primitives_sequence_functions.h"
#include "rosidl_runtime_c/string.h"
#include "rosidl_runtime_c/string_functions.h"


ROSIDL_GENERATOR_C_EXPORT
bool dobot_msgs_v3__srv__rel_mov_j__request__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[45];
    {
      char * class_name = NULL;
      char * module_name = NULL;
      {
        PyObject * class_attr = PyObject_GetAttrString(_pymsg, "__class__");
        if (class_attr) {
          PyObject * name_attr = PyObject_GetAttrString(class_attr, "__name__");
          if (name_attr) {
            class_name = (char *)PyUnicode_1BYTE_DATA(name_attr);
            Py_DECREF(name_attr);
          }
          PyObject * module_attr = PyObject_GetAttrString(class_attr, "__module__");
          if (module_attr) {
            module_name = (char *)PyUnicode_1BYTE_DATA(module_attr);
            Py_DECREF(module_attr);
          }
          Py_DECREF(class_attr);
        }
      }
      if (!class_name || !module_name) {
        return false;
      }
      snprintf(full_classname_dest, sizeof(full_classname_dest), "%s.%s", module_name, class_name);
    }
    assert(strncmp("dobot_msgs_v3.srv._rel_mov_j.RelMovJ_Request", full_classname_dest, 44) == 0);
  }
  dobot_msgs_v3__srv__RelMovJ_Request * ros_message = _ros_message;
  {  // offset1
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset1");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset1 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // offset2
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset2");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset2 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // offset3
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset3");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset3 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // offset4
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset4");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset4 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // offset5
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset5");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset5 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // offset6
    PyObject * field = PyObject_GetAttrString(_pymsg, "offset6");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->offset6 = PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // param_value
    PyObject * field = PyObject_GetAttrString(_pymsg, "param_value");
    if (!field) {
      return false;
    }
    {
      PyObject * seq_field = PySequence_Fast(field, "expected a sequence in 'param_value'");
      if (!seq_field) {
        Py_DECREF(field);
        return false;
      }
      Py_ssize_t size = PySequence_Size(field);
      if (-1 == size) {
        Py_DECREF(seq_field);
        Py_DECREF(field);
        return false;
      }
      if (!rosidl_runtime_c__String__Sequence__init(&(ros_message->param_value), size)) {
        PyErr_SetString(PyExc_RuntimeError, "unable to create String__Sequence ros_message");
        Py_DECREF(seq_field);
        Py_DECREF(field);
        return false;
      }
      rosidl_runtime_c__String * dest = ros_message->param_value.data;
      for (Py_ssize_t i = 0; i < size; ++i) {
        PyObject * item = PySequence_Fast_GET_ITEM(seq_field, i);
        if (!item) {
          Py_DECREF(seq_field);
          Py_DECREF(field);
          return false;
        }
        assert(PyUnicode_Check(item));
        PyObject * encoded_item = PyUnicode_AsUTF8String(item);
        if (!encoded_item) {
          Py_DECREF(seq_field);
          Py_DECREF(field);
          return false;
        }
        rosidl_runtime_c__String__assign(&dest[i], PyBytes_AS_STRING(encoded_item));
        Py_DECREF(encoded_item);
      }
      Py_DECREF(seq_field);
    }
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * dobot_msgs_v3__srv__rel_mov_j__request__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of RelMovJ_Request */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("dobot_msgs_v3.srv._rel_mov_j");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "RelMovJ_Request");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  dobot_msgs_v3__srv__RelMovJ_Request * ros_message = (dobot_msgs_v3__srv__RelMovJ_Request *)raw_ros_message;
  {  // offset1
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset1);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset1", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // offset2
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset2);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset2", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // offset3
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset3);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset3", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // offset4
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset4);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset4", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // offset5
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset5);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset5", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // offset6
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->offset6);
    {
      int rc = PyObject_SetAttrString(_pymessage, "offset6", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // param_value
    PyObject * field = NULL;
    size_t size = ros_message->param_value.size;
    rosidl_runtime_c__String * src = ros_message->param_value.data;
    field = PyList_New(size);
    if (!field) {
      return NULL;
    }
    for (size_t i = 0; i < size; ++i) {
      PyObject * decoded_item = PyUnicode_DecodeUTF8(src[i].data, strlen(src[i].data), "replace");
      if (!decoded_item) {
        return NULL;
      }
      int rc = PyList_SetItem(field, i, decoded_item);
      (void)rc;
      assert(rc == 0);
    }
    assert(PySequence_Check(field));
    {
      int rc = PyObject_SetAttrString(_pymessage, "param_value", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}

#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
// already included above
// #include <Python.h>
// already included above
// #include <stdbool.h>
// already included above
// #include "numpy/ndarrayobject.h"
// already included above
// #include "rosidl_runtime_c/visibility_control.h"
// already included above
// #include "dobot_msgs_v3/srv/detail/rel_mov_j__struct.h"
// already included above
// #include "dobot_msgs_v3/srv/detail/rel_mov_j__functions.h"


ROSIDL_GENERATOR_C_EXPORT
bool dobot_msgs_v3__srv__rel_mov_j__response__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[46];
    {
      char * class_name = NULL;
      char * module_name = NULL;
      {
        PyObject * class_attr = PyObject_GetAttrString(_pymsg, "__class__");
        if (class_attr) {
          PyObject * name_attr = PyObject_GetAttrString(class_attr, "__name__");
          if (name_attr) {
            class_name = (char *)PyUnicode_1BYTE_DATA(name_attr);
            Py_DECREF(name_attr);
          }
          PyObject * module_attr = PyObject_GetAttrString(class_attr, "__module__");
          if (module_attr) {
            module_name = (char *)PyUnicode_1BYTE_DATA(module_attr);
            Py_DECREF(module_attr);
          }
          Py_DECREF(class_attr);
        }
      }
      if (!class_name || !module_name) {
        return false;
      }
      snprintf(full_classname_dest, sizeof(full_classname_dest), "%s.%s", module_name, class_name);
    }
    assert(strncmp("dobot_msgs_v3.srv._rel_mov_j.RelMovJ_Response", full_classname_dest, 45) == 0);
  }
  dobot_msgs_v3__srv__RelMovJ_Response * ros_message = _ros_message;
  {  // res
    PyObject * field = PyObject_GetAttrString(_pymsg, "res");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->res = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * dobot_msgs_v3__srv__rel_mov_j__response__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of RelMovJ_Response */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("dobot_msgs_v3.srv._rel_mov_j");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "RelMovJ_Response");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  dobot_msgs_v3__srv__RelMovJ_Response * ros_message = (dobot_msgs_v3__srv__RelMovJ_Response *)raw_ros_message;
  {  // res
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->res);
    {
      int rc = PyObject_SetAttrString(_pymessage, "res", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}
