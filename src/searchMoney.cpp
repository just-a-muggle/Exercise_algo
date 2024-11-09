#include <iostream>
#include <vector>
#include <random>


class coin
{
public:
    float weight;
    coin(float Weight = 0): weight(Weight){
        std::cout << "Coin inits finished 🌟" << std::endl;
    }
    ~coin(){}
};

class saving_pot
{
private:
    int Number;
    std::vector<coin> coins;
public:
    saving_pot()
    {
        int Num;
        std::cout << "Please input how many coins you want to put in: " ;
        std::cin >> Num;
        Number = Num;
        std::cout << "init saving pot" << std::endl;
        coins.resize(Number, coin(0));
        init_Coin();
        Create_radom_diffCoins();
    }
    ~saving_pot(){}
    void init_Coin()
    {
        float inputW;
        std::cout << "Please input weight of coins: ";
        std::cin >> inputW;
        coins.assign(Number, coin(inputW));
    }
    void Create_radom_diffCoins()
    {
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> dis(0, coins.size() - 1);

        int rand_index = dis(gen);

        float rand_weight;
        std::cout << "Input weight of random coins: ";
        std::cin >> rand_weight;
        coins.at(rand_index) = rand_weight;
    }
    int getSize() const 
    {
        return Number;
    }
    float get_coinsW(int i)const
    {
        return coins.at(i).weight;
    }

/////
    int findDifferentCoinIndex(int left, int right, float commonWeight) 
    {
        if (left == right) {
            return left; // 找到不同的硬币
        }

        int mid = left + (right - left) / 2;

        // 左半边的重量是否都是 commonWeight
        bool leftIsSame = true;
        for (int i = left; i <= mid; ++i) {
            if (coins[i].weight != commonWeight) {
                leftIsSame = false;
                break;
            }
        }

        if (!leftIsSame) {
            // 如果左半边有不同的硬币，递归查找左半边
            return findDifferentCoinIndex(left, mid, commonWeight);
        } else {
            // 否则在右半边查找
            return findDifferentCoinIndex(mid + 1, right, commonWeight);
        }
    }

    int findDifferentCoinIndex() 
    {
        if (coins.empty()) return -1;

        float commonWeight = coins[0].weight; // 假设第一个硬币的重量是公共重量
        return findDifferentCoinIndex(0, coins.size() - 1, commonWeight);
    }


};

int main()
{
    saving_pot pig_pot;

    int diffIndex = pig_pot.findDifferentCoinIndex();
    if (diffIndex != -1) {
        std::cout << "The index of the coin with different weight is: " << diffIndex << std::endl;
    } else {
        std::cout << "No different coin found." << std::endl;
    }


    std::cout << ">>SHOW VECTOR<<" << std::endl;
    for(int i = 0; i < pig_pot.getSize(); i ++)
    {
        std::cout << "[" << i << "]" << pig_pot.get_coinsW(i) << std::endl;
    }
}  
