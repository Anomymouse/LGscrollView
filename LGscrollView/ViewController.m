//
//  ViewController.m
//  LGscrollView
//
//  Created by gujianming on 5/28/15.
//  Copyright (c) 2015 jamy. All rights reserved.
//

#import "ViewController.h"

#import "LGScrollView.h"

@interface ViewController ()
{
    LGScrollView *showScrollView;
}
@property (weak, nonatomic) IBOutlet UIView *showView;
- (IBAction)start;
- (IBAction)stop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
    [imagesArray addObject:[UIImage imageNamed:@"1.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"2.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"3.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"4.jpg"]];
    
    LGScrollView *showsView = [[LGScrollView alloc] initWIthFrame:CGRectMake(0, 0, self.view.frame.size.width, self.showView.frame.size.height) showImages:imagesArray];
    
    [self.showView addSubview:showsView];
    
    showScrollView = showsView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)resizeImageWith:(NSString *)name
{
    UIImage *oldImage = [UIImage imageNamed:name];
    return [[UIImage alloc] stretchableImageWithLeftCapWidth:oldImage.size.width topCapHeight:oldImage.size.height];
}

- (IBAction)start {
    [showScrollView start];
}

- (IBAction)stop {
    [showScrollView stop];
}
@end
