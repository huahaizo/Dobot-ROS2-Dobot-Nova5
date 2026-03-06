// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from dobot_msgs_v3:srv/Circle.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__CIRCLE__TRAITS_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__CIRCLE__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "dobot_msgs_v3/srv/detail/circle__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const Circle_Request & msg,
  std::ostream & out)
{
  out << "{";
  // member: count
  {
    out << "count: ";
    rosidl_generator_traits::value_to_yaml(msg.count, out);
    out << ", ";
  }

  // member: x1
  {
    out << "x1: ";
    rosidl_generator_traits::value_to_yaml(msg.x1, out);
    out << ", ";
  }

  // member: y1
  {
    out << "y1: ";
    rosidl_generator_traits::value_to_yaml(msg.y1, out);
    out << ", ";
  }

  // member: z1
  {
    out << "z1: ";
    rosidl_generator_traits::value_to_yaml(msg.z1, out);
    out << ", ";
  }

  // member: rx1
  {
    out << "rx1: ";
    rosidl_generator_traits::value_to_yaml(msg.rx1, out);
    out << ", ";
  }

  // member: ry1
  {
    out << "ry1: ";
    rosidl_generator_traits::value_to_yaml(msg.ry1, out);
    out << ", ";
  }

  // member: rz1
  {
    out << "rz1: ";
    rosidl_generator_traits::value_to_yaml(msg.rz1, out);
    out << ", ";
  }

  // member: x2
  {
    out << "x2: ";
    rosidl_generator_traits::value_to_yaml(msg.x2, out);
    out << ", ";
  }

  // member: y2
  {
    out << "y2: ";
    rosidl_generator_traits::value_to_yaml(msg.y2, out);
    out << ", ";
  }

  // member: z2
  {
    out << "z2: ";
    rosidl_generator_traits::value_to_yaml(msg.z2, out);
    out << ", ";
  }

  // member: rx2
  {
    out << "rx2: ";
    rosidl_generator_traits::value_to_yaml(msg.rx2, out);
    out << ", ";
  }

  // member: ry2
  {
    out << "ry2: ";
    rosidl_generator_traits::value_to_yaml(msg.ry2, out);
    out << ", ";
  }

  // member: rz2
  {
    out << "rz2: ";
    rosidl_generator_traits::value_to_yaml(msg.rz2, out);
    out << ", ";
  }

  // member: param_value
  {
    if (msg.param_value.size() == 0) {
      out << "param_value: []";
    } else {
      out << "param_value: [";
      size_t pending_items = msg.param_value.size();
      for (auto item : msg.param_value) {
        rosidl_generator_traits::value_to_yaml(item, out);
        if (--pending_items > 0) {
          out << ", ";
        }
      }
      out << "]";
    }
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const Circle_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: count
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "count: ";
    rosidl_generator_traits::value_to_yaml(msg.count, out);
    out << "\n";
  }

  // member: x1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "x1: ";
    rosidl_generator_traits::value_to_yaml(msg.x1, out);
    out << "\n";
  }

  // member: y1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "y1: ";
    rosidl_generator_traits::value_to_yaml(msg.y1, out);
    out << "\n";
  }

  // member: z1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "z1: ";
    rosidl_generator_traits::value_to_yaml(msg.z1, out);
    out << "\n";
  }

  // member: rx1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rx1: ";
    rosidl_generator_traits::value_to_yaml(msg.rx1, out);
    out << "\n";
  }

  // member: ry1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ry1: ";
    rosidl_generator_traits::value_to_yaml(msg.ry1, out);
    out << "\n";
  }

  // member: rz1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rz1: ";
    rosidl_generator_traits::value_to_yaml(msg.rz1, out);
    out << "\n";
  }

  // member: x2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "x2: ";
    rosidl_generator_traits::value_to_yaml(msg.x2, out);
    out << "\n";
  }

  // member: y2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "y2: ";
    rosidl_generator_traits::value_to_yaml(msg.y2, out);
    out << "\n";
  }

  // member: z2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "z2: ";
    rosidl_generator_traits::value_to_yaml(msg.z2, out);
    out << "\n";
  }

  // member: rx2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rx2: ";
    rosidl_generator_traits::value_to_yaml(msg.rx2, out);
    out << "\n";
  }

  // member: ry2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ry2: ";
    rosidl_generator_traits::value_to_yaml(msg.ry2, out);
    out << "\n";
  }

  // member: rz2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rz2: ";
    rosidl_generator_traits::value_to_yaml(msg.rz2, out);
    out << "\n";
  }

  // member: param_value
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    if (msg.param_value.size() == 0) {
      out << "param_value: []\n";
    } else {
      out << "param_value:\n";
      for (auto item : msg.param_value) {
        if (indentation > 0) {
          out << std::string(indentation, ' ');
        }
        out << "- ";
        rosidl_generator_traits::value_to_yaml(item, out);
        out << "\n";
      }
    }
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const Circle_Request & msg, bool use_flow_style = false)
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
  const dobot_msgs_v3::srv::Circle_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::Circle_Request & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::Circle_Request>()
{
  return "dobot_msgs_v3::srv::Circle_Request";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Circle_Request>()
{
  return "dobot_msgs_v3/srv/Circle_Request";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Circle_Request>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Circle_Request>
  : std::integral_constant<bool, false> {};

template<>
struct is_message<dobot_msgs_v3::srv::Circle_Request>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const Circle_Response & msg,
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
  const Circle_Response & msg,
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

inline std::string to_yaml(const Circle_Response & msg, bool use_flow_style = false)
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
  const dobot_msgs_v3::srv::Circle_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::Circle_Response & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::Circle_Response>()
{
  return "dobot_msgs_v3::srv::Circle_Response";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Circle_Response>()
{
  return "dobot_msgs_v3/srv/Circle_Response";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Circle_Response>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Circle_Response>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::srv::Circle_Response>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<dobot_msgs_v3::srv::Circle>()
{
  return "dobot_msgs_v3::srv::Circle";
}

template<>
inline const char * name<dobot_msgs_v3::srv::Circle>()
{
  return "dobot_msgs_v3/srv/Circle";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::Circle>
  : std::integral_constant<
    bool,
    has_fixed_size<dobot_msgs_v3::srv::Circle_Request>::value &&
    has_fixed_size<dobot_msgs_v3::srv::Circle_Response>::value
  >
{
};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::Circle>
  : std::integral_constant<
    bool,
    has_bounded_size<dobot_msgs_v3::srv::Circle_Request>::value &&
    has_bounded_size<dobot_msgs_v3::srv::Circle_Response>::value
  >
{
};

template<>
struct is_service<dobot_msgs_v3::srv::Circle>
  : std::true_type
{
};

template<>
struct is_service_request<dobot_msgs_v3::srv::Circle_Request>
  : std::true_type
{
};

template<>
struct is_service_response<dobot_msgs_v3::srv::Circle_Response>
  : std::true_type
{
};

}  // namespace rosidl_generator_traits

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__CIRCLE__TRAITS_HPP_
