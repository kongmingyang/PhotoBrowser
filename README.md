# PhotoBrowser
一个简易的图片浏览器，只是为了满足目前项目所需，首饰仅支持缩放和双击还原，代码极其简单


//加载本地图片
-(instancetype)initWithImages:(NSArray<UIImage*>*)images WithIndex:(NSInteger)index;


//加载本地图片
-(instancetype)initWithimgUrl:(NSArray*)images WithIndex:(NSInteger)index;


初始化并加载本地图片
   ImagePreViewController *preview = [[ImagePreViewController alloc]initWithImages:datas WithIndex:index];
    [self.navigationController pushViewController:preview animated:YES];
    
    
    
初始化并加载网络图片
  ImagePreViewController *preview = [[ImagePreViewController alloc]initWithimgUrl:images WithIndex:tag];
    
    [self.navigationController pushViewController:preview animated:YES];
