#ifndef DLA_INTERFACE_UTIL_MATH_H
#define DLA_INTERFACE_UTIL_MATH_H

#include <cstddef>

namespace dla_interface {
  namespace util {

    // Return the round-up result of the a / b division.
    // IntType has to be an integer type, a >= 0 and b > 0.
    template <class IntType>
    inline IntType ceilDiv(IntType a, IntType b) {
      return (a + b - 1) / b;
    }

    // Returns a * b.
    // Precondition: a >= 0, b >= 0.
    inline std::size_t multSize(std::size_t a, std::size_t b) {
      return a * b;
    }
  }
}

#endif  // DLA_INTERFACE_UTIL_MATH_H
