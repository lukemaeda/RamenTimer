//
//  ViewController.h
//  RamenTimer
//
//  Created by kunren10 on 2014/03/10.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic)IBOutlet UILabel* lbTimer;

- (IBAction)countDown:(id)sender;

@end
