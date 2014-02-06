//
//  Food.h
//  Sample020603
//
//  Created by tikomo on 2014/02/06.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject {
    
    // 配列
    NSArray *foods;
    
}

// 実行回数
@property (readonly) int counter;

// イニシャライザ
- (id) initWithFoods:(NSArray *)entryFoods;

// 料理の選択
- (NSString *)choiceFood;

@end
