#iOS_Lib_OC  github
###分段选择控制器<br>
`https://github.com/zhuyunfeng1224/XHSegmentController
##分段导航器
1.HJSegementController
###导航HJNavigationController
A隐藏B不隐藏 出现返回的时候导航栏消失的bug
```
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
2.HJSegMentView  -- 个人中心类型



