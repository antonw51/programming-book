#let template(doc) = {
	set page(paper: "a4")
	set text(size: 13pt, font: "Noto Serif")

	set math.equation(numbering: "(1.)")

	show heading.where(level: 1): it => {
		set text(font: "Alfa Slab One")
		it
	}

	show heading.where(level: 2): it => {
		smallcaps(it)
	}

	show raw: it => {
		box(it, fill: luma(245), outset: (bottom: 4pt), inset: (x: 2pt))
	}
	
	show raw.where(block: true): it => {
		block(fill: luma(245), outset: (bottom: 4pt))[#it]
	}

	show figure.caption: it => {
		set text(size: 12pt)
		emph(it)
	}

	doc
}