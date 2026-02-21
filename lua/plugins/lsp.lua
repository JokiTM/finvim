return
{
    { 
        "https://github.com/neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
--        vim.lsp.config("ltex", {
--            settings = {
--                ltex = {
--                    language = "de",
--                },
--            },
--        }
--    ),

    vim.lsp.enable({"lua_ls", "ltex"})
},

{
    "mason-org/mason.nvim",
    opts = {}
},
}
