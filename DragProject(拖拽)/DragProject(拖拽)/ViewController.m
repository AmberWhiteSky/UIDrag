//
//  ViewController.m
//  DragProject(拖拽)
//
//  Created by AmberWhiteSky on 15/10/3.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer  *pan =[[UIPanGestureRecognizer  alloc] initWithTarget:self action:@selector(blueView:)];
    [self.blueView  addGestureRecognizer:pan];
}


-(void)  blueView: (UIPanGestureRecognizer  *)  pan{
    
    
    switch (pan.state) {
            //开始拖拽
        case UIGestureRecognizerStateBegan:
            
            break;
            
            //拖拽结束
        case  UIGestureRecognizerStateEnded:
            
            break;
            
            //在拖拽过程中
        case  UIGestureRecognizerStateChanged:
            
            break;
            
        default:
            break;
    }
    
    
    //相对起点挪动的距离
    CGPoint   translation =[pan  translationInView:pan.view];
    CGPoint  center =pan.view.center;
    center.x+= translation.x;
    center.y+= translation.y;
    pan.view.center =center;
    
    //清空之前挪动的距离
    [pan setTranslation:CGPointZero inView:pan.view];
    
    NSLog(@"panview%@",NSStringFromCGPoint(translation));
    
}

@end
