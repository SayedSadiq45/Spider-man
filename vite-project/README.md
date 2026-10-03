# New Spiderman

An interactive Spider-Man-inspired hero experience with a cinematic reveal, animated cursor trail, and a sharp red, blue, and black visual system.

Built and designed by **Sayed Sadiq45**.

## Live Website

When deployed, the official site will be available at:

**https://new-spiderman.vercel.app**

Connect with Sayed Sadiq45:

- [LinkedIn](https://www.linkedin.com/in/sayed-sadiq45/)
- [GitHub](https://github.com/SayedSadiq45)

## Stack

- React 19
- Vite 8
- Framer Motion
- Canvas-based image reveal effect

## Run locally

```bash
npm install
npm run dev
```

Build and lint the project with:

```bash
npm run build
npm run lint
```

## Deploy to Vercel

From this project directory, authenticate with the Vercel CLI and deploy only this project:

```bash
npx vercel login
npx vercel --prod
```

The command creates or links the current project only. It does not modify any other Vercel projects. Set the production domain to `new-spiderman.vercel.app` in the Vercel project settings if that name is available.

## Rewrite historical authorship

The repository includes [`scripts/rewrite-authorship.sh`](scripts/rewrite-authorship.sh), which uses `git filter-repo` and requires the old email plus your new GitHub noreply email explicitly. Rewriting history changes commit IDs and requires a force push, so make a backup clone before running it.

```bash
OLD_EMAIL="old-author@example.com" \
NEW_EMAIL="12345678+SayedSadiq45@users.noreply.github.com" \
./scripts/rewrite-authorship.sh
```

The script changes matching author and committer identities only; unrelated contributors remain untouched.

## License

Released under the [MIT License](LICENSE).
