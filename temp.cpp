//
//  temp.cpp
//  AlgorithmStudy1213
//
//  Created by 현은백 on 2022/02/17.
//

#include <stdio.h>
#include <iostream>
#include <math.h>

using namespace std;
int main() {
    int n;
    std::cin >> n;
    int sum = 0;
    
    for(int i = 1; i<=n; i++) {
        for(int j = 1; j<= int(sqrt(i)); j++) {
            if(j == 1) { continue; }
            if(i % j == 0) {
                if(j != i / j) {
                    sum += i / j;
                }
                sum += j;
            }
        }
    }
    cout<<sum % 1000000;
}

