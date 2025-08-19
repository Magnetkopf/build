# HMCL-bypass-build
我没钱给某个四方块公司 呜呜

使用GitHub Action自动打包绕过登录限制的HMCl

## 原理

`./HMCL/src/main/java/org/jackhuang/hmcl/ui/account/AccountListPage.java`

false就是不要登录，只要一开始就声明false那么就无须担心登录验证咯

~~~java
static final BooleanProperty RESTRICTED = new SimpleBooleanProperty(true);
//改成如下
static final BooleanProperty RESTRICTED = new SimpleBooleanProperty(false);
~~~

## 声明

俺不会Java，gradlew也是第一次用，大概会有很多不符合Java开发者的代码习惯

仅供学习研究，请务必支持正版和官方版HMCL
