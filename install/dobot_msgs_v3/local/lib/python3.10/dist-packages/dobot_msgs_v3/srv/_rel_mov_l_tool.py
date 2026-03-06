# generated from rosidl_generator_py/resource/_idl.py.em
# with input from dobot_msgs_v3:srv/RelMovLTool.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import math  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_RelMovLTool_Request(type):
    """Metaclass of message 'RelMovLTool_Request'."""

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
                'dobot_msgs_v3.srv.RelMovLTool_Request')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__rel_mov_l_tool__request
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__rel_mov_l_tool__request
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__rel_mov_l_tool__request
            cls._TYPE_SUPPORT = module.type_support_msg__srv__rel_mov_l_tool__request
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__rel_mov_l_tool__request

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class RelMovLTool_Request(metaclass=Metaclass_RelMovLTool_Request):
    """Message class 'RelMovLTool_Request'."""

    __slots__ = [
        '_offset1',
        '_offset2',
        '_offset3',
        '_offset4',
        '_offset5',
        '_offset6',
        '_tool',
        '_param_value',
    ]

    _fields_and_field_types = {
        'offset1': 'double',
        'offset2': 'double',
        'offset3': 'double',
        'offset4': 'double',
        'offset5': 'double',
        'offset6': 'double',
        'tool': 'int32',
        'param_value': 'sequence<string>',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.UnboundedSequence(rosidl_parser.definition.UnboundedString()),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.offset1 = kwargs.get('offset1', float())
        self.offset2 = kwargs.get('offset2', float())
        self.offset3 = kwargs.get('offset3', float())
        self.offset4 = kwargs.get('offset4', float())
        self.offset5 = kwargs.get('offset5', float())
        self.offset6 = kwargs.get('offset6', float())
        self.tool = kwargs.get('tool', int())
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
        if self.offset1 != other.offset1:
            return False
        if self.offset2 != other.offset2:
            return False
        if self.offset3 != other.offset3:
            return False
        if self.offset4 != other.offset4:
            return False
        if self.offset5 != other.offset5:
            return False
        if self.offset6 != other.offset6:
            return False
        if self.tool != other.tool:
            return False
        if self.param_value != other.param_value:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def offset1(self):
        """Message field 'offset1'."""
        return self._offset1

    @offset1.setter
    def offset1(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset1' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset1' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset1 = value

    @builtins.property
    def offset2(self):
        """Message field 'offset2'."""
        return self._offset2

    @offset2.setter
    def offset2(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset2' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset2' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset2 = value

    @builtins.property
    def offset3(self):
        """Message field 'offset3'."""
        return self._offset3

    @offset3.setter
    def offset3(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset3' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset3' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset3 = value

    @builtins.property
    def offset4(self):
        """Message field 'offset4'."""
        return self._offset4

    @offset4.setter
    def offset4(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset4' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset4' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset4 = value

    @builtins.property
    def offset5(self):
        """Message field 'offset5'."""
        return self._offset5

    @offset5.setter
    def offset5(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset5' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset5' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset5 = value

    @builtins.property
    def offset6(self):
        """Message field 'offset6'."""
        return self._offset6

    @offset6.setter
    def offset6(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'offset6' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'offset6' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._offset6 = value

    @builtins.property
    def tool(self):
        """Message field 'tool'."""
        return self._tool

    @tool.setter
    def tool(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'tool' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'tool' field must be an integer in [-2147483648, 2147483647]"
        self._tool = value

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


class Metaclass_RelMovLTool_Response(type):
    """Metaclass of message 'RelMovLTool_Response'."""

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
                'dobot_msgs_v3.srv.RelMovLTool_Response')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__rel_mov_l_tool__response
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__rel_mov_l_tool__response
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__rel_mov_l_tool__response
            cls._TYPE_SUPPORT = module.type_support_msg__srv__rel_mov_l_tool__response
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__rel_mov_l_tool__response

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class RelMovLTool_Response(metaclass=Metaclass_RelMovLTool_Response):
    """Message class 'RelMovLTool_Response'."""

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


class Metaclass_RelMovLTool(type):
    """Metaclass of service 'RelMovLTool'."""

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
                'dobot_msgs_v3.srv.RelMovLTool')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._TYPE_SUPPORT = module.type_support_srv__srv__rel_mov_l_tool

            from dobot_msgs_v3.srv import _rel_mov_l_tool
            if _rel_mov_l_tool.Metaclass_RelMovLTool_Request._TYPE_SUPPORT is None:
                _rel_mov_l_tool.Metaclass_RelMovLTool_Request.__import_type_support__()
            if _rel_mov_l_tool.Metaclass_RelMovLTool_Response._TYPE_SUPPORT is None:
                _rel_mov_l_tool.Metaclass_RelMovLTool_Response.__import_type_support__()


class RelMovLTool(metaclass=Metaclass_RelMovLTool):
    from dobot_msgs_v3.srv._rel_mov_l_tool import RelMovLTool_Request as Request
    from dobot_msgs_v3.srv._rel_mov_l_tool import RelMovLTool_Response as Response

    def __init__(self):
        raise NotImplementedError('Service classes can not be instantiated')
