local ls = require("luasnip")

ls.add_snippets("cpp", {
    ls.parser.parse_snippet("te", "#include<iostream>\nusing namespace std;\n${0}\nint main() {\n\t${1}\n\treturn 0;\n}"),
})
