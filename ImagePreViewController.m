//
//  ImagePreViewController.m
//  MyriadSchool_oc
//
//  Created by 55it on 2019/2/28.
//  Copyright © 2019年 55it. All rights reserved.
//

#import "ImagePreViewController.h"
#import "ImagePreView.h"
@interface ImagePreViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong)UIScrollView* scrollView;
@property (nonatomic,strong)NSMutableArray * images;

@end

@implementation ImagePreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLb.text = @"预览";
    self.scrollView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.scrollView];
}
-(instancetype)initWithImages:(NSArray<UIImage*>*)images WithIndex:(NSInteger)index{

    self = [super init];


       if (self) {
       
            for (int i =0; i<images.count; i++) {
              
                ImagePreView *preview = [[ImagePreView alloc]init];
                [preview previewImageWithLocalImages: images[i]];
 
                [self.scrollView addSubview:preview];
                [self.scrollView setupAutoContentSizeWithRightView:preview rightMargin:0]; preview.whc_LeftSpace(i*SCREEN_WIDTH).whc_TopSpace(0).whc_Width(SCREEN_WIDTH).whc_Height(SCREEN_HEIGHT);
           
            
            }
    [self.scrollView setContentOffset:CGPointMake(index*SCREEN_WIDTH, 0) animated:YES];
       }
    
   
    return self;
    
}
-(instancetype)initWithimgUrl:(NSArray*)images  WithIndex:(NSInteger)index{
    self = [super init];

    if (self) {
        [self.images addObjectsFromArray:images];
        
        for (int i =0; i<images.count; i++) {
            ImagePreView *preview = [[ImagePreView alloc]init];
            [preview previewWithimgUrl:[NSURL URLWithString:self.images[i]]];
            
            [self.scrollView addSubview:preview];
            [self.scrollView setupAutoContentSizeWithRightView:preview rightMargin:0];
            preview.whc_LeftSpace(i*SCREEN_WIDTH).whc_TopSpace(0).whc_Width(SCREEN_WIDTH).whc_Height(SCREEN_HEIGHT);
        }
       [self.scrollView setContentOffset:CGPointMake(index*SCREEN_WIDTH, 0) animated:YES];
    }
    
    return self;
    
}

-(UIScrollView *)scrollView{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        _scrollView.delegate = self;
        _scrollView.pagingEnabled = YES;
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}

- (NSMutableArray *)images{
    if (_images == nil) {
        _images = [NSMutableArray array];
    }
    return _images;
}
@end
