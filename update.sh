# Update helper for NurikDz's Homebrew tap
# Usage: ./update.sh <app> <version> <sha256> [tag] [filename]
#
# Examples:
#   ./update.sh ask 1.1 abc123... Ask Ask.1.1.dmg
#   ./update.sh freestream 1.0.3 def456... FreeStreamNV FreeStream-1.0.3.dmg

APP=$1
VERSION=$2
SHA256=$3
TAG=${4:-$VERSION}
FILENAME=${5:-""}

if [ -z "$APP" ] || [ -z "$VERSION" ] || [ -z "$SHA256" ]; then
  echo "Usage: ./update.sh <app> <version> <sha256> [tag] [filename]"
  echo ""
  echo "Examples:"
  echo "  ./update.sh ask 1.1 abc123..."
  echo "  ./update.sh freestream 1.0.3 def456... FreeStreamNV FreeStream-1.0.3.dmg"
  exit 1
fi

CASK_FILE="Casks/${APP}.rb"

if [ ! -f "$CASK_FILE" ]; then
  echo "Error: $CASK_FILE not found"
  exit 1
fi

# Update version and sha256
sed -i '' "s/version \".*\"/version \"${VERSION}\"/" "$CASK_FILE"
sed -i '' "s/sha256 \".*\"/sha256 \"${SHA256}\"/" "$CASK_FILE"

# Update URL if new filename/tag provided
if [ -n "$FILENAME" ] && [ -n "$TAG" ]; then
  # Extract repo name from existing URL
  REPO=$(grep -o 'github.com/NurikDz/[^/]*' "$CASK_FILE" | head -1 | sed 's|github.com/NurikDz/||')
  NEW_URL="https://github.com/NurikDz/${REPO}/releases/download/${TAG}/${FILENAME}"
  sed -i '' "s|url \"https://github.com/NurikDz/.*\"|url \"${NEW_URL}\"|" "$CASK_FILE"
fi

git add "$CASK_FILE"
git commit -m "Update ${APP} to v${VERSION}"
git push

echo "✅ Updated ${APP} to v${VERSION}"
