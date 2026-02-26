# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
npm install          # Install dependencies
npm run dev          # Start dev server (opens browser)
npm run build        # Build to dist/
npm run preview      # Preview production build locally
```

Docker workflow:
```bash
make dist            # Build static assets
make image           # Build Docker image (reactjs-app-example:main)
make run             # Run Docker container on port 8080
make up              # Build assets + image + run (all-in-one)
```

## Architecture

This is a minimal React 19 app built with [Rsbuild](https://rsbuild.dev/) (Rspack-based bundler, replaces CRA).

- **Entry**: `src/index.jsx` mounts `<App>` into `#root`
- **App component**: `src/App.jsx` — single component, no routing or state management
- **Build output**: `dist/` — served by `npx serve -l 8080` inside Docker
- **Config**: `rsbuild.config.ts` — minimal, only uses `@rsbuild/plugin-react`

The Docker image (`Dockerfile`) copies the pre-built `dist/` folder into Ubuntu 24.04, installs `serve` globally, and runs it via `docker-entrypoint.sh`. Build must run (`npm run build`) before `docker build`.

There is a test file (`src/App.test.js`) using `@testing-library/react`, but no test runner is currently configured in `package.json`.
