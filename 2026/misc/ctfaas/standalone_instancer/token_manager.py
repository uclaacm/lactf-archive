"""
Token manager for decrypting AES-256-GCM encrypted login tokens.

Token format:
- Base64 encoded: IV (12 bytes) + CipherText + AuthTag (16 bytes)
- Decrypted JSON: {"k": tokenKind, "t": timestamp, "d": {"teamId": uuid, "email": str, "name": str}}
"""

import json
from base64 import b64decode
from dataclasses import dataclass
from typing import Optional

from Crypto.Cipher import AES


@dataclass
class TokenData:
    """Parsed token data."""
    team_id: str
    email: str
    name: str
    timestamp: float
    token_kind: int


def decrypt_token(token: str, key: str) -> TokenData:
    """
    Decrypt a base64-encoded AES-256-GCM token.

    Args:
        token: Base64-encoded encrypted token
        key: Base64-encoded 32-byte AES key

    Returns:
        TokenData with parsed token contents

    Raises:
        ValueError: If decryption fails or token format is invalid
    """
    try:
        key_bytes = b64decode(key)
        data = b64decode(token.encode())

        # Token structure: IV (12 bytes) + CipherText + AuthTag (16 bytes)
        iv = data[:12]
        ciphertext = data[12:-16]
        auth_tag = data[-16:]

        cipher = AES.new(key_bytes, AES.MODE_GCM, iv)
        decrypted = cipher.decrypt_and_verify(ciphertext, auth_tag)

        parsed = json.loads(decrypted.decode("utf-8"))

        # Expected format: {"k": kind, "t": timestamp, "d": {"teamId": uuid, "email": str, "name": str}}
        return TokenData(
            team_id=parsed["d"]["teamId"],
            email=parsed["d"]["email"],
            name=parsed["d"]["name"],
            timestamp=parsed["t"],
            token_kind=parsed["k"]
        )
    except Exception as e:
        raise ValueError(f"Token decryption failed: {e}")


def validate_token_age(token_data: TokenData, max_age_seconds: int = 600) -> bool:
    """
    Check if token is within acceptable age range.

    Args:
        token_data: Parsed token data
        max_age_seconds: Maximum allowed token age in seconds (default 1 hour)

    Returns:
        True if token is valid, False if expired
    """
    import time
    current_time = time.time()
    age_seconds = current_time - token_data.timestamp
    return age_seconds <= max_age_seconds