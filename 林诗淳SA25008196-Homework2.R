#任务一在RStudio中开启R script新文件，通过CRAN库安装tidyverse包，按照规范，写一段代码，完成查找包、安装包和查看包。
# 1. 查找包
cran_packages <- available.packages()

# 2. 安装包
install.packages(pkgs = "tidyverse", repos = "https://cran.rstudio.com/")

# 3. 加载包
library(tidyverse)

# 4. 查看包
# 查看包版本
packageVersion("tidyverse")
# 查看包安装位置和版本
installed.packages()["tidyverse", c("Version", "LibPath")]
# 打开包帮助文档（可视化查看）
help(package = "tidyverse")

#任务二写一段R脚本，自定义一个函数，检查随机向量rnorm(n = 10, mean= 35, sd = 10）中的每个值是否高于阈值35（可以用for循环，也可用apply()家族）
# 设置随机数种子以确保结果可重复
set.seed(123) 
# 生成符合正态分布的随机向量
random_vector <- rnorm(n = 10, mean = 35, sd = 10)  

# 设定阈值
threshold <- 35

# 使用 for 循环检查每个值是否高于阈值
for (value in random_vector) {
  if (value > threshold) {
    print(paste(value, "高于阈值"))
  } else {
    print(paste(value, "不高于阈值"))
  }
}