"""
Google reCAPTCHA v2 client for verifying user responses.
"""

import requests
from dataclasses import dataclass
from typing import Optional


@dataclass
class RecaptchaVerification:
    """Response from reCAPTCHA verification API."""
    success: bool
    challenge_ts: Optional[str]
    hostname: Optional[str]
    error_codes: Optional[list]


class RecaptchaError(Exception):
    """Exception raised when reCAPTCHA verification fails."""
    pass


def verify_recaptcha(response_token: str, secret_key: str, remote_ip: Optional[str] = None, timeout: int = 10) -> RecaptchaVerification:
    """
    Verify reCAPTCHA response token with Google's API.

    Args:
        response_token: The g-recaptcha-response token from the form
        secret_key: Your reCAPTCHA secret key
        remote_ip: User's IP address (optional but recommended)
        timeout: Request timeout in seconds

    Returns:
        RecaptchaVerification with verification result

    Raises:
        RecaptchaError: If API request fails or verification unsuccessful
    """
    url = "https://www.google.com/recaptcha/api/siteverify"

    payload = {
        'secret': secret_key,
        'response': response_token
    }

    if remote_ip:
        payload['remoteip'] = remote_ip

    try:
        response = requests.post(url, data=payload, timeout=timeout)
        response.raise_for_status()
        data = response.json()

        verification = RecaptchaVerification(
            success=data.get('success', False),
            challenge_ts=data.get('challenge_ts'),
            hostname=data.get('hostname'),
            error_codes=data.get('error-codes')
        )

        if not verification.success:
            error_msg = f"reCAPTCHA verification failed: {verification.error_codes}"
            raise RecaptchaError(error_msg)

        return verification

    except requests.exceptions.Timeout:
        raise RecaptchaError("reCAPTCHA API request timed out")
    except requests.exceptions.ConnectionError:
        raise RecaptchaError("Unable to connect to reCAPTCHA API")
    except requests.exceptions.HTTPError as e:
        raise RecaptchaError(f"reCAPTCHA API returned error: {e}")
    except (KeyError, ValueError) as e:
        raise RecaptchaError(f"Invalid reCAPTCHA response format: {e}")
