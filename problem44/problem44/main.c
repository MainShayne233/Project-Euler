//
//  main.c
//  problem44
//
//  Created by Shayne Tremblay on 7/9/15.
//  Copyright (c) 2015 Open Sorcery. All rights reserved.
//

#include <stdio.h>

main(){
    
    int num;
    
    for (int i = 1; i <= 10; i += 1){
        num = i*(3*i-1)/2;
        printf("%d\n", num);
    }
}
