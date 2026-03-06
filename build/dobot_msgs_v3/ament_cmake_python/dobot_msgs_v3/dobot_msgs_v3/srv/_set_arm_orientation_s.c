// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from dobot_msgs_v3:srv/SetArmOrientation.idl
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
#include "dobot_msgs_v3/srv/detail/set_arm_orientation__struct.h"
#include "dobot_msgs_v3/srv/detail/set_arm_orientation__functions.h"


ROSIDL_GENERATOR_C_EXPORT
bool dobot_msgs_v3__srv__set_arm_orientation__request__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[65];
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
    assert(strncmp("dobot_msgs_v3.srv._set_arm_orientation.SetArmOrientation_Request", full_classname_dest, 64) == 0);
  }
  dobot_msgs_v3__srv__SetArmOrientation_Request * ros_message = _ros_message;
  {  // lorr
    PyObject * field = PyObject_GetAttrString(_pymsg, "lorr");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->lorr = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // uord
    PyObject * field = PyObject_GetAttrString(_pymsg, "uord");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->uord = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // forn
    PyObject * field = PyObject_GetAttrString(_pymsg, "forn");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->forn = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // config6
    PyObject * field = PyObject_GetAttrString(_pymsg, "config6");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->config6 = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * dobot_msgs_v3__srv__set_arm_orientation__request__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of SetArmOrientation_Request */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("dobot_msgs_v3.srv._set_arm_orientation");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "SetArmOrientation_Request");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  dobot_msgs_v3__srv__SetArmOrientation_Request * ros_message = (dobot_msgs_v3__srv__SetArmOrientation_Request *)raw_ros_message;
  {  // lorr
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->lorr);
    {
      int rc = PyObject_SetAttrString(_pymessage, "lorr", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // uord
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->uord);
    {
      int rc = PyObject_SetAttrString(_pymessage, "uord", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // forn
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->forn);
    {
      int rc = PyObject_SetAttrString(_pymessage, "forn", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // config6
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->config6);
    {
      int rc = PyObject_SetAttrString(_pymessage, "config6", field);
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
// #include "dobot_msgs_v3/srv/detail/set_arm_orientation__struct.h"
// already included above
// #include "dobot_msgs_v3/srv/detail/set_arm_orientation__functions.h"


ROSIDL_GENERATOR_C_EXPORT
bool dobot_msgs_v3__srv__set_arm_orientation__response__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[66];
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
    assert(strncmp("dobot_msgs_v3.srv._set_arm_orientation.SetArmOrientation_Response", full_classname_dest, 65) == 0);
  }
  dobot_msgs_v3__srv__SetArmOrientation_Response * ros_message = _ros_message;
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
PyObject * dobot_msgs_v3__srv__set_arm_orientation__response__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of SetArmOrientation_Response */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("dobot_msgs_v3.srv._set_arm_orientation");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "SetArmOrientation_Response");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  dobot_msgs_v3__srv__SetArmOrientation_Response * ros_message = (dobot_msgs_v3__srv__SetArmOrientation_Response *)raw_ros_message;
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
