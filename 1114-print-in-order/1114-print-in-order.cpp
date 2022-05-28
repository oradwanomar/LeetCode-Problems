class Foo {
private:
    std::atomic<int> i = 0;
public:
    Foo() {

    }

    void first(function<void()> printFirst) { 
        while (i != 0) {
            std::this_thread::yield();
        }
        // printFirst() outputs "first". Do not change or remove this line.
        printFirst();
        i.fetch_add(1);
    }

    void second(function<void()> printSecond) {
        while (i != 1) {
            std::this_thread::yield();
        }
        // printFirst() outputs "second". Do not change or remove this line.
        printSecond();
        i.fetch_add(1);
    }

    void third(function<void()> printThird) {
        while (i != 2) {
            std::this_thread::yield();
        }
        // printFirst() outputs "third". Do not change or remove this line.
        printThird();
        i.fetch_add(1);
    }
};