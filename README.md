# My C Environment

C言語開発用のコンテナ環境です

## 概要

このプロジェクトは、VS Code Dev Containerを使用してC言語での開発を効率的に行うための環境を提供します。Ubuntu Linuxベースのコンテナに、C言語開発に必要なツールがプリインストールされています。

## 機能

- **Ubuntu最新版ベース**: Linux 環境
- **ビルドツール**: `build-essential` パッケージ（gcc, make など）
- **開発支援ツール**:
  - Git
  - Vim
  - Zsh
  - curl, wget

## セットアップ

### 前提条件

- Docker がインストールされていること
- VS Code or Jetbrains IDE (Optional)

### 使用方法

このプロジェクトはDev Container専用に設計されています：

1. **リポジトリのクローン**
   ```bash
   git clone <このリポジトリのURL>
   cd my-c-env
   ```

2. **VS Code Dev Container での起動**
   - VS Code で このフォルダを開く
   - コマンドパレット（`Ctrl+Shift+P`）を開く
   - "Dev Containers: Reopen in Container" を選択
   - 初回は自動的にDockerイメージがビルドされます

**注意**: このDockerfileはdev containerのイメージとして設計されているため、直接docker buildやdocker runで使用することは想定されていません。

## 開発の開始

コンテナ内で以下のようにC言語プログラムを作成・実行できます：

```bash
# サンプルプログラムの作成
echo '#include <stdio.h>
int main() {
    printf("Hello, World!\n");
    return 0;
}' > hello.c

# コンパイル
gcc -o hello hello.c

# 実行
./hello
```

## ディレクトリ構造

```
my-c-env/
├── Dockerfile          # コンテナ設定
├── .devcontainer/      # VS Code Dev Container 設定
├── .github/           # GitHub Actions 設定
└── README.md          # このファイル
```

## 含まれるツール

- **GCC**: GNU Compiler Collection
- **Make**: ビルド自動化ツール
- **Git**: バージョン管理システム
- **Vim**: テキストエディタ
- **Zsh**: 対話型シェル
- **curl/wget**: HTTP クライアント

## 貢献

このプロジェクトへの貢献を歓迎します。以下の手順でお願いします：

1. このリポジトリをフォーク
2. 機能ブランチを作成（`git checkout -b feature/AmazingFeature`）
3. 変更をコミット（`git commit -m 'Add some AmazingFeature'`）
4. ブランチにプッシュ（`git push origin feature/AmazingFeature`）
5. プルリクエストを作成

## ライセンス

このプロジェクトはオープンソースです。詳細については LICENSE ファイルを参照してください。