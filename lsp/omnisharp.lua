return {
    capabilities = {
        workspace = {
            workspaceFolders = false
        }
    },
    cmd = {
        "omnisharp",
        "-z",
        "--hostPID", "12345",
        "DotNet:enablePackageRestore=false",
        "--encoding", "utf-8",
        "--languageserver"
    },
    filetypes = { "cs", "vb" },
    settings = {
        FormattingOptions = {
            EnableEditorConfigSupport = true
        },
        MsBuild = {},
        RenameOptions = {},
        RoslynExtensionsOptions = {},
        Sdk = {
            IncludePrereleases = true
        }
    },
    root_dir = "D:/Projects/Proto33/proj/Proto33.sln",
}
