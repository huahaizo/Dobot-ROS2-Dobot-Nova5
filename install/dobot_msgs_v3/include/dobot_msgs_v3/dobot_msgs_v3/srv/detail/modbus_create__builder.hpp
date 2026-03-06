// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/ModbusCreate.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/modbus_create__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ModbusCreate_Request_is_rtu
{
public:
  explicit Init_ModbusCreate_Request_is_rtu(::dobot_msgs_v3::srv::ModbusCreate_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::ModbusCreate_Request is_rtu(::dobot_msgs_v3::srv::ModbusCreate_Request::_is_rtu_type arg)
  {
    msg_.is_rtu = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Request msg_;
};

class Init_ModbusCreate_Request_slave_id
{
public:
  explicit Init_ModbusCreate_Request_slave_id(::dobot_msgs_v3::srv::ModbusCreate_Request & msg)
  : msg_(msg)
  {}
  Init_ModbusCreate_Request_is_rtu slave_id(::dobot_msgs_v3::srv::ModbusCreate_Request::_slave_id_type arg)
  {
    msg_.slave_id = std::move(arg);
    return Init_ModbusCreate_Request_is_rtu(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Request msg_;
};

class Init_ModbusCreate_Request_port
{
public:
  explicit Init_ModbusCreate_Request_port(::dobot_msgs_v3::srv::ModbusCreate_Request & msg)
  : msg_(msg)
  {}
  Init_ModbusCreate_Request_slave_id port(::dobot_msgs_v3::srv::ModbusCreate_Request::_port_type arg)
  {
    msg_.port = std::move(arg);
    return Init_ModbusCreate_Request_slave_id(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Request msg_;
};

class Init_ModbusCreate_Request_ip
{
public:
  Init_ModbusCreate_Request_ip()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_ModbusCreate_Request_port ip(::dobot_msgs_v3::srv::ModbusCreate_Request::_ip_type arg)
  {
    msg_.ip = std::move(arg);
    return Init_ModbusCreate_Request_port(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ModbusCreate_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_ModbusCreate_Request_ip();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ModbusCreate_Response_index
{
public:
  explicit Init_ModbusCreate_Response_index(::dobot_msgs_v3::srv::ModbusCreate_Response & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::ModbusCreate_Response index(::dobot_msgs_v3::srv::ModbusCreate_Response::_index_type arg)
  {
    msg_.index = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Response msg_;
};

class Init_ModbusCreate_Response_res
{
public:
  Init_ModbusCreate_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_ModbusCreate_Response_index res(::dobot_msgs_v3::srv::ModbusCreate_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return Init_ModbusCreate_Response_index(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ModbusCreate_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ModbusCreate_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_ModbusCreate_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__MODBUS_CREATE__BUILDER_HPP_
