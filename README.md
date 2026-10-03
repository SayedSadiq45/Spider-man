# New Spiderman

A cinematic, interactive Spider-Man-inspired landing experience built with React, Vite, Framer Motion, and a canvas image reveal.

**Created by Sayed Sadiq45**

[Live site](https://new-spiderman.vercel.app) · [LinkedIn](https://www.linkedin.com/in/sayed-sadiq45/) · [GitHub](https://github.com/SayedSadiq45)

## Highlights

- Animated cursor-driven reveal effect
- Responsive desktop and mobile presentation
- Strong red, blue, and black comic-book visual language
- Creator attribution and social links in the primary experience

## Development

```bash
cd vite-project
npm install
npm run dev
```

Production checks:

```bash
npm run build
npm run lint
```

## Vercel deployment

Deploy only this app from its own directory:

```bash
cd vite-project
npx vercel login
npx vercel --prod
```

This links and deploys the current project only. It does not change any other Vercel project. Configure `new-spiderman.vercel.app` as the production domain if it is available.

## Commit authorship rewrite

Before rewriting history, create a backup clone. The guarded script replaces only commits matching the email you provide and leaves unrelated contributors unchanged:

```bash
cd vite-project
OLD_EMAIL="old-author@example.com" \
NEW_EMAIL="12345678+SayedSadiq45@users.noreply.github.com" \
./scripts/rewrite-authorship.sh
```

The script requires `git-filter-repo`, asks for a typed confirmation, and prints the required `--force-with-lease` push command after rewriting. Replace the example `NEW_EMAIL` with the exact noreply address shown in your GitHub account settings.

## License

MIT. See [LICENSE](LICENSE).
