package main

import (
	"fmt"
	"log"
	"time"

	"github.com/radovskyb/watcher"
)

func main() {
	w := watcher.New()

	// Only notify rename and move events.
	// w.FilterOps(watcher.Rename, watcher.Move)

	// Only files that match the regular expression during file listings
	// will be watched.
	// r := regexp.MustCompile("^abc$")
	// w.AddFilterHook(watcher.RegexFilterHook(r, false))

	go func() {
		for {
			select {
			case event := <-w.Event:
				printEvent(event)
			case err := <-w.Error:
				log.Fatalln(err)
			case <-w.Closed:
				return
			}
		}
	}()

	// Watch this folder for changes.
	if err := w.AddRecursive("."); err != nil {
		log.Fatalln(err)
	}

	fmt.Println("Watching for changes")

	// Start the watching process - it'll check for changes every 100ms.
	if err := w.Start(time.Millisecond * 100); err != nil {
		log.Fatalln(err)
	}
}

func printEvent(event watcher.Event) {
    fmt.Printf("%v  %v\n", event.Op, event.Path) // Print the event's info.
}
