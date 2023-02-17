# gin blog demo

`go version go1.18.9 windows/amd64`

## HTTP 应用
day01

1. gin 搭建 Blog API
2. 使用JWT鉴权

day02

3. 简单的文件日志记录
4. 优雅的重启服务
5. 增加 Swagger
6. 定制 GORM Callbacks



## conf

拷贝并修改配置文件
`cp app.ini.default app.ini`

## packages

- gin `go get -u github.com/gin-gonic/gin` Golang 的一个微框架，性能极佳
- com `go get -u github.com/unknwon/com` 一个小而美的工具包
- gorm `go get -u github.com/jinzhu/gorm` 对开发人员友好的 ORM 框架
- driver `go get -u github.com/go-sql-driver/mysql`
- validation `go get -u github.com/astaxie/beego/validation` 采用的 beego 的表单验证库
- jwt `go get -u github.com/dgrijalva/jwt-go` 身份校验

## database

```
CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签管理';

CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT '标签ID',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT '' COMMENT '简述',
  `content` text,
  `created_on` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(255) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章管理';

CREATE TABLE `blog_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '账号',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `blog_auth` (`id`, `username`, `password`) VALUES (null, 'test', 'test123456');
```

## 添加 Swagger

安装 swag

```
$ go install github.com/swaggo/swag/cmd/swag@latest
```

验证是否安装成功

```
$ swag -v
swag version v1.8.10
```

安装 gin-swagger

```
$ go get -u github.com/swaggo/gin-swagger@v1.2.0
$ go get -u github.com/swaggo/files
$ go get -u github.com/alecthomas/template
```

编写 API 注释，可参考 swag 语法

## Swagger API 增加鉴权(auth)字段

在 main 入口文件增加全局配置，`Header`头里`token`字段，可修改

```
// @title gin-demo API
// @version 0.0.1
// @description This is a gin blog example
// @securityDefinitions.apikey ApiKeyAuth
// @in header
// @name token
// @BasePath /
```

在具体的 handler 里添加注释

```
// @Security ApiKeyAuth
```

访问 http://127.0.0.1:8080/swagger/index.html

可以直接使用开始调试了^\_^
