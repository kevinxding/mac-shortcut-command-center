# Mac Shortcut Command Center

一个给非程序员使用的 Mac 自动化展示项目。

它记录了这台 Mac 上已经可用的快捷键工具，并提供一个 AppleScript 示例，用来模拟按下键盘快捷键。

## 这台 Mac 已检测到

- Shortcuts.app，系统自带快捷指令
- Automator.app，系统自带自动化工具
- `/usr/bin/shortcuts`，命令行快捷指令工具
- AppleScript / System Events，可模拟按键

## 适合你的用法

1. 用 Shortcuts 创建常用动作。
2. 给 Shortcut 分配键盘快捷键。
3. 需要模拟按键时，用 `scripts/press-hotkey.applescript` 这类脚本。
4. 以后需要更强的启动器时，可以安装 Raycast。

## 运行 AppleScript 示例

```zsh
osascript scripts/press-hotkey.applescript
```

示例会模拟按下 `Command + Space`。

第一次使用按键模拟时，macOS 可能要求到：

`系统设置 -> 隐私与安全性 -> 辅助功能`

里允许运行脚本的 App 控制电脑。

## 本地预览网页

```zsh
python3 -m http.server 4173
```

然后打开：

```text
http://localhost:4173
```
