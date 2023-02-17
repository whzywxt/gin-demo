package main

import (
	"fmt"
	"net/http"

	"github.com/EDDYCJY/go-gin-example/pkg/setting"
	"github.com/EDDYCJY/go-gin-example/routers"
)

// @title gin-demo API
// @version 0.0.1
// @description This is a gin blog example
// @securityDefinitions.apikey ApiKeyAuth
// @in header
// @name token
// @BasePath /
func main() {
    router := routers.InitRouter()

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
		Handler:        router,
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	s.ListenAndServe()

	// 第二种方式  ... endless 热更新是采取创建子进程后，将原进程退出的方式，这点不符合守护进程的要求
	// endless.DefaultReadTimeOut = setting.ReadTimeout
    // endless.DefaultWriteTimeOut = setting.WriteTimeout
    // endless.DefaultMaxHeaderBytes = 1 << 20
    // endPoint := fmt.Sprintf(":%d", setting.HTTPPort)

    // server := endless.NewServer(endPoint, routers.InitRouter())
    // server.BeforeBegin = func(add string) {
    //     log.Printf("Actual pid is %d", syscall.Getpid())
    // }

	// err := server.ListenAndServe()
    // if err != nil {
    //     log.Printf("Server err: %v", err)
    // }

	// 第三种方式 http.Server - Shutdown()
	// router := routers.InitRouter()

    // s := &http.Server{
    //     Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
    //     Handler:        router,
    //     ReadTimeout:    setting.ReadTimeout,
    //     WriteTimeout:   setting.WriteTimeout,
    //     MaxHeaderBytes: 1 << 20,
    // }

    // go func() {
    //     if err := s.ListenAndServe(); err != nil {
    //         log.Printf("Listen: %s\n", err)
    //     }
    // }()

    // quit := make(chan os.Signal)
    // signal.Notify(quit, os.Interrupt)
    // <- quit

    // log.Println("Shutdown Server ...")

    // ctx, cancel := context.WithTimeout(context.Background(), 5 * time.Second)
    // defer cancel()
    // if err := s.Shutdown(ctx); err != nil {
    //     log.Fatal("Server Shutdown:", err)
    // }

    // log.Println("Server exiting")
}