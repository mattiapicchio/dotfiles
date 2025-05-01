return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  config = function()
    require('gitsigns').setup {
      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      signcolumn = true,
      numhl      = false,
      linehl     = false,
      word_diff  = false,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000, -- Delay in milliseconds before showing blame
        ignore_whitespace = false,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            gitsigns.nav_hunk('next')
          end
        end, { desc = "Next Git hunk" })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            gitsigns.nav_hunk('prev')
          end
        end, { desc = "Previous Git hunk" })

        -- Actions
         -- Git key mappings
         map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })

        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = "Stage hunk" })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = "Reset hunk" })

        map('v', '<leader>hs', function()
          gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = "Stage hunk (visual)" })

        map('v', '<leader>hr', function()
          gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = "Reset hunk (visual)" })

        map('n', '<leader>hS', gitsigns.stage_buffer, { desc = "Stage buffer" })
        map('n', '<leader>hR', gitsigns.reset_buffer, { desc = "Reset buffer" })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = "Preview hunk" })
        map('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })

        map('n', '<leader>hb', function()
          gitsigns.blame_line({ full = true })
        end, { desc = "Blame line" })

        map('n', '<leader>hd', gitsigns.diffthis, { desc = "Diff this" })

        map('n', '<leader>hD', function()
          gitsigns.diffthis('~')
        end, { desc = "Diff this (against HEAD)" })

        map('n', '<leader>hQ', function() gitsigns.setqflist('all') end, { desc = "Set quickfix list (all)" })
        map('n', '<leader>hq', gitsigns.setqflist, { desc = "Set quickfix list" })

        -- Toggles
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = "Toggle blame" })
        map('n', '<leader>td', gitsigns.toggle_deleted, { desc = "Toggle deleted" })
        map('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = "Toggle word diff" })

        -- Text object
        map({'o', 'x'}, 'ih', gitsigns.select_hunk, { desc = "Select hunk" })
      end,
    }
  end,
}