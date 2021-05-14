void swap(int &a, int &b) {
    int c = a^b;
    a = c^a;
    b = c^b;
}