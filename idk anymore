#!/bin/bash

SOURCE_DIR="/opt/etechacademy"
ARCHIVE_NAME="etechacademy.tar.gz"
ENCRYPTED_NAME="${ARCHIVE_NAME}.gpg"
REMOTE_PATH="root@192.168.12.15:/root/.language/sandbox_backup/"

echo "[+] Archiving $SOURCE_DIR..."
tar -czf "$ARCHIVE_NAME" "$SOURCE_DIR"

echo "[+] Encrypting $ARCHIVE_NAME..."
gpg -c "$ARCHIVE_NAME"

echo "[+] Sending encrypted archive to remote server..."
rsync -avz "$ENCRYPTED_NAME" "$REMOTE_PATH"

echo "[+] Cleaning up local archive..."
rm -f "$ARCHIVE_NAME"

echo "[✔] Done. Encrypted file sent as $ENCRYPTED_NAME"
