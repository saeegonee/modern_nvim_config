return {
    capabilities = {
        textDocument = {
            diagnostic = {
                dynamicRegistration = true
            }
        }
    },
    cmd = {
        "roslyn-language-server",
        "--logLevel", "Information",
        "--extensionLogDirectory", "/tmp/roslyn_ls/logs",
        "--stdio",
    },
    cmd_env = {},
    commnads = {
        -- ["roslyn.client.completionComplexEdit"] = <function 1>,
        -- ["roslyn.client.fixAllCodeAction"] = <function 2>,
        -- ["roslyn.client.nestedCodeAction"] = <function 3>,
    },
    handlers = {
        -- ["razor/provideDynamicFileInfo"] = <function 1>,
        -- ["workspace/_roslyn_projectNeedsRestore"] = <function 2>,
        -- ["workspace/projectInitializationComplete"] = <function 3>,
    },
    -- root_dir = "",
    root_markers = { "*.sln", "*.csproj" },
    filetypes = { "cs" },
    name = "roslyn_ls",
    settings = {
        ["csharp|background_analysis"] = {
            dotnet_analyzer_diagnostics_scope = "fullSolution",
            dotnet_compiler_diagnostics_scope = "fullSolution"
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true
        },
        ["csharp|completion"] = {
            dotnet_provide_regex_completions = true,
            dotnet_show_completion_items_from_unimported_namespaces = true,
            dotnet_show_name_completion_suggestions = true
        },
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
            csharp_enable_inlay_hints_for_types = true,
            dotnet_enable_inlay_hints_for_indexer_parameters = true,
            dotnet_enable_inlay_hints_for_literal_parameters = true,
            dotnet_enable_inlay_hints_for_object_creation_parameters = true,
            dotnet_enable_inlay_hints_for_other_parameters = true,
            dotnet_enable_inlay_hints_for_parameters = true,
            dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true
        },
        ["csharp|symbol_search"] = {
            dotnet_search_reference_assemblies = true
        }
    }
}
