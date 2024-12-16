#import "template.typ": *

#show: doc => template(doc)

// Cover

#let cover = () => {
	page(margin: (top: 0in, left: 0em, right: 0in))[
		#pad(top: 0.3in)[
			#align(center)[
				#text(size: 16pt)[_The officially unofficial programming manual_]
			]
		]

		#v(5.4in)

		#set text(size: 32pt, font: "Alfa Slab One", top-edge: "baseline")
		#set par(leading: 0em)
		#set heading(outlined: false)
		#pad(right: 1in)[
		#stack(dir: ttb, spacing: 0%)[
			#place(dx: 4.4in, dy: -1.5in)[#image("rustacean-flat-noshadow.svg", width: 3em)]
			#align(right)[= An Introduction To]
			#rect(width: 100%, fill: black)[
				#pad(y: 16pt, top: 46pt)[
					#align(right)[
						#heading()[
							#text(fill: white)[Programming]
						]
					]
				]
			]
			#align(right)[= With Rust]
		]
		]
	]
}

#cover()

// #set par(leading: 1em)
#show outline.entry.where(level: 1): it => strong(it)
#show outline.entry.where(level: 3): it => emph(it)
#outline(indent: 0.3in)

#pagebreak()

#counter(page).update(1)

#show heading.where(numbering: "1.", level: 1): it => {
	set text(size: 13pt)
	heading(numbering: none, outlined: false)[#it.body]
}

#set heading(numbering: "1.")

#set page(numbering: "1", number-align: right)

#set par(first-line-indent: 1in, spacing: 1em)


Hello world, this is a long ass freaking paragraph. Considering that this wraps, this is a good oppurtunity to check that this wraps correctly.

This is another one.

= First level heading

== Hello world

=== This is a third heading

This has `some code`

```js
console.log("Hello world!");
```

#figure(caption: "Some thing")[
	```rs
	pub fn main(): i32 {
		0
	}
	```
]

#figure(caption: "Hi")[
	$
	   x => 10
	$
]