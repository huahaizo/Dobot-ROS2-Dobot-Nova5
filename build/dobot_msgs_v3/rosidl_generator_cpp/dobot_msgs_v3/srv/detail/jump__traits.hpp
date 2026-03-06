// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from dobot_msgs_v3:srv/Jump.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__JUMP__TRAITS_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__JUMP__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "dobot_msgs_v3/srv/detail/jump__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const Jump_Request & msg,
  std::ostream & out)
{
  out << "{";
  // member: offset1
  {
    out << "offset1: ";
    rosidl_generator_traits::value_to_yaml(msg.offset1, out);
    out << ", ";
  }

  // member: offset2
  {
    out << "offset2: ";
    rosidl_generator_traits::value_to_yaml(msg.offset2, out);
    out << ", ";
  }

  // member: offset3
  {
    out << "offset3: ";
    rosidl_generator_traits::value_to_yaml(msg.offset3, out);
    out << ", ";
  }

  // member: offset4
  {
    out << "offset4: ";
    rosidl_generator_traits::value_to_yaml(msg.offset4, out);
    out << ", ";
  }

  // member: offset5
  {
    out << "offset5: ";
    rosidl_generator_traits::value_to_yaml(msg.offset5, out);
    out << ", ";
  }

  // member: offset6
  {
    out << "offset6: ";
    rosidl_generator_traits::value_to_yaml(msg.offset6, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const Jump_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: offset1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset1: ";
    rosidl_generator_traits::value_to_yaml(msg.offset1, out);
    out << "\n";
  }

  // member: offset2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset2: ";
    rosidl_generator_traits::value_to_yaml(msg.offset2, out);
    out << "\n";
  }

  // member: offset3
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset3: ";
    rosidl_generator_traits::value_to_yaml(msg.offset3, out);
    out << "\n";
  }

  // member: offset4
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset4: ";
    rosidl_generator_traits::value_to_yaml(msg.offset4, out);
    out << "\n";
  }

  // member: offset5
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset5: ";
    rosidl_generator_traits::value_to_yaml(msg.offset5, out);
    out << "\n";
  }

  // member: offset6
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "offset6: ";
    rosidl_generator_traits::value_to_yaml(msg.offset6, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const Jump_Request & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace srv

}  // namespace dobot_msgs_v3

namespace rosidl_generator_traits
{

[[deprecated("use dobot_msgs_v3::srv::to_block_style_yaml() instead")]]
inline void to_yaml(
  const dobot_msgs_v3::srv::Jump_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::Jump_Request & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::Jump_Request>()
{
  return "dobot_msgs_v3::srv::Jump_Request";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Jump_Request>()
{
  return "dobot_msgs_v3/srv/Jump_Request";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Jump_Request>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Jump_Request>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::srv::Jump_Request>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const Jump_Response & msg,
  std::ostream & out)
{
  out << "{";
  // member: res
  {
    out << "res: ";
    rosidl_generator_traits::value_to_yaml(msg.res, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const Jump_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: res
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "res: ";
    rosidl_generator_traits::value_to_yaml(msg.res, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const Jump_Response & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace srv

}  // namespace dobot_msgs_v3

namespace rosidl_generator_traits
{

[[deprecated("use dobot_msgs_v3::srv::to_block_style_yaml() instead")]]
inline void to_yaml(
  const dobot_msgs_v3::srv::Jump_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::Jump_Response & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::Jump_Response>()
{
  return "dobot_msgs_v3::srv::Jump_Response";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Jump_Response>()
{
  return "dobot_msgs_v3/srv/Jump_Response";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Jump_Response>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Jump_Response>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::srv::Jump_Response>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<dobot_msgs_v3::srv::Jump>()
{
  return "dobot_msgs_v3::srv::Jump";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Jump>()
{
  return "dobot_msgs_v3/srv/Jump";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Jump>
  : std::integral_constant<
    bool,
    has_fixed_size<dobot_msgs_v3::srv::Jump_Request>::value &&
    has_fixed_size<dobot_msgs_v3::srv::Jump_Response>::value
  >
{
};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Jump>
  : std::integral_constant<
    bool,
    has_bounded_size<dobot_msgs_v3::srv::Jump_Request>::value &&
    has_bounded_size<dobot_msgs_v3::srv::Jump_Response>::value
  >
{
};

template<>
struct is_service<dobot_msgs_v3::srv::Jump>
  : std::true_type
{
};

template<>
struct is_service_request<dobot_msgs_v3::srv::Jump_Request>
  : std::true_type
{
};

template<>
struct is_service_response<dobot_msgs_v3::srv::Jump_Response>
  : std::true_type
{
};

}  // namespace rosidl_generator_traits

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__JUMP__TRAITS_HPP_
