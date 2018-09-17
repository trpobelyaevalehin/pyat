#define CTEST_MAIN

#include <ctest.h>
#include "pyatnashki.h"

CTEST(win_check, correct_win_check)
{
    int arr[4][4];
    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++)
            arr[i][j] = i * 4 + j + 1;
    bool result = winChecking(arr);
    ASSERT_TRUE(result);
}

CTEST(win_check, incorrect_win_check)
{
    int arr[4][4];
    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++)
            arr[i][j] = 3;
    bool result = winChecking(arr);
    ASSERT_FALSE(result);
}

int main(int argc, const char** argv)
{
    return ctest_main(argc, argv);
}
