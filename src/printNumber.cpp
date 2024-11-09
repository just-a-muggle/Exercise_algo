#include <iostream>
#include <queue>
#include <vector>


template <typename T>
class CircularQueue{
private:
    std::vector<T> data;
    int head;
    int tail;
    int size;
public:
    CircularQueue(int capacity): data(capacity), head(0), tail(0), size(0){
    }
    bool isEmpty() const{
        return size == 0;
    }
    bool isFull() const{
        return size == data.size();
    }
    void enqueue(T value){
        if(isFull()){
            std::cout << "Queue is full" << std::endl;
            return;
        }
        data[tail] = value;
        tail = (tail + 1) % data.size();
        size++;
    }
    T dequeue(){
        if(isEmpty()){
            std::cout << "Queue is empty" << std::endl;
            return T();
        }
        T value = data[head];
        head = (head + 1) % data.size();
        size--;
        return value;
    }
    T front() const{
        if(isEmpty()){
            std::cout << "Queue is empty" << std::endl;
            return T();
        }
        return data[head];
    }

    void Circular_printAll(int round) {
        if(isEmpty()){
            std::cout << "Oops the queue is empty" << std::endl;
            return;
        }
        std::string flag;
        std::cout << "Choose move to right or left";
        if((std::cin >> flag) && flag== "right")
        {
            for(int r = 0; r < round; r ++){
                int index = head;
                for(int i = 0; i < size; i++)
                {
                    std::cout << data[index] << " ";
                    index = (index + 1) % data.size();
                }
                std::cout << std::endl;
                head = (head - 1 + data.size()) % data.size();
                tail = (tail - 1 + data.size()) % data.size();
            }
        }
        else if(flag== "left")
        {
            for(int r = 0; r < round; r ++){
                int index = head;
                for(int i = 0; i < size; i++)
                {
                    std::cout << data[index] << " ";
                    index = (index + 1) % data.size();
                }
                std::cout << std::endl;
                head = (head + 1) % data.size();
                tail = (tail + 1) % data.size();
            }
        }
    }

    int getSize() const{
        return size;
    }
    void batch_init() {
        for(int i = 0; i < data.size(); i++) 
        {
            T input;
            std::cout << "init member of queue [" << i + 1 << "]";
            std::cin >> input;
            enqueue(input);
        }
    }


};

int main()
{
    CircularQueue<int> q(6);
    q.batch_init();
    q.Circular_printAll(6);
}
