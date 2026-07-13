return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-python"] = {
          python = "/opt/homebrew/opt/pytest/libexec/bin/python",
          runner = "pytest",
        },
      },
    },
  },
}
