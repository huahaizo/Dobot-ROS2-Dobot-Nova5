// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from dobot_msgs_v3:msg/ToolVectorActual.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__TRAITS_HPP_
#define DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "dobot_msgs_v3/msg/detail/tool_vector_actual__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace dobot_msgs_v3
{

namespace msg
{

inline void to_flow_style_yaml(
  const ToolVectorActual & msg,
  std::ostream & out)
{
  out << "{";
  // member: x
  {
    out << "x: ";
    rosidl_generator_traits::value_to_yaml(msg.x, out);
    out << ", ";
  }

  // member: y
  {
    out << "y: ";
    rosidl_generator_traits::value_to_yaml(msg.y, out);
    out << ", ";
  }

  // member: z
  {
    out << "z: ";
    rosidl_generator_traits::value_to_yaml(msg.z, out);
    out << ", ";
  }

  // member: rx
  {
    out << "rx: ";
    rosidl_generator_traits::value_to_yaml(msg.rx, out);
    out << ", ";
  }

  // member: ry
  {
    out << "ry: ";
    rosidl_generator_traits::value_to_yaml(msg.ry, out);
    out << ", ";
  }

  // member: rz
  {
    out << "rz: ";
    rosidl_generator_traits::value_to_yaml(msg.rz, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const ToolVectorActual & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: x
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "x: ";
    rosidl_generator_traits::value_to_yaml(msg.x, out);
    out << "\n";
  }

  // member: y
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "y: ";
    rosidl_generator_traits::value_to_yaml(msg.y, out);
    out << "\n";
  }

  // member: z
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "z: ";
    rosidl_generator_traits::value_to_yaml(msg.z, out);
    out << "\n";
  }

  // member: rx
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rx: ";
    rosidl_generator_traits::value_to_yaml(msg.rx, out);
    out << "\n";
  }

  // member: ry
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ry: ";
    rosidl_generator_traits::value_to_yaml(msg.ry, out);
    out << "\n";
  }

  // member: rz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "rz: ";
    rosidl_generator_traits::value_to_yaml(msg.rz, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const ToolVectorActual & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace msg

}  // namespace dobot_msgs_v3

namespace rosidl_generator_traits
{

[[deprecated("use dobot_msgs_v3::msg::to_block_style_yaml() instead")]]
inline void to_yaml(
  const dobot_msgs_v3::msg::ToolVectorActual & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::msg::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::msg::ToolVectorActual & msg)
{
  return dobot_msgs_v3::msg::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::msg::ToolVectorActual>()
{
  return "dobot_msgs_v3::msg::ToolVectorActual";
}

template<>
inline const char * name<dobot_msgs_v3::msg::ToolVectorActual>()
{
  return "dobot_msgs_v3/msg/ToolVectorActual";
}

template<>
struct has_fixed_size<dobot_msgs_v3::msg::ToolVectorActual>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::msg::ToolVectorActual>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::msg::ToolVectorActual>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__TRAITS_HPP_
