// compress_logs.go

package main

import (
    "archive/zip"
    "fmt"
    "io/ioutil"
    "os"
    "path/filepath"
)

func main() {
    logsDir := "./logs"
    zipFile := "logs.zip"

    err := zipLogs(logsDir, zipFile)
    if err != nil {
        fmt.Println("Error:", err)
    } else {
        fmt.Println("Logs compressed successfully!")
    }
}

func zipLogs(logsDir, zipFile string) error {
    files, err := ioutil.ReadDir(logsDir)
    if err != nil {
        return err
    }

    outFile, err := os.Create(zipFile)
    if err != nil {
        return err
    }
    defer outFile.Close()

    zipWriter := zip.NewWriter(outFile)
    defer zipWriter.Close()

    for _, file := range files {
        filePath := filepath.Join(logsDir, file.Name())

        fileData, err := ioutil.ReadFile(filePath)
        if err != nil {
            return err
        }

        fileWriter, err := zipWriter.Create(file.Name())
        if err != nil {
            return err
        }

        _, err = fileWriter.Write(fileData)
        if err != nil {
            return err
        }
    }

    return nil
}

