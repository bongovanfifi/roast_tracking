#set page(
    paper:"a6",
    margin: (left: 0cm, right: 0.1cm, top: 0.2cm, bottom: 0.2cm))
// The margins have to be weird because of how it shows up on the Supernote A6 YMMV.
#set text(font: "New Computer Modern", size: 9pt)
#set grid(gutter: 0.2cm) 

#let field(label) = {
  [*#label:* #h(0.2em) #box(width: 1.3cm, height: 0.5em, stroke: (bottom: 0.3pt))]
}

#let misc(label) = {
  [*#label:* #h(0.2em)]
}

#grid(
  columns: 3,
  field("Room Temp"),
  field("Batch Number"),
)

#grid(
  columns: 3,
  field("Turn"),
  field("Yellow"),
  field("1st Crack"),
)

#table(
    columns: (0.5fr, 0.75fr, 0.75fr, 0.75fr, 2fr),
    inset: (x: 0.8em, y: 0.65em), 
    stroke: 0.4pt,
    align: center, 
    table.header(
        [*Min*], [*Temp*], [*Temp′*], [*Temp″*], [*Notes*]
    ),
    ..for i in range(1, 16) {
        (str(i), [], [], [], [])
    }
)

#grid(
  columns: 2,
  field("Weight Loss %"),
  field("Total Time"),
)

#misc("Notes")