# LGscrollView
scrollView 循环滚动
实现uiscrollView的无限循环效果，使用非常简单，直接拷贝LGScrollView.m和LGScrollView.h文件到项目工程中，然后初始化：


    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
    [imagesArray addObject:[UIImage imageNamed:@"1.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"2.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"3.jpg"]];
    [imagesArray addObject:[UIImage imageNamed:@"4.jpg"]];
    
    LGScrollView *showsView = [[LGScrollView alloc] initWIthFrame:CGRectMake(0, 0, self.view.frame.size.width, self.showView.frame.size.height) showImages:imagesArray];
    
    [self.showView addSubview:showsView];
    
通过实现代理方法，可以知道当前的图片位置等信息，详情请下载查看。
    
