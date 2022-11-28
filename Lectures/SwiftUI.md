## SwiftUI


> SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.

</br>

### References
* [SwiftUI](https://developer.apple.com/xcode/swiftui/)

</br>


SwiftUI uses a declarative syntax, so you can simply state what your user interface should do. For example, you can write that you want a list of items consisting of text fields, then describe alignment, font, and color for each field. Your code is simpler and easier to read than ever before, saving you time and maintenance.

```
import SwiftUI

struct AlbumDetail: View {
	var album: Album

	var body: some View {
		List(album.songs) { song in 
			HStack {
				Image(album.cover)
				VStack(alignment: .leading) {
					Text(song.title)
					Text(song.artist.name)
						.foregroundStyle(.secondary)
				}
			}
		}
	}
}
```
