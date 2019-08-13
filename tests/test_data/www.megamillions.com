User-agent: *
Allow: /

# Attempt to block noisy test crawler that accesses malformed URLs
User-Agent: Test Certificate Info
Disallow: /