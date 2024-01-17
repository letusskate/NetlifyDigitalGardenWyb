---
{"dg-publish":true,"permalink":"/3 计算机/创建、效率与技巧/编程工具/代码托管平台/github/github action/","title":"github action"}
---

## github action
每次提交一个版本，都会运行一次 action，  
比如我就可以用 django 的 action，可以检查 django 项目是否可以正常启动，  
还有 python environment 的 action，可以检查 python 环境配置是否成功，并且运行 pytest 的测试。
### Python package
一个校验 python 环境和 python pytest 的 action
#### 有变量未定义报错
将下面第一行注释，改为第二行即可，表示即使报错，也 return 0  
\# flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics  
flake8 . --count --exit-zero --select=E9,F63,F7,F82 --show-source --statistics

### 不同步骤之间传参
[GitHub Actions: Deprecating save-state and set-output commands - The GitHub Blog](https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/)

A workflow using `save-state` or `set-output` like the following

```yaml
- name: Save state
run: echo "::save-state name={name}::{value}"

- name: Set output
run: echo "::set-output name={name}::{value}"
```

should be updated to write to the new `GITHUB_STATE` and `GITHUB_OUTPUT` environment files:

```yaml
- name: Save state
run: echo "{name}={value}" >> $GITHUB_STATE

- name: Set output
run: echo "{name}={value}" >> $GITHUB_OUTPUT
```