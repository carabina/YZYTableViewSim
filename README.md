# YZYTableViewSim
分离出UITableView各种代理方法,减少Controller里面的代码

### 对分离出的代码做封装以供自己使用
##### 参考链接
[不要把ViewController变成处理tableView的"垃圾桶"](http://www.jianshu.com/p/1e53f09d0f21)

[控制器瘦身之Tableview抽取](http://www.jianshu.com/p/76fc68fe34f1)


### 使用方法

```
-(YZYTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[YZYTableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.yzyDelegate = [YZYTableViewDelegate initialDelegate];
        
        _tableView.yzyDataSource = [YZYTableViewDataSource dataSourceWithDataArray:self.dataArray configueCellBlock:^(id cell, id model) {
            
            [cell configueWith:model];
        }];
    }
    return _tableView;
}
```

