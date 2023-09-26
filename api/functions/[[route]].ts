import { Hono } from "hono";
import { logger } from "hono/logger";
import { handle } from "hono/cloudflare-pages";
import { pages } from "./pages";

const app = new Hono();

app.use("*", logger());
app.get("*", async (c) => {
  const path = c.req.path;
  const reqUrl = new URL(c.req.url);
  // /index.htmlを取得
  const res = await fetch(reqUrl.toString().replaceAll(reqUrl.pathname, "/"));
  const pageMeta = pages.find((page) => page.path === path);
  if (!pageMeta) {
    return res;
  }
  console.log("page found");
  console.log(pageMeta);
  // 書き換え
  let html = await res.text();
  if (pageMeta.name) {
    html = html.replaceAll(
      "FlutterKaigi 2023",
      pageMeta.name + " - FlutterKaigi 2023"
    );
  }
  if (pageMeta.description) {
    html = html.replaceAll(
      "2023年、日本国内でFlutterをメインに扱う技術カンファレンス。FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。",
      pageMeta.description
    );
  }
  html = html.replaceAll(
    "https://flutterkaigi.jp/2023/assets/flutterkaigi_ogp.png",
    `https://${reqUrl.hostname}/2023/assets/` + pageMeta.path + ".png"
  );
  return new Response(html, {
    status: 200,
    headers: {
      "Content-Type": "text/html",
    },
  });
});

export const onRequest = handle(app);
