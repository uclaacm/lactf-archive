"""
Scoreboard API client for fetching team data and checking eligibility.
"""

import requests
from dataclasses import dataclass
from typing import Tuple


@dataclass
class ScoreboardData:
    """Team data from scoreboard API."""
    name: str
    division: str
    score: int
    solves: list


class ScoreboardAPIError(Exception):
    """Exception raised when scoreboard API request fails."""
    pass


def fetch_team_data(team_uuid: str, base_url: str, timeout: int = 10) -> ScoreboardData:
    """
    Fetch team data from scoreboard API.

    Args:
        team_uuid: Team's UUID
        base_url: Base URL of scoreboard API (e.g., https://platform.acmcyber.com/api/v1)
        timeout: Request timeout in seconds

    Returns:
        ScoreboardData with team information

    Raises:
        ScoreboardAPIError: If API request fails or returns unexpected format
    """
    url = f"{base_url.rstrip('/')}/users/{team_uuid}"

    try:
        response = requests.get(url, timeout=timeout)
        response.raise_for_status()
        data = response.json()

        if data.get("kind") != "goodUserData":
            raise ScoreboardAPIError(f"Unexpected response kind: {data.get('kind')}")

        user_data = data.get("data", {})
        return ScoreboardData(
            name=user_data.get("name", "Unknown"),
            division=user_data.get("division", ""),
            score=user_data.get("score", 0),
            solves=user_data.get("solves", [])
        )
    except requests.exceptions.Timeout:
        raise ScoreboardAPIError("Scoreboard API request timed out")
    except requests.exceptions.ConnectionError:
        raise ScoreboardAPIError("Unable to connect to scoreboard API")
    except requests.exceptions.HTTPError as e:
        raise ScoreboardAPIError(f"Scoreboard API returned error: {e}")
    except (KeyError, ValueError) as e:
        raise ScoreboardAPIError(f"Invalid response format: {e}")


def check_eligibility(data: ScoreboardData, required_solves: int = 1) -> Tuple[bool, str]:
    """
    Check if team is eligible based on division or solve count.

    Eligibility criteria:
    - division == "ucla" OR
    - len(solves) >= required_solves

    Args:
        data: Team's scoreboard data
        required_solves: Minimum number of solves required if not UCLA division

    Returns:
        Tuple of (is_eligible, reason_message)
    """
    if data.division == "ucla":
        return True, "UCLA division member"

    if len(data.solves) >= required_solves:
        return True, f"Solved {len(data.solves)} challenges"

    return False, f"Need UCLA division OR at least {required_solves} solves (currently: {len(data.solves)})"
