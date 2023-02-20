module github.com/EDDYCJY/go-gin-example

go 1.18

require (
	github.com/360EntSecGroup-Skylar/excelize v1.4.1
	github.com/astaxie/beego v1.10.1
	github.com/boombuler/barcode v1.0.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/gin-gonic/gin v1.8.2
	github.com/go-ini/ini v1.67.0
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0
	github.com/gomodule/redigo v1.8.9
	github.com/jinzhu/gorm v1.9.16
	github.com/robfig/cron v1.2.0
	github.com/swaggo/files v1.0.0
	github.com/swaggo/gin-swagger v1.2.0
	github.com/swaggo/swag v1.8.10
	github.com/tealeg/xlsx v1.0.5
	github.com/unknwon/com v1.0.1
)

require (
	github.com/KyleBanks/depth v1.2.1 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.6 // indirect
	github.com/go-openapi/jsonreference v0.20.2 // indirect
	github.com/go-openapi/spec v0.20.8 // indirect
	github.com/go-openapi/swag v0.22.3 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.11.2 // indirect
	github.com/go-sql-driver/mysql v1.7.0 // indirect
	github.com/goccy/go-json v0.10.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826 // indirect
	github.com/pelletier/go-toml/v2 v2.0.6 // indirect
	github.com/ugorji/go/codec v1.2.9 // indirect
	golang.org/x/crypto v0.6.0 // indirect
	golang.org/x/image v0.5.0 // indirect
	golang.org/x/net v0.7.0 // indirect
	golang.org/x/sys v0.5.0 // indirect
	golang.org/x/text v0.7.0 // indirect
	golang.org/x/tools v0.6.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace (
	github.com/EDDYCJY/go-gin-example/conf => c:/www/code/go-gin-example/conf
	github.com/EDDYCJY/go-gin-example/docs => c:/www/code/go-gin-example/docs
	github.com/EDDYCJY/go-gin-example/middleware => c:/www/code/go-gin-example/middleware
	github.com/EDDYCJY/go-gin-example/middleware/jwt => c:/www/code/go-gin-example/middleware/jwt
	github.com/EDDYCJY/go-gin-example/models => c:/www/code/go-gin-example/models
	github.com/EDDYCJY/go-gin-example/pkg/app => c:/www/code/go-gin-example/pkg/app
	github.com/EDDYCJY/go-gin-example/pkg/e => c:/www/code/go-gin-example/pkg/e
	github.com/EDDYCJY/go-gin-example/pkg/export => c:/www/code/go-gin-example/pkg/export
	github.com/EDDYCJY/go-gin-example/pkg/file => c:/www/code/go-gin-example/pkg/file
	github.com/EDDYCJY/go-gin-example/pkg/gredis => c:/www/code/go-gin-example/pkg/gredis
	github.com/EDDYCJY/go-gin-example/pkg/logging => c:/www/code/go-gin-example/pkg/logging
	github.com/EDDYCJY/go-gin-example/pkg/qrcode => c:/www/code/go-gin-example/pkg/qrcode
	github.com/EDDYCJY/go-gin-example/pkg/service => c:/www/code/go-gin-example/pkg/service
	github.com/EDDYCJY/go-gin-example/pkg/service/auth_service => c:/www/code/go-gin-example/pkg/service/auth_service
	github.com/EDDYCJY/go-gin-example/pkg/service/tag_service => c:/www/code/go-gin-example/pkg/service/tag_service
	github.com/EDDYCJY/go-gin-example/pkg/service/article_service => c:/www/code/go-gin-example/pkg/service/article_service
	github.com/EDDYCJY/go-gin-example/pkg/setting => c:/www/code/go-gin-example/pkg/setting
	github.com/EDDYCJY/go-gin-example/pkg/util => c:/www/code/go-gin-example/pkg/util
	github.com/EDDYCJY/go-gin-example/routers => c:/www/code/go-gin-example/routers
	github.com/EDDYCJY/go-gin-example/routers/api => c:/www/code/go-gin-example/routers/api
)
