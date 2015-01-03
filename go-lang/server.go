package main
import (
    "fmt"
    "net/http"
    "os" 
)
func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "You just browsed page (if blank you're at the root): %s", r.URL.Path[1:])
}
func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":"+os.Getenv("HTTPPLATFORMPORT"), nil)
}