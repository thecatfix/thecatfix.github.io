---
layout: post
title: 'You Bet Your Ass I just created a custom domain for this page'
date: 2024-07-13
---

# What A BEATING

## I honestly do not see the point of companies publishing help pages any more. I am using Perplexity for EVERYTHING

## So here is how I linked the page thecatfix.github.io to johnshelburne.com:

To link a custom domain name to your GitHub Pages site, follow these step-by-step instructions:

## Step 1: Purchase a Domain

If you haven't already, purchase a custom domain from a domain registrar such as GoDaddy, Google Domains, or any other provider.

## Step 2: Configure DNS Settings

You need to configure the DNS settings of your domain to point to GitHub Pages. This involves creating A and AAAA records.

### Add A Records

1. **Log in to your domain registrar's website** and navigate to the DNS management section.
2. **Create four A records** with the following details:
   - **Type**: A
   - **Name**: @ (this represents the apex domain, e.g., example.com)
   - **Value**:
     - 185.199.108.153
     - 185.199.109.153
     - 185.199.110.153
     - 185.199.111.153
   - **TTL**: Set to the default value or your preference.

### Add AAAA Records (Optional for IPv6)

1. **Create four AAAA records** with the following details:
   - **Type**: AAAA
   - **Name**: @
   - **Value**:
     - 2606:50c0:8000::153
     - 2606:50c0:8001::153
     - 2606:50c0:8002::153
     - 2606:50c0:8003::153
   - **TTL**: Set to the default value or your preference.

### Add CNAME Record for www Subdomain (Optional)

1. **Create a CNAME record** with the following details:
   - **Type**: CNAME
   - **Name**: www
   - **Value**: your-github-username.github.io
   - **TTL**: Set to the default value or your preference.

## Step 3: Update GitHub Repository Settings

1. **Go to your GitHub repository** where your site is hosted.
2. **Navigate to the repository settings** by clicking on the **Settings** tab.
3. **Scroll down to the "Pages" section**.
4. **In the "Custom domain" field**, enter your custom domain (e.g., example.com).
5. **Click "Save"**.

## Step 4: Verify DNS Configuration

1. **Use a DNS propagation checker tool** like [DNS Checker](https://dnschecker.org) or [What's My DNS](https://www.whatsmydns.net) to verify that your DNS records have propagated correctly.
2. **Use the `dig` command** in your terminal to confirm the DNS settings:
   ```sh
   dig example.com +noall +answer -t A
   dig example.com +noall +answer -t AAAA
   ```

## Step 5: Enforce HTTPS (Optional)

1. **In the GitHub Pages settings**, check the box for **"Enforce HTTPS"**. This may take some time to become available.

## Troubleshooting

- **DNS Propagation**: DNS changes can take up to 48 hours to propagate fully.
- **Clear Cache**: Clear your browser cache if the changes do not appear immediately.

By following these steps, you will successfully link your custom domain to your GitHub Pages site. For more detailed information, you can refer to the [GitHub documentation](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)[1][2][3].

Citations:
[1] https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site
[2] https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/about-custom-domains-and-github-pages
[3] https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site
[4] https://dnschecker.org
[5] https://phoenixnap.com/kb/linux-dig-command-examples
[6] https://richpauloo.github.io/2019-11-17-Linking-a-Custom-Domain-to-Github-Pages/
[7] https://github.com/github/docs/blob/main/content/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site.md
[8] https://www.whatsmydns.net
[9] https://www.youtube.com/watch?v=rIXWUJ5U8bY
[10] https://dev.to/sidmohanty11/how-to-add-a-custom-domain-to-github-pages-hostinger-edition-p4p
