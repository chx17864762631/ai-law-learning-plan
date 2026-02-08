# GitHub仓库设置指南

## 步骤1：在GitHub上创建新仓库

### 1.1 登录GitHub
访问：https://github.com/login

### 1.2 创建新仓库
1. 点击右上角 `+` → `New repository`
2. 填写仓库信息：
   - **Repository name**: `ai-law-learning-plan`
   - **Description**: `法律与人工智能年度学习计划`
   - **Visibility**: ☑️ Private（私有）或 ☑️ Public（公开）
   - ⬜ **Add a README file**（不要勾选，我们已经有了）
   - ⬜ **Add .gitignore**（不要勾选）
   - ⬜ **Choose a license**（可选）

3. 点击 `Create repository`

### 1.3 获取仓库URL
创建后，GitHub会显示仓库地址，格式为：
```
https://github.com/你的用户名/ai-law-learning-plan.git
```

**复制这个地址，然后告诉我。**

---

## 步骤2：配置Git（如需要）

如果还没有配置GitHub账号信息：

### 2.1 设置用户名
```bash
git config --global user.name "你的名字"
```

### 2.2 设置邮箱
```bash
git config --global user.email "your-email@example.com"
```

### 2.3 配置SSH密钥（推荐）

**生成SSH密钥**：
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
```

**添加到GitHub**：
1. 复制公钥：`cat ~/.ssh/id_ed25519.pub`
2. GitHub → Settings → SSH and GPG keys → New SSH key
3. 粘贴公钥内容

---

## 步骤3：连接远程仓库

创建GitHub仓库后，告诉我仓库地址，我将帮你：
1. 添加远程仓库
2. 推送代码
3. 验证连接

---

## 准备好了吗？

当你在GitHub上创建好仓库后，请提供：
- 仓库URL（如：https://github.com/username/ai-law-learning-plan.git）
- 或者仓库名称和你的用户名

然后我将帮你完成剩余的配置！
