//
//  ViewController.m
//  RamenTimer
//
//  Created by kunren10 on 2014/03/10.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [開始]ボタン押した時
- (IBAction)countDown:(id)sender {
    
    // 画面の初期化
    //self.lbTimer.text = @"03:00";
    
    self.lbTimer.text = @"01:00:000";
    
    // 背景色
    self.view.backgroundColor = [UIColor yellowColor];
    
//    // タイマー生成、開始 １秒後の実行
//    [NSTimer scheduledTimerWithTimeInterval:1.0    // 時間間隔
//                                     target:self   // タイマーの実際の処理の場所
//                                   selector:@selector(tickTimer:) // メソッド タイマーの実際の処理
//                                   userInfo:nil
//                                    repeats:YES];  // 繰り返し
    
    // タイマー生成、開始 １秒後の実行
    [NSTimer scheduledTimerWithTimeInterval:0.001    // 時間間隔
                                     target:self   // タイマーの実際の処理の場所
                                   selector:@selector(tickTimer:) // メソッド タイマーの実際の処理
                                   userInfo:nil
                                    repeats:YES];  // 繰り返し
    
}

// タイマー処理
- (void)tickTimer:(NSTimer *)timer{
    
    //NSLog(@"タイマー表示");
    
    // 時間書式の設定
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    //df.dateFormat = @"mm:ss";
    df.dateFormat = @"mm:ss:SSS";
    
    // 基準日時の設定 ３分を日付型に変換
    NSDate *dt = [df dateFromString:self.lbTimer.text];
    
    // description:説明
    //NSString *str = [dt description];
    
    // +0000 日本標準時になっていない グリニッジ標準時
    //NSLog(@"%@",[dt description]);
    
    // カウントダウン ３分
//    NSDate *dt2 = [NSDate dateWithTimeInterval:-1.0 // 基準となる時間間隔
//                                     sinceDate:dt];
    
    NSDate *dt2 = [NSDate dateWithTimeInterval:-0.010// 基準となる時間間隔
                                     sinceDate:dt];
    
    self.lbTimer.text = [df stringFromDate:dt2];
    
//    // 終了判定 3分が00:00になったら isEqualToString:文字の比較
//    if ([self.lbTimer.text isEqualToString:@"00:00"] == YES) {
//        
//        // バックアップ背景色の変更
//        self.view.backgroundColor = [UIColor redColor];
//        
//        // タイマーの停止
//        [timer invalidate];
//    }
    
    // 終了判定 3分が00:00になったら isEqualToString:文字の比較
    if ([self.lbTimer.text isEqualToString:@"00:00:000"] == YES) {
        
        // バックアップ背景色の変更
        self.view.backgroundColor = [UIColor redColor];
        
        // タイマーの停止
        [timer invalidate];
    }
    
}
@end
