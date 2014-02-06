//
//  Food.m
//  Sample020603
//
//  Created by tikomo on 2014/02/06.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "Food.h"

@implementation Food {
    
    
}

// NSObject の initをオーバーライドする
- (id) init {
    
    self = [self initWithFoods:@[]];
    return self;
    
}

// イニシャライザ
- (id) initWithFoods:(NSArray *)entryFoods {
    
    // スーパークラスのinitで初期化済みのselfを取得する
    self = [super self];
    
    // foodsの値を設定する
    if (entryFoods.count <= 0) {
        
        foods = @[@"AAA", @"BBB", @"CCC", @"DDD", @"EEE"];
        
    } else {
        
        foods = [[NSArray alloc] initWithArray:entryFoods];
        
    }
    
    _counter = 0;
    
    return self;
}

// 料理の選択
- (NSString *)choiceFood {
    
    // 実行回数をカウントアップ
    _counter++;
    
    // 配列からランダムに選ぶ
    NSInteger pos = arc4random() % (foods.count);
    
    // 選んだ食事を返す
    return foods[pos];
    
}

@end
