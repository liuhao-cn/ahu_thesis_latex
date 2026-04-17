# 安徽大学理工类本科毕业论文 LaTeX 模板

这是一个基于 XeLaTeX 的安徽大学理工类本科毕业论文模板仓库，包含论文类文件、参考文献样式、示例文档、编译脚本以及随附中文字体，开箱即可生成示例论文 PDF。

该模板免费、非官方。发布者对使用后果不负任何责任。

## 仓库内容

- `ahuthesis.cls`：论文模板类文件。
- `ahu_citation.sty`：参考文献格式支持。
- `ahu_citation.bst`：BibTeX 参考文献样式。
- `main.tex`：最小示例文档，可直接修改为自己的论文内容。
- `references.bib`：示例参考文献库。
- `make.sh`：Linux/macOS 下的编译脚本。
- `make.bat`：Windows 下的编译脚本。
- `fonts/`：模板随附的开源中文字体文件，用于保证排版结果稳定一致。
- `main.pdf`：当前示例文档生成的 PDF。

## 环境要求

建议安装支持 XeLaTeX 的 TeX 发行版，例如：

- TeX Live
- MiKTeX

编译时需要以下命令可用：

- `xelatex`
- `bibtex`

## 使用方法

### 1. 修改论文信息

编辑 `main.tex`，按需修改以下内容：

- 论文题目
- 学生姓名、学号、院系、专业
- 导师信息
- 中英文摘要
- 正文章节
- 致谢与附录

### 2. 修改参考文献

编辑 `references.bib`，将示例条目替换为自己的真实文献。

### 3. 编译 PDF

Linux/macOS:

```bash
./make.sh
```

Windows:

```bat
make.bat
```

编译脚本会执行：

1. XeLaTeX 第一次编译
2. BibTeX 处理参考文献
3. XeLaTeX 第二次编译
4. XeLaTeX 第三次编译

成功后会生成 `main.pdf`，脚本会自动清理中间文件。

## 说明

- 模板默认使用仓库内提供的开源中文字体，以减少不同系统下的字体差异。
- `main.tex` 与 `references.bib` 中的内容为演示用途，其中示例姓名、学号和文献信息均为占位数据。
- 如需正式写作，请将示例内容替换为自己的真实论文信息。

## 许可证

本项目采用仓库中的 `LICENSE` 文件所示许可证。
