#!/bin/bash

SOURCE_DIR="/etc/bind/"
ARCHIVE_NAME="/etc.tar.gz"
ENCRYPTED_NAME="${ARCHIVE_NAME}.gpg"
REMOTE_PATH=

echo "[+] Archiving $SOURCE_DIR..."
tar -czf "$ARCHIVE_NAME" "$SOURCE_DIR"

echo "[+] Encrypting $ARCHIVE_NAME..."
gpg -c "$ARCHIVE_NAME"

echo "[+] Sending encrypted archive to remote server..."
rsync -avz "$ENCRYPTED_NAME" "$REMOTE_PATH"

echo "[+] Cleaning up local archive..."
rm -f "$ARCHIVE_NAME"

echo "[✔] Done. Encrypted file sent as $ENCRYPTED_NAME"
