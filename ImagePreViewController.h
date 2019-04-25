//
//  ImagePreViewController.h
//  MyriadSchool_oc
//
//  Created by 55it on 2019/2/28.
//  Copyright © 2019年 55it. All rights reserved.
//

#import "RepairBaseController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImagePreViewController : RepairBaseController
//加载本地图片
-(instancetype)initWithImages:(NSArray<UIImage*>*)images WithIndex:(NSInteger)index;
//加载本地图片
-(instancetype)initWithimgUrl:(NSArray*)images WithIndex:(NSInteger)index;
@property (nonatomic, assign, readonly) BOOL isScaled;
@end

NS_ASSUME_NONNULL_END
