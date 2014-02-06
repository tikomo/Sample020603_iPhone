//
//  ViewController.m
//  Sample020603
//
//  Created by tikomo on 2014/02/06.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

#import "Food.h"

@interface ViewController () {
    
    // Foodクラスのインスタンスを入れておく
    Food *foodObj;
    
    // 選んだ料理を入れておく
    NSString *theFood;
    
}

@property (weak, nonatomic) IBOutlet UILabel *label1;
- (IBAction)button1_onClick:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *button1;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    foodObj = [[Food alloc] initWithFoods:@[@"111", @"222", @"333", @"444" ,@"555"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1_onClick:(UIButton *)sender {
    
    // 料理を選ぶ
    theFood = [foodObj choiceFood];
    
    _label1.text = [NSString stringWithFormat:@"%@", theFood];
    
}
@end
