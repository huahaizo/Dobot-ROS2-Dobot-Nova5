# generated from rosidl_generator_py/resource/_idl.py.em
# with input from dobot_msgs_v3:srv/ModbusCreate.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_ModbusCreate_Request(type):
    """Metaclass of message 'ModbusCreate_Request'."""

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
                'dobot_msgs_v3.srv.ModbusCreate_Request')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__modbus_create__request
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__modbus_create__request
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__modbus_create__request
            cls._TYPE_SUPPORT = module.type_support_msg__srv__modbus_create__request
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__modbus_create__request

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class ModbusCreate_Request(metaclass=Metaclass_ModbusCreate_Request):
    """Message class 'ModbusCreate_Request'."""

    __slots__ = [
        '_ip',
        '_port',
        '_slave_id',
        '_is_rtu',
    ]

    _fields_and_field_types = {
        'ip': 'string',
        'port': 'int32',
        'slave_id': 'int32',
        'is_rtu': 'int32',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.UnboundedString(),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.ip = kwargs.get('ip', str())
        self.port = kwargs.get('port', int())
        self.slave_id = kwargs.get('slave_id', int())
        self.is_rtu = kwargs.get('is_rtu', int())

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
        if self.ip != other.ip:
            return False
        if self.port != other.port:
            return False
        if self.slave_id != other.slave_id:
            return False
        if self.is_rtu != other.is_rtu:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def ip(self):
        """Message field 'ip'."""
        return self._ip

    @ip.setter
    def ip(self, value):
        if __debug__:
            assert \
                isinstance(value, str), \
                "The 'ip' field must be of type 'str'"
        self._ip = value

    @builtins.property
    def port(self):
        """Message field 'port'."""
        return self._port

    @port.setter
    def port(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'port' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'port' field must be an integer in [-2147483648, 2147483647]"
        self._port = value

    @builtins.property
    def slave_id(self):
        """Message field 'slave_id'."""
        return self._slave_id

    @slave_id.setter
    def slave_id(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'slave_id' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'slave_id' field must be an integer in [-2147483648, 2147483647]"
        self._slave_id = value

    @builtins.property
    def is_rtu(self):
        """Message field 'is_rtu'."""
        return self._is_rtu

    @is_rtu.setter
    def is_rtu(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'is_rtu' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'is_rtu' field must be an integer in [-2147483648, 2147483647]"
        self._is_rtu = value


# Import statements for member types

# already imported above
# import builtins

# already imported above
# import rosidl_parser.definition


class Metaclass_ModbusCreate_Response(type):
    """Metaclass of message 'ModbusCreate_Response'."""

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
                'dobot_msgs_v3.srv.ModbusCreate_Response')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__srv__modbus_create__response
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__srv__modbus_create__response
            cls._CONVERT_TO_PY = module.convert_to_py_msg__srv__modbus_create__response
            cls._TYPE_SUPPORT = module.type_support_msg__srv__modbus_create__response
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__srv__modbus_create__response

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class ModbusCreate_Response(metaclass=Metaclass_ModbusCreate_Response):
    """Message class 'ModbusCreate_Response'."""

    __slots__ = [
        '_res',
        '_index',
    ]

    _fields_and_field_types = {
        'res': 'int32',
        'index': 'string',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.UnboundedString(),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.res = kwargs.get('res', int())
        self.index = kwargs.get('index', str())

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
        if self.index != other.index:
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

    @builtins.property
    def index(self):
        """Message field 'index'."""
        return self._index

    @index.setter
    def index(self, value):
        if __debug__:
            assert \
                isinstance(value, str), \
                "The 'index' field must be of type 'str'"
        self._index = value


class Metaclass_ModbusCreate(type):
    """Metaclass of service 'ModbusCreate'."""

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
                'dobot_msgs_v3.srv.ModbusCreate')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._TYPE_SUPPORT = module.type_support_srv__srv__modbus_create

            from dobot_msgs_v3.srv import _modbus_create
            if _modbus_create.Metaclass_ModbusCreate_Request._TYPE_SUPPORT is None:
                _modbus_create.Metaclass_ModbusCreate_Request.__import_type_support__()
            if _modbus_create.Metaclass_ModbusCreate_Response._TYPE_SUPPORT is None:
                _modbus_create.Metaclass_ModbusCreate_Response.__import_type_support__()


class ModbusCreate(metaclass=Metaclass_ModbusCreate):
    from dobot_msgs_v3.srv._modbus_create import ModbusCreate_Request as Request
    from dobot_msgs_v3.srv._modbus_create import ModbusCreate_Response as Response

    def __init__(self):
        raise NotImplementedError('Service classes can not be instantiated')
