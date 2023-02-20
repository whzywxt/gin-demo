package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println(time.Unix(1650263305, 0).Format("2006-01-02 15:04:05"))
	// f, err := os.Create(export.GetExcelFullPath() + "test.csv")
	// if err != nil {
	// 	panic(err)
	// }
	// defer f.Close()

	// f.WriteString("\xEF\xBB\xBF")

	// w := csv.NewWriter(f)
	// data := [][]string{
	// 	{"1", "test1", "test1-1中文"},
	// 	{"2", "test2", "test2-1汉字"},
	// 	{"3", "test3", "test3-1大地"},
	// }

	// w.WriteAll(data)
}
