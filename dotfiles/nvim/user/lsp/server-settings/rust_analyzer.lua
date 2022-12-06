return {
        on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<Leader>l<Leader>",
                        require("rust-tools").hover_actions.hover_actions,
                        { buffer = bufnr, desc = "Rust hover actions" })
                -- Code action groups
                vim.keymap.set("n", "<Leader>lA",
                        require("rust-tools").code_action_group.code_action_group,
                        { buffer = bufnr, desc = "Rust code actions" })
                vim.keymap.set("n", "<Leader>ds",
                        require("rust-tools").debuggables.debuggables,
                        { buffer = bufnr, desc = "Start Rust Debuggables" })
                vim.keymap.set("n", "<Leader>dr",
                        require("rust-tools").runnables.runnables,
                        { buffer = bufnr, desc = "Start Rust Runnables" })
        end,
}
