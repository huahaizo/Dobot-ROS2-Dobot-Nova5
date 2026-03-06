// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from dobot_msgs_v3:srv/RelMovJ.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J__STRUCT_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J__STRUCT_HPP_

#include <algorithm>
#include <array>
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "rosidl_runtime_cpp/bounded_vector.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


#ifndef _WIN32
# define DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Request __attribute__((deprecated))
#else
# define DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Request __declspec(deprecated)
#endif

namespace dobot_msgs_v3
{

namespace srv
{

// message struct
template<class ContainerAllocator>
struct RelMovJ_Request_
{
  using Type = RelMovJ_Request_<ContainerAllocator>;

  explicit RelMovJ_Request_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->offset1 = 0.0;
      this->offset2 = 0.0;
      this->offset3 = 0.0;
      this->offset4 = 0.0;
      this->offset5 = 0.0;
      this->offset6 = 0.0;
    }
  }

  explicit RelMovJ_Request_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->offset1 = 0.0;
      this->offset2 = 0.0;
      this->offset3 = 0.0;
      this->offset4 = 0.0;
      this->offset5 = 0.0;
      this->offset6 = 0.0;
    }
  }

  // field types and members
  using _offset1_type =
    double;
  _offset1_type offset1;
  using _offset2_type =
    double;
  _offset2_type offset2;
  using _offset3_type =
    double;
  _offset3_type offset3;
  using _offset4_type =
    double;
  _offset4_type offset4;
  using _offset5_type =
    double;
  _offset5_type offset5;
  using _offset6_type =
    double;
  _offset6_type offset6;
  using _param_value_type =
    std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>>;
  _param_value_type param_value;

  // setters for named parameter idiom
  Type & set__offset1(
    const double & _arg)
  {
    this->offset1 = _arg;
    return *this;
  }
  Type & set__offset2(
    const double & _arg)
  {
    this->offset2 = _arg;
    return *this;
  }
  Type & set__offset3(
    const double & _arg)
  {
    this->offset3 = _arg;
    return *this;
  }
  Type & set__offset4(
    const double & _arg)
  {
    this->offset4 = _arg;
    return *this;
  }
  Type & set__offset5(
    const double & _arg)
  {
    this->offset5 = _arg;
    return *this;
  }
  Type & set__offset6(
    const double & _arg)
  {
    this->offset6 = _arg;
    return *this;
  }
  Type & set__param_value(
    const std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> & _arg)
  {
    this->param_value = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> *;
  using ConstRawPtr =
    const dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Request
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Request
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Request_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const RelMovJ_Request_ & other) const
  {
    if (this->offset1 != other.offset1) {
      return false;
    }
    if (this->offset2 != other.offset2) {
      return false;
    }
    if (this->offset3 != other.offset3) {
      return false;
    }
    if (this->offset4 != other.offset4) {
      return false;
    }
    if (this->offset5 != other.offset5) {
      return false;
    }
    if (this->offset6 != other.offset6) {
      return false;
    }
    if (this->param_value != other.param_value) {
      return false;
    }
    return true;
  }
  bool operator!=(const RelMovJ_Request_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct RelMovJ_Request_

// alias to use template instance with default allocator
using RelMovJ_Request =
  dobot_msgs_v3::srv::RelMovJ_Request_<std::allocator<void>>;

// constant definitions

}  // namespace srv

}  // namespace dobot_msgs_v3


#ifndef _WIN32
# define DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Response __attribute__((deprecated))
#else
# define DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Response __declspec(deprecated)
#endif

namespace dobot_msgs_v3
{

namespace srv
{

// message struct
template<class ContainerAllocator>
struct RelMovJ_Response_
{
  using Type = RelMovJ_Response_<ContainerAllocator>;

  explicit RelMovJ_Response_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->res = 0l;
    }
  }

  explicit RelMovJ_Response_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->res = 0l;
    }
  }

  // field types and members
  using _res_type =
    int32_t;
  _res_type res;

  // setters for named parameter idiom
  Type & set__res(
    const int32_t & _arg)
  {
    this->res = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> *;
  using ConstRawPtr =
    const dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Response
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__dobot_msgs_v3__srv__RelMovJ_Response
    std::shared_ptr<dobot_msgs_v3::srv::RelMovJ_Response_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const RelMovJ_Response_ & other) const
  {
    if (this->res != other.res) {
      return false;
    }
    return true;
  }
  bool operator!=(const RelMovJ_Response_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct RelMovJ_Response_

// alias to use template instance with default allocator
using RelMovJ_Response =
  dobot_msgs_v3::srv::RelMovJ_Response_<std::allocator<void>>;

// constant definitions

}  // namespace srv

}  // namespace dobot_msgs_v3

namespace dobot_msgs_v3
{

namespace srv
{

struct RelMovJ
{
  using Request = dobot_msgs_v3::srv::RelMovJ_Request;
  using Response = dobot_msgs_v3::srv::RelMovJ_Response;
};

}  // namespace srv

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_J__STRUCT_HPP_
