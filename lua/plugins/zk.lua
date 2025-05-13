return {
    "zk-org/zk-nvim",
    config = function()
        require("zk").setup({
            picker = "telescope",
            lsp = {
                -- `config` is passed to `vim.lsp.start_client(config)`
                config = {
                    cmd = { "zk", "lsp" },
                    name = "zk",
                    -- on_attach = ...
                    -- etc, see `:h vim.lsp.start_client()`
                },

                -- automatically attach buffers in a zk notebook that match the given filetypes
                auto_attach = {
                    enabled = true,
                    filetypes = { "markdown" },
                },
            },

        })
        vim.keymap.set("n", "<leader>zn", "<Cmd>ZkNew<CR>")
        vim.keymap.set("v", "<leader>zn", ":'<,'>ZkNewFromTitleSelection<CR>")
        vim.keymap.set("n", "<leader>zf", "<Cmd>ZkNotes<CR>")
        vim.keymap.set("n", "<leader>zb", "<Cmd>ZkBuffers<CR>")
        vim.keymap.set("n", "<leader>zi", "<Cmd>ZkInsertLink<CR>")
    end
}
