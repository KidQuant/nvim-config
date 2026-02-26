local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {

	-------------------------
	-- Formatting
	-------------------------

	s("b", { t("**"), i(1, "text"), t("**"), i(0) }),
	s("it", { t("*"), i(1, "text"), t("*"), i(0) }),
	s("code", { t("`"), i(1, "code"), t("`"), i(0) }),

	s("cb", {
		t("```"),
		i(1, "lang"),
		t({ "", "" }),
		i(2, "code"),
		t({ "", "```" }),
		i(0),
	}),

	s("bf", {
		t("\\mathbf{"),
		i(1, "x"),
		t("}"),
		i(0),
	}),
	-------------------------
	-- Inline Math
	-------------------------

	s("m", { t("$"), i(1, "expr"), t("$"), i(0) }),

	-------------------------
	-- Display Equation ($$ $$)
	-------------------------

	s("eq", {
		t("$$"),
		t({ "", "\\begin{equation}", "    " }),
		i(1, "a = b"),
		t({ "", "\\end{equation}", "$$" }),
		i(0),
	}),
	-------------------------
	-- Aligned Environment (NO $$)
	-------------------------

	s("align", {
		t("\\begin{aligned}"),
		t({ "", "" }),
		i(1, "a &= b \\\\"),
		t({ "", "\\end{aligned}" }),
		i(0),
	}),

	-------------------------
	-- Math Structures
	-------------------------

	s("frac", { t("\\frac{"), i(1, "num"), t("}{"), i(2, "den"), t("}"), i(0) }),

	s("sum", { t("\\sum_{"), i(1, "i=1"), t("}^{"), i(2, "n"), t("} "), i(3, "expr"), i(0) }),

	s("int", {
		t("\\int_{"),
		i(1, "a"),
		t("}^{"),
		i(2, "b"),
		t("} "),
		i(3, "f(x)"),
		t(" \\, dx"),
		i(0),
	}),

	s("lim", {
		t("\\lim_{"),
		i(1, "n \\to \\infty"),
		t("} "),
		i(2, "expr"),
		i(0),
	}),

	-------------------------
	-- Probability / Stats
	-------------------------

	s("E", { t("\\mathbb{E}["), i(1, "X"), t("]"), i(0) }),
	s("P", { t("\\mathbb{P}("), i(1, "A"), t(")"), i(0) }),
	s("Var", { t("\\mathrm{Var}("), i(1, "X"), t(")"), i(0) }),
	s("R", { t("\\mathbb{R}"), i(0) }),

	-------------------------
	-- Braces
	-------------------------
	---
	s("lr{", {
		t("\\left\\lbrace"),
		i(1),
		t("\\right\\rbrace"),
		i(0),
	}),

	-- \left( \right)
	s("lr(", {
		t("\\left("),
		i(1),
		t("\\right)"),
		i(0),
	}),

	-- \left[ \right]
	s("lr[", {
		t("\\left["),
		i(1),
		t("\\right]"),
		i(0),
	}),

	s("lnorm", {
		t("\\left\\lVert"),
		i(1, "x"),
		t("\\right\\rVert"),
		i(0),
	}),
	s("norm", {
		t("\\lVert "),
		i(1, "x"),
		t(" \\rVert"),
		i(0),
	}),
	s("bmat", {
		t("\\begin{bmatrix}"),
		t({ "", "  " }),
		i(1, "a & b \\\\"),
		t({ "", "\\end{bmatrix}" }),
		i(0),
	}),
	s("bmat2", {
		t("\\begin{bmatrix}"),
		t({ "", "  " }),
		i(1, "a"),
		t(" & "),
		i(2, "b"),
		t({ " \\\\", "  " }),
		i(3, "c"),
		t(" & "),
		i(4, "d"),
		t({ "", "\\end{bmatrix}" }),
		i(0),
	}),
}
