# generated from rosidl_generator_py/resource/_idl.py.em
# with input from dobot_msgs_v3:srv/SetArmOrientation.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_SetArmOrientation_Request(type):
    """Metaclass of message 'SetArmOrientation_Request'."""

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
                'dobot_msgs_v3.srv.SetArmOrientation_Request')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__set_arm_orientation__request
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__set_arm_orientation__request
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__set_arm_orientation__request
            cls._TYPE_SUPPORT = module.type_support_msg__srv__set_arm_orientation__request
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__set_arm_orientation__request

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class SetArmOrientation_Request(metaclass=Metaclass_SetArmOrientation_Request):
    """Message class 'SetArmOrientation_Request'."""

    __slots__ = [
        '_lorr',
        '_uord',
        '_forn',
        '_config6',
    ]

    _fields_and_field_types = {
        'lorr': 'int32',
        'uord': 'int32',
        'forn': 'int32',
        'config6': 'int32',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.lorr = kwargs.get('lorr', int())
        self.uord = kwargs.get('uord', int())
        self.forn = kwargs.get('forn', int())
        self.config6 = kwargs.get('config6', int())

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
        if self.lorr != other.lorr:
            return False
        if self.uord != other.uord:
            return False
        if self.forn != other.forn:
            return False
        if self.config6 != other.config6:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def lorr(self):
        """Message field 'lorr'."""
        return self._lorr

    @lorr.setter
    def lorr(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'lorr' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'lorr' field must be an integer in [-2147483648, 2147483647]"
        self._lorr = value

    @builtins.property
    def uord(self):
        """Message field 'uord'."""
        return self._uord

    @uord.setter
    def uord(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'uord' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'uord' field must be an integer in [-2147483648, 2147483647]"
        self._uord = value

    @builtins.property
    def forn(self):
        """Message field 'forn'."""
        return self._forn

    @forn.setter
    def forn(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'forn' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'forn' field must be an integer in [-2147483648, 2147483647]"
        self._forn = value

    @builtins.property
    def config6(self):
        """Message field 'config6'."""
        return self._config6

    @config6.setter
    def config6(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'config6' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'config6' field must be an integer in [-2147483648, 2147483647]"
        self._config6 = value


# Import statements for member types

# already imported above
# import builtins

# already imported above
# import rosidl_parser.definition


class Metaclass_SetArmOrientation_Response(type):
    """Metaclass of message 'SetArmOrientation_Response'."""

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
                'dobot_msgs_v3.srv.SetArmOrientation_Response')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__set_arm_orientation__response
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__set_arm_orientation__response
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__set_arm_orientation__response
            cls._TYPE_SUPPORT = module.type_support_msg__srv__set_arm_orientation__response
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__set_arm_orientation__response

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class SetArmOrientation_Response(metaclass=Metaclass_SetArmOrientation_Response):
    """Message class 'SetArmOrientation_Response'."""

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


class Metaclass_SetArmOrientation(type):
    """Metaclass of service 'SetArmOrientation'."""

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
                'dobot_msgs_v3.srv.SetArmOrientation')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._TYPE_SUPPORT = module.type_support_srv__srv__set_arm_orientation

            from dobot_msgs_v3.srv import _set_arm_orientation
            if _set_arm_orientation.Metaclass_SetArmOrientation_Request._TYPE_SUPPORT is None:
                _set_arm_orientation.Metaclass_SetArmOrientation_Request.__import_type_support__()
            if _set_arm_orientation.Metaclass_SetArmOrientation_Response._TYPE_SUPPORT is None:
                _set_arm_orientation.Metaclass_SetArmOrientation_Response.__import_type_support__()


class SetArmOrientation(metaclass=Metaclass_SetArmOrientation):
    from dobot_msgs_v3.srv._set_arm_orientation import SetArmOrientation_Request as Request
    from dobot_msgs_v3.srv._set_arm_orientation import SetArmOrientation_Response as Response

    def __init__(self):
        raise NotImplementedError('Service classes can not be instantiated')
