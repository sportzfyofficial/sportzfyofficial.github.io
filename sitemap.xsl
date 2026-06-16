<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width,initial-scale=1"/>
        <title>Sportzfy Sitemap</title>
        <style>
          *{box-sizing:border-box}
          body{margin:0;font:15px/1.55 system-ui,-apple-system,Segoe UI,Roboto,Inter,Arial,sans-serif;color:#0f172a;background:#f8fafc}
          .wrap{max-width:1100px;margin:0 auto;padding:32px 20px}
          h1{font-size:1.6rem;margin:0 0 6px;letter-spacing:-.01em}
          .lede{color:#475569;margin:0 0 20px;font-size:.95rem}
          .badge{display:inline-block;background:#dcfce7;color:#065f46;padding:5px 12px;border-radius:999px;font-size:.78rem;font-weight:600;margin-bottom:14px}
          .stats{display:flex;gap:24px;color:#475569;font-size:.88rem;margin:0 0 22px;flex-wrap:wrap}
          .stats b{color:#0f172a}
          .card{background:#fff;border:1px solid #e5e7eb;border-radius:14px;overflow:hidden;box-shadow:0 4px 16px -8px rgba(0,0,0,.06)}
          table{width:100%;border-collapse:collapse;font-size:.92rem}
          th,td{padding:13px 18px;text-align:left;border-bottom:1px solid #e5e7eb;vertical-align:top}
          th{background:#f1f5f9;font-weight:600;color:#475569;font-size:.82rem;text-transform:uppercase;letter-spacing:.04em}
          tr:last-child td{border-bottom:0}
          tr:hover td{background:#f8fafc}
          td.url a{color:#0b6b3a;text-decoration:none;font-weight:500}
          td.url a:hover{text-decoration:underline}
          .pill{display:inline-block;background:#ecfdf5;color:#065f46;padding:3px 10px;border-radius:999px;font-size:.78rem;font-weight:600}
          .priority{font-variant-numeric:tabular-nums;font-weight:600}
          .lastmod{color:#475569;font-variant-numeric:tabular-nums;font-size:.88rem}
          .foot{color:#94a3b8;font-size:.82rem;margin-top:18px;text-align:center}
          .foot a{color:#0b6b3a}
          @media (max-width:640px){
            th:nth-child(3),td:nth-child(3){display:none}
          }
        </style>
      </head>
      <body>
        <div class="wrap">
          <span class="badge">XML Sitemap</span>
          <h1>Sportzfy Sitemap</h1>
          <p class="lede">List of URLs published to search engines. Crawlers read the raw XML; this view is for humans.</p>
          <div class="stats">
            <div>URLs: <b><xsl:value-of select="count(s:urlset/s:url)"/></b></div>
            <div>Schema: <b>sitemaps.org 0.9</b></div>
            <div>Source: <b><a href="/sitemap.xml">/sitemap.xml</a></b></div>
          </div>
          <div class="card">
            <table>
              <thead>
                <tr>
                  <th>URL</th>
                  <th>Last modified</th>
                  <th>Change frequency</th>
                  <th>Priority</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="s:urlset/s:url">
                  <tr>
                    <td class="url">
                      <a>
                        <xsl:attribute name="href"><xsl:value-of select="s:loc"/></xsl:attribute>
                        <xsl:value-of select="s:loc"/>
                      </a>
                    </td>
                    <td class="lastmod"><xsl:value-of select="s:lastmod"/></td>
                    <td><span class="pill"><xsl:value-of select="s:changefreq"/></span></td>
                    <td class="priority"><xsl:value-of select="s:priority"/></td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>
          <p class="foot">Generated for <a href="https://sportzfyofficial.github.io/">sportzfyofficial.github.io</a> · Sportzfy Official APK v23.0</p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
