import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from tests.presentation.menu import run

if __name__ == "__main__":
    run()
