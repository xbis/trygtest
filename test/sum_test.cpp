
#include "../src/sum.h"
#include "gtest/gtest.h"

TEST(Sample, tc01) {
    ASSERT_EQ(0, sum(0, 0));
    ASSERT_EQ(0xffff, sum(0x7fff, 0x8000));
}

