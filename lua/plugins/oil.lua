return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function ()
        require("oil").setup({
            -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
            -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
            default_file_explorer = true,
            skip_confirm_for_simple_edits = true,

            -- Id is automatically added at the beginning, and name at the end
            -- See :help oil-columns
            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
              },
        })
    end
}
