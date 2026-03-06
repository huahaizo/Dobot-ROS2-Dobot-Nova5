# generated from rosidl_generator_py/resource/_idl.py.em
# with input from dobot_msgs_v3:srv/Circle.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import math  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_Circle_Request(type):
    """Metaclass of message 'Circle_Request'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('dobot_msgs_v3')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'dobot_msgs_v3.srv.Circle_Request')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__circle__request
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__circle__request
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__circle__request
            cls._TYPE_SUPPORT = module.type_support_msg__srv__circle__request
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__circle__request

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class Circle_Request(metaclass=Metaclass_Circle_Request):
    """Message class 'Circle_Request'."""

    __slots__ = [
        '_count',
        '_x1',
        '_y1',
        '_z1',
        '_rx1',
        '_ry1',
        '_rz1',
        '_x2',
        '_y2',
        '_z2',
        '_rx2',
        '_ry2',
        '_rz2',
        '_param_value',
    ]

    _fields_and_field_types = {
        'count': 'int32',
        'x1': 'double',
        'y1': 'double',
        'z1': 'double',
        'rx1': 'double',
        'ry1': 'double',
        'rz1': 'double',
        'x2': 'double',
        'y2': 'double',
        'z2': 'double',
        'rx2': 'double',
        'ry2': 'double',
        'rz2': 'double',
        'param_value': 'sequence<string>',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.UnboundedSequence(rosidl_parser.definition.UnboundedString()),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.count = kwargs.get('count', int())
        self.x1 = kwargs.get('x1', float())
        self.y1 = kwargs.get('y1', float())
        self.z1 = kwargs.get('z1', float())
        self.rx1 = kwargs.get('rx1', float())
        self.ry1 = kwargs.get('ry1', float())
        self.rz1 = kwargs.get('rz1', float())
        self.x2 = kwargs.get('x2', float())
        self.y2 = kwargs.get('y2', float())
        self.z2 = kwargs.get('z2', float())
        self.rx2 = kwargs.get('rx2', float())
        self.ry2 = kwargs.get('ry2', float())
        self.rz2 = kwargs.get('rz2', float())
        self.param_value = kwargs.get('param_value', [])

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.count != other.count:
            return False
        if self.x1 != other.x1:
            return False
        if self.y1 != other.y1:
            return False
        if self.z1 != other.z1:
            return False
        if self.rx1 != other.rx1:
            return False
        if self.ry1 != other.ry1:
            return False
        if self.rz1 != other.rz1:
            return False
        if self.x2 != other.x2:
            return False
        if self.y2 != other.y2:
            return False
        if self.z2 != other.z2:
            return False
        if self.rx2 != other.rx2:
            return False
        if self.ry2 != other.ry2:
            return False
        if self.rz2 != other.rz2:
            return False
        if self.param_value != other.param_value:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def count(self):
        """Message field 'count'."""
        return self._count

    @count.setter
    def count(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'count' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'count' field must be an integer in [-2147483648, 2147483647]"
        self._count = value

    @builtins.property
    def x1(self):
        """Message field 'x1'."""
        return self._x1

    @x1.setter
    def x1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'x1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'x1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._x1 = value

    @builtins.property
    def y1(self):
        """Message field 'y1'."""
        return self._y1

    @y1.setter
    def y1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'y1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'y1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._y1 = value

    @builtins.property
    def z1(self):
        """Message field 'z1'."""
        return self._z1

    @z1.setter
    def z1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'z1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'z1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._z1 = value

    @builtins.property
    def rx1(self):
        """Message field 'rx1'."""
        return self._rx1

    @rx1.setter
    def rx1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'rx1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'rx1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._rx1 = value

    @builtins.property
    def ry1(self):
        """Message field 'ry1'."""
        return self._ry1

    @ry1.setter
    def ry1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'ry1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'ry1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._ry1 = value

    @builtins.property
    def rz1(self):
        """Message field 'rz1'."""
        return self._rz1

    @rz1.setter
    def rz1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'rz1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'rz1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._rz1 = value

    @builtins.property
    def x2(self):
        """Message field 'x2'."""
        return self._x2

    @x2.setter
    def x2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'x2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'x2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._x2 = value

    @builtins.property
    def y2(self):
        """Message field 'y2'."""
        return self._y2

    @y2.setter
    def y2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'y2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'y2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._y2 = value

    @builtins.property
    def z2(self):
        """Message field 'z2'."""
        return self._z2

    @z2.setter
    def z2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'z2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'z2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._z2 = value

    @builtins.property
    def rx2(self):
        """Message field 'rx2'."""
        return self._rx2

    @rx2.setter
    def rx2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'rx2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'rx2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._rx2 = value

    @builtins.property
    def ry2(self):
        """Message field 'ry2'."""
        return self._ry2

    @ry2.setter
    def ry2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'ry2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'ry2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._ry2 = value

    @builtins.property
    def rz2(self):
        """Message field 'rz2'."""
        return self._rz2

    @rz2.setter
    def rz2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'rz2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'rz2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._rz2 = value

    @builtins.property
    def param_value(self):
        """Message field 'param_value'."""
        return self._param_value

    @param_value.setter
    def param_value(self, value):
        if __debug__:
            from collections.abc import Sequence
            from collections.abc import Set
            from collections import UserList
            from collections import UserString
            assert \
                ((isinstance(value, Sequence) or
                  isinstance(value, Set) or
                  isinstance(value, UserList)) and
                 not isinstance(value, str) and
                 not isinstance(value, UserString) and
                 all(isinstance(v, str) for v in value) and
                 True), \
                "The 'param_value' field must be a set or sequence and each value of type 'str'"
        self._param_value = value


# Import statements for member types

# already imported above
# import builtins

# already imported above
# import rosidl_parser.definition


class Metaclass_Circle_Response(type):
    """Metaclass of message 'Circle_Response'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('dobot_msgs_v3')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'dobot_msgs_v3.srv.Circle_Response')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__circle__response
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__circle__response
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__circle__response
            cls._TYPE_SUPPORT = module.type_support_msg__srv__circle__response
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__circle__response

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class Circle_Response(metaclass=Metaclass_Circle_Response):
    """Message class 'Circle_Response'."""

    __slots__ = [
        '_res',
    ]

    _fields_and_field_types = {
        'res': 'int32',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.res = kwargs.get('res', int())

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.res != other.res:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def res(self):
        """Message field 'res'."""
        return self._res

    @res.setter
    def res(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'res' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'res' field must be an integer in [-2147483648, 2147483647]"
        self._res = value


class Metaclass_Circle(type):
    """Metaclass of service 'Circle'."""

    _TYPE_SUPPORT = None

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('dobot_msgs_v3')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'dobot_msgs_v3.srv.Circle')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._TYPE_SUPPORT = module.type_support_srv__srv__circle

            from dobot_msgs_v3.srv import _circle
            if _circle.Metaclass_Circle_Request._TYPE_SUPPORT is None:
                _circle.Metaclass_Circle_Request.__import_type_support__()
            if _circle.Metaclass_Circle_Response._TYPE_SUPPORT is None:
                _circle.Metaclass_Circle_Response.__import_type_support__()


class Circle(metaclass=Metaclass_Circle):
    from dobot_msgs_v3.srv._circle import Circle_Request as Request
    from dobot_msgs_v3.srv._circle import Circle_Response as Response

    def __init__(self):
        raise NotImplementedError('Service classes can not be instantiated')
