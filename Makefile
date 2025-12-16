# Makefile

# デフォルトターゲット
all:
	nasm -f bin boot.asm -o boot.bin

# QEMUでのエミュレーション実行
run:
	qemu-system-x86_64 -fda boot.bin

# クリーンアップ
clean:
	rm -f boot.bin

# 偽ターゲットの定義
.PHONY: all run clean