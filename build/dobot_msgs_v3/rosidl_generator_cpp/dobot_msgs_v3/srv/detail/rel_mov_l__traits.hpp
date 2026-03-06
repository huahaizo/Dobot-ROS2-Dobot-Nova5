// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from dobot_msgs_v3:srv/RelMovL.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_L__TRAITS_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_L__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "dobot_msgs_v3/srv/detail/rel_mov_l__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const RelMovL_Request & msg,
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
  const RelMovL_Request & msg,
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

inline std::string to_yaml(const RelMovL_Request & msg, bool use_flow_style = false)
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
  const dobot_msgs_v3::srv::RelMovL_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::RelMovL_Request & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::RelMovL_Request>()
{
  return "dobot_msgs_v3::srv::RelMovL_Request";
}

template<>
inline const char * name<dobot_msgs_v3::srv::RelMovL_Request>()
{
  return "dobot_msgs_v3/srv/RelMovL_Request";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::RelMovL_Request>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::RelMovL_Request>
  : std::integral_constant<bool, false> {};

template<>
struct is_message<dobot_msgs_v3::srv::RelMovL_Request>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace dobot_msgs_v3
{

namespace srv
{

inline void to_flow_style_yaml(
  const RelMovL_Response & msg,
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
  const RelMovL_Response & msg,
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

inline std::string to_yaml(const RelMovL_Response & msg, bool use_flow_style = false)
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
  const dobot_msgs_v3::srv::RelMovL_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::srv::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::srv::RelMovL_Response & msg)
{
  return dobot_msgs_v3::srv::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::srv::RelMovL_Response>()
{
  return "dobot_msgs_v3::srv::RelMovL_Response";
}

template<>
inline const char * name<dobot_msgs_v3::srv::RelMovL_Response>()
{
  return "dobot_msgs_v3/srv/RelMovL_Response";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::RelMovL_Response>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::RelMovL_Response>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::srv::RelMovL_Response>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<dobot_msgs_v3::srv::RelMovL>()
{
  return "dobot_msgs_v3::srv::RelMovL";
}

template<>
inline const char * name<dobot_msgs_v3::srv::RelMovL>()
{
  return "dobot_msgs_v3/srv/RelMovL";
}

template<>
struct has_fixed_size<dobot_msgs_v3::srv::RelMovL>
  : std::integral_constant<
    bool,
    has_fixed_size<dobot_msgs_v3::srv::RelMovL_Request>::value &&
    has_fixed_size<dobot_msgs_v3::srv::RelMovL_Response>::value
  >
{
};

template<>
struct has_bounded_size<dobot_msgs_v3::srv::RelMovL>
  : std::integral_constant<
    bool,
    has_bounded_size<dobot_msgs_v3::srv::RelMovL_Request>::value &&
    has_bounded_size<dobot_msgs_v3::srv::RelMovL_Response>::value
  >
{
};

template<>
struct is_service<dobot_msgs_v3::srv::RelMovL>
  : std::true_type
{
};

template<>
struct is_service_request<dobot_msgs_v3::srv::RelMovL_Request>
  : std::true_type
{
};

template<>
struct is_service_response<dobot_msgs_v3::srv::RelMovL_Response>
  : std::true_type
{
};

}  // namespace rosidl_generator_traits

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__REL_MOV_L__TRAITS_HPP_
