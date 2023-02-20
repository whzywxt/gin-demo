package main

import (
	"fmt"
	"log"
	"time"

	"github.com/robfig/cron"

	"github.com/EDDYCJY/go-gin-example/models"
)

func main() {
	log.Println("Starting...")

	c := cron.New()
	c.AddFunc("* * * * * *", func() {
		log.Println("Run models.CleanAllTag...")
		models.CleanAllTag()
	})
	c.AddFunc("* * * * * *", func() {
		log.Println("Run models.CleanAllArticle...")
		models.CleanAllArticle()
	})

	c.Start()

	t1 := time.NewTimer(time.Second * 10)
	for {
		select {
		case v:=<-t1.C:
			fmt.Println(v)
			t1.Reset(time.Second * 10)
		}
	}
}