VERSION_FILE := VERSION
CHANGELOG := CHANGELOG.md

.PHONY: release version check clean-tag

release: check version tag push github-release

check:
	@git diff-index --quiet HEAD -- || \
		(echo "❌ Commit your changes before releasing." && exit 1)
	@ssh -T git@github.com 2>&1 | grep -q "successfully authenticated" || \
		(echo "❌ SSH authentication to GitHub failed" && exit 1)

version:
	@echo "📦 Releasing version: $$(cat $(VERSION_FILE))"

tag:
	@git tag "v$$(cat $(VERSION_FILE))"
	@echo "🏷️ Tagged version v$$(cat $(VERSION_FILE))"

push:
	@git push origin "v$$(cat $(VERSION_FILE))"
	@echo "🚀 Tag pushed to origin."

github-release:
	@gh release create "v$$(cat $(VERSION_FILE))" \
		--title "v$$(cat $(VERSION_FILE))" \
		--notes "$$(awk '/^## v/ {found++} found==1 && NR>1 && /^## v/ {exit} found==1' $(CHANGELOG))"
	@echo "📢 GitHub release created."

clean-tag:
	@git tag -d "v$$(cat $(VERSION_FILE))"
	@git push --delete origin "v$$(cat $(VERSION_FILE))"
