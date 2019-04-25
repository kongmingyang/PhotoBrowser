//
//  ImagePreView.h
//  MyriadSchool_oc
//
//  Created by 55it on 2019/4/25.
//  Copyright © 2019年 55it. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImagePreView : UIImageView

-(void)previewImageWithLocalImages:(UIImage*)image;
-(void)previewWithimgUrl:(NSURL *)url;

@property (nonatomic, assign, readonly) BOOL isScaled;


- (void)eliminateScale; // 清除缩放


- (void)clear;
@end

NS_ASSUME_NONNULL_END
