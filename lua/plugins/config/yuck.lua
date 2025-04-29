return {
    {

        "elkowar/yuck.vim",
    },
    {
        "eraserhd/parinfer-rust",
        build = "cargo build --release",
        config = function ()
            -- defaults: 0010
            vim.g.yuck_align_multiline_strings = 0
            vim.g.yuck_align_subforms = 0
            vim.g.yuck_align_keywords = 1
            vim.g.yuck_lisp_indentation = 0
        end
    }
}
