// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/SetObstacleAvoid.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SET_OBSTACLE_AVOID__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__SET_OBSTACLE_AVOID__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/set_obstacle_avoid__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetObstacleAvoid_Request_status
{
public:
  Init_SetObstacleAvoid_Request_status()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SetObstacleAvoid_Request status(::dobot_msgs_v3::srv::SetObstacleAvoid_Request::_status_type arg)
  {
    msg_.status = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetObstacleAvoid_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetObstacleAvoid_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_SetObstacleAvoid_Request_status();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetObstacleAvoid_Response_res
{
public:
  Init_SetObstacleAvoid_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SetObstacleAvoid_Response res(::dobot_msgs_v3::srv::SetObstacleAvoid_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetObstacleAvoid_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetObstacleAvoid_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_SetObstacleAvoid_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SET_OBSTACLE_AVOID__BUILDER_HPP_
