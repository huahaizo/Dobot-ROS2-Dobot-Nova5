// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/InverseSolution.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__INVERSE_SOLUTION__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__INVERSE_SOLUTION__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/inverse_solution__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_InverseSolution_Request_joint_near
{
public:
  explicit Init_InverseSolution_Request_joint_near(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::InverseSolution_Request joint_near(::dobot_msgs_v3::srv::InverseSolution_Request::_joint_near_type arg)
  {
    msg_.joint_near = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_is_jointnear
{
public:
  explicit Init_InverseSolution_Request_is_jointnear(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_joint_near is_jointnear(::dobot_msgs_v3::srv::InverseSolution_Request::_is_jointnear_type arg)
  {
    msg_.is_jointnear = std::move(arg);
    return Init_InverseSolution_Request_joint_near(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_tool
{
public:
  explicit Init_InverseSolution_Request_tool(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_is_jointnear tool(::dobot_msgs_v3::srv::InverseSolution_Request::_tool_type arg)
  {
    msg_.tool = std::move(arg);
    return Init_InverseSolution_Request_is_jointnear(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_user
{
public:
  explicit Init_InverseSolution_Request_user(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_tool user(::dobot_msgs_v3::srv::InverseSolution_Request::_user_type arg)
  {
    msg_.user = std::move(arg);
    return Init_InverseSolution_Request_tool(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset6
{
public:
  explicit Init_InverseSolution_Request_offset6(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_user offset6(::dobot_msgs_v3::srv::InverseSolution_Request::_offset6_type arg)
  {
    msg_.offset6 = std::move(arg);
    return Init_InverseSolution_Request_user(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset5
{
public:
  explicit Init_InverseSolution_Request_offset5(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_offset6 offset5(::dobot_msgs_v3::srv::InverseSolution_Request::_offset5_type arg)
  {
    msg_.offset5 = std::move(arg);
    return Init_InverseSolution_Request_offset6(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset4
{
public:
  explicit Init_InverseSolution_Request_offset4(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_offset5 offset4(::dobot_msgs_v3::srv::InverseSolution_Request::_offset4_type arg)
  {
    msg_.offset4 = std::move(arg);
    return Init_InverseSolution_Request_offset5(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset3
{
public:
  explicit Init_InverseSolution_Request_offset3(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_offset4 offset3(::dobot_msgs_v3::srv::InverseSolution_Request::_offset3_type arg)
  {
    msg_.offset3 = std::move(arg);
    return Init_InverseSolution_Request_offset4(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset2
{
public:
  explicit Init_InverseSolution_Request_offset2(::dobot_msgs_v3::srv::InverseSolution_Request & msg)
  : msg_(msg)
  {}
  Init_InverseSolution_Request_offset3 offset2(::dobot_msgs_v3::srv::InverseSolution_Request::_offset2_type arg)
  {
    msg_.offset2 = std::move(arg);
    return Init_InverseSolution_Request_offset3(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

class Init_InverseSolution_Request_offset1
{
public:
  Init_InverseSolution_Request_offset1()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_InverseSolution_Request_offset2 offset1(::dobot_msgs_v3::srv::InverseSolution_Request::_offset1_type arg)
  {
    msg_.offset1 = std::move(arg);
    return Init_InverseSolution_Request_offset2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::InverseSolution_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_InverseSolution_Request_offset1();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_InverseSolution_Response_res
{
public:
  Init_InverseSolution_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::InverseSolution_Response res(::dobot_msgs_v3::srv::InverseSolution_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::InverseSolution_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::InverseSolution_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_InverseSolution_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__INVERSE_SOLUTION__BUILDER_HPP_
