" Vim color file
" create by NickDeCodes (NickDeCodes@163.com)

set background=dark
set t_Co=256
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xcode"

hi Normal       ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE 
hi Cursor       ctermfg=NONE ctermbg=45 cterm=NONE guifg=NONE guibg=NONE gui=NONE " 光标选中部分
hi Visual       ctermfg=NONE ctermbg=45 cterm=NONE guifg=NONE guibg=NONE gui=NONE " 可视化选中部分
hi VisualNOS    ctermfg=NONE ctermbg=45 cterm=NONE guifg=NONE guibg=NONE gui=NONE " 可视化选中部分
hi CursorLine   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=NONE " 光标当前行
hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 光标当前列
hi ColorColumn  ctermfg=NONE ctermbg=13 cterm=NONE guifg=NONE guibg=NONE gui=NONE " 颜色列 未知13
hi LineNr       ctermfg=240 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 左侧行号
hi VertSplit    ctermfg=10 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知
hi MatchParen   ctermfg=Yellow ctermbg=Black cterm=inverse guifg=NONE guibg=NONE gui=underline " 括号匹配
hi StatusLine   ctermfg=231 ctermbg=59 cterm=bold guifg=NONE guibg=NONE gui=bold " 状态栏高亮 
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=bold guifg=NONE guibg=NONE gui=NONE " split状态栏高亮
hi Pmenu        ctermfg=240 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 补全提示行
hi PmenuSel     ctermfg=27 ctermbg=Black cterm=inverse guifg=NONE guibg=NONE gui=NONE " 补全光标行
hi IncSearch    ctermfg=Yellow ctermbg=Black cterm=NONE guifg=NONE guibg=NONE gui=NONE " 模糊查找全部 需要安装incsearch.vim
hi Search       ctermfg=Yellow ctermbg=Black cterm=reverse guifg=NONE guibg=NONE gui=underline " 查找高亮
hi Directory    ctermfg=10 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 目录高亮
hi Folded       ctermfg=10 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 折叠行高亮 
hi NonText      ctermfg=240 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 非文本区（控制字符和一些特殊字符和编辑器空白区等）

" C++ theme
hi Normal       ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Boolean      ctermfg=darkmagenta ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " bool值高亮
hi Character    ctermfg=12 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 字符高亮
hi Comment      ctermfg=240 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=italic " 文件头部声明
hi Conditional  ctermfg=darkmagenta ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=NONE " if 条件关键字高亮
hi Constant     ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 常量
hi Define       ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi DiffAdd      ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=bold " 未知 红色
hi DiffDelete   ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi DiffChange   ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi DiffText     ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=bold " 未知 红色
hi ErrorMsg     ctermfg=Red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 命令行中的错误提示
hi WarningMsg   ctermfg=Yellow ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 命令行中的警告提示
hi Float        ctermfg=12 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " float值高亮
hi Function     ctermfg=12 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " bash函数
hi Identifier   ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi Keyword      ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 关键字 红色
hi Label        ctermfg=darkmagenta ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=NONE " case语法高亮
hi Number       ctermfg=12 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 数字
hi Operator     ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi PreProc      ctermfg=94 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " include、define高亮
hi Special      ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi SpecialKey   ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi Statement    ctermfg=darkmagenta ctermbg=NONE cterm=Bold guifg=NONE guibg=NONE gui=NONE " return、for、while、switch、break、continue、if语句高亮
hi StorageClass ctermfg=darkmagenta ctermbg=NONE cterm=Bold guifg=NONE guibg=NONE gui=NONE " class类
hi Structure    ctermfg=darkmagenta ctermbg=NONE cterm=Bold guifg=NONE guibg=NONE gui=NONE " struct结构体
hi String       ctermfg=203 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 字符串
hi Tag          ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 未知 红色
hi Title        ctermfg=red ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=bold " 未知 红色
hi Todo         ctermfg=red ctermbg=NONE cterm=inverse,bold guifg=NONE guibg=NONE gui=inverse,bold,italic " 未知 红色
hi Type         ctermfg=darkmagenta ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=NONE " int、void、bool、char等声明语法高亮
hi Underlined   ctermfg=red ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline " 未知 红色