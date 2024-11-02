# flutter_getx_template
flutter getx template

## 当前版本  
flutter：3.24.1  
Dart：3.5.1  
更新日期：2024-11-1  

## 过程记录  
### 1. 在github上创建一个库。 
直接在 github 的网站上新建一个库。  
然后 clone 到本地。  
### 2. 新建一个 flutter application。
建议使用 Android Studio 创建，可以设置更多的App属性。  
也可以使用 visual studio code 创建。  
或者直接用命令行创建。   
### 3. 将 flutter application 创建的文件全部拷贝到 github 库的本地克隆目录。  
```  
+  【分支Step-0】
```   
拷贝所有文件，然后提交到github库里，二者合一，完成初始化。   
编译工程，程序正常启动。  
### 4. 工程lib目录下的目录结构,调整目录结构    
pages 目录是页面文件，里面按业务模块再细分子目录。  
common 目录是公共目录，放全局使用的内容。  
common_widgets 目录是公共widget，放与业务无关的公共widget。  
common_widgets_of_bs 目录是业务相关的widget。  
config  目录是配置相关的内容。   
api 目录是使用的api接口。  
common\i18n 是国际化多语言相关内容。  
common\theme 是应用主题相关内容。  
common\global 是全局类的目录。  
common\utils 是工具类的目录。  
common\routers 是路由相关内容。  
### 5. 引入 GetX  
- 新建文件pages\home\home_page.dart，将main.dart文件中的MyHomePage放到home_page.dart中并改名为HomePage。  
- 新建文件common\global\app_global.dart，新建AppGlobal类，并创建init方法。  
- 修改main.dart文件中的main()方法。  
