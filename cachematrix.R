makeCacheMatri<-function(x=matrix()){
  s<-NULL ##将缓存中的值赋值为零
  set<-function(y){ 
    x<<-y ##用于自己设置需处理的矩阵
    s<<-NULL
  }
  get<-function(){
    x ##获取需处理矩阵
  }
  setsolve<-function(solve){
    s<<-solve ##将没有在缓存中的逆矩阵保存到中
  }
  getsolve<-function(){
    s ##获取缓存中的逆矩阵
  }
  b<<-list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
  ##函数列表
}
cacheSolve<-function(x,b,...){
  s<-b$getsolve() ##将缓存中s的值赋值为s
  if(!is.null(s)){ ##判断是否为空
    message("getting cached data...") ##提示正在获取缓存
    return(s)##返回缓存中的逆矩阵
  }
  data<-b$get()##缓存中没有逆矩阵的话,获取需要处理的矩阵的值
  s<-solve(data,...)##计算逆矩阵
  b$setsolve(s)##将逆矩阵存入缓存
  s##输出逆矩阵
}
