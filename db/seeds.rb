Type.create! id: 1, name: "HTML"
Type.create! id: 2, name: "CSS"
Type.create! id: 3, name: "JAVASCRIPT"

Tag.create! name: "html",
            enclose: true,
            type_id: 1
Tag.create! name: "head",
            enclose: true,
            type_id: 1
Tag.create! name: "p",
            enclose: true,
            type_id: 1