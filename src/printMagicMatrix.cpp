#include <iostream>
#include <vector>

class MagicMatrix {
private:
    int Size;
    int beginNum;
    std::vector<std::vector<int>> matrix_Data;

public:
    MagicMatrix() {
        std::cout << "Input the size of the matrix: ";
        std::cin >> Size;
        std::cout << "Input the beginning number: ";
        std::cin >> beginNum;

        // 初始化矩阵
        matrix_Data.resize(Size, std::vector<int>(Size, 0));
        std::cout << "The Matrix initialization finished 🌟" << std::endl;
    }

    ~MagicMatrix() {}

    // 递归函数：填充矩阵的一层
    void fillLayer(int top, int bottom, int left, int right, int& currentNum) { // 终止递归条件
        if (top > bottom || left > right) {
            return; 
        }
        // 从左到右填充上边
        for (int i = left; i <= right; ++i) {
            matrix_Data[top][i] = currentNum++;
        }

        // 从上到下填充右边
        for (int i = top + 1; i <= bottom; ++i) {
            matrix_Data[i][right] = currentNum++;
        }

        // 从右到左填充下边
        if (top < bottom) { // 避免单行重复填充
            for (int i = right - 1; i >= left; --i) {
                matrix_Data[bottom][i] = currentNum++;
            }
        }

        // 从下到上填充左边
        if (left < right) { // 避免单列重复填充
            for (int i = bottom - 1; i > top; --i) {
                matrix_Data[i][left] = currentNum++;
            }
        }

        // 递归填充内层
        fillLayer(top + 1, bottom - 1, left + 1, right - 1, currentNum);
    }

    void SetupMatrix() {
        int currentNum = beginNum;
        fillLayer(0, Size - 1, 0, Size - 1, currentNum); // 从最外层开始填充

        // 打印矩阵
        for (int i = 0; i < Size; i++) {
            for (int j = 0; j < Size; j++) {
                std::cout << matrix_Data[i][j] << "\t";
            }
            std::cout << std::endl;
        }
    }
};

int main() {
    MagicMatrix mm;
    mm.SetupMatrix();
    return 0;
}

//
//  1  2  3  4  5  6  7   
//  24 25 26 27 28 29 8
//  23 40 41 42 43 30 9
//  22 39 48 49 44 31 10
//  21 38 47 46 45 32 11
//  20 37 36 35 34 33 12
//  19 18 17 16 15 14 13  
//            