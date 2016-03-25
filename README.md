# WJAutoLayout
a simple auto size to view 自动布局

    [self demoOne];   // 父子视图对齐
    [self demoTwo];   // 子视图对子视图对齐
    [self demoThree]; // 单个和多个视图居中
    [self demoFour];  // 多个视图自动布局
   

- (void)demoOne{
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"子视图相对父视图对齐";
    label.font = [UIFont systemFontOfSize:12];
    label.backgroundColor = [UIColor grayColor];
    [WJAutoLayout sub:label t:74 l:10 h:30 r:10 sup:self.view];
  }

- (void)demoTwo{
    
    UILabel *label1 = [[UILabel alloc]init];
    label1.text = @"子视图1";
    label1.font = [UIFont systemFontOfSize:12];
    label1.backgroundColor = [UIColor grayColor];
    [WJAutoLayout sub:label1 t:114 l:10 h:30 w:50 sup:self.view];
    
    UILabel *label2 = [[UILabel alloc]init];
    label2.text = @"子视图2左对齐子视图1";
    label2.font = [UIFont systemFontOfSize:12];
    label2.backgroundColor = [UIColor grayColor];
    [WJAutoLayout sub:label2 t:114 l:10 h:30 w:130 sup:self.view];
    [WJAutoLayout view:label2 l:10 lV:label1];
    
  }

- (void)demoThree{
    
    UILabel *view1 = [[UILabel alloc]init];
    view1.text = @"居中";
    view1.textAlignment = NSTextAlignmentCenter;
    view1.backgroundColor = [UIColor grayColor];
    view1.frame = CGRectMake(0, 0, 150, 80);
    [WJAutoLayout sub:view1 centerToSup:self.view x:YES y:YES];
    
    UIView *view2 = [[UIView alloc]init];
    view2.backgroundColor = [UIColor grayColor];
    [WJAutoLayout sub:view2 t:114 r:10 h:50 w:50 sup:self.view];
    
    UIView *view3 = [[UIView alloc]init];
    view3.frame = CGRectMake(0, 0, 20, 20);
    view3.backgroundColor = [UIColor lightGrayColor];
    [WJAutoLayout sub:view3 centerToSup:view2 x:YES y:YES];
    
  }

- (void)demoFour{
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor grayColor];
    [WJAutoLayout sub:view b:10 l:10 h:180 r:10 sup:self.view];
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 12; i++) {
        UIButton *btn = [[UIButton alloc]init];
        btn.backgroundColor = [UIColor lightGrayColor];
        [array addObject:btn];
    }
    [WJAutoLayout horAndVerViews:array t:10 b:10 l:10 r:10 hs:20 vs:20 maxHC:4 ratio:0.5 sup:view];
    
  }

