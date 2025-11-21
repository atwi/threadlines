# Custom Domain Setup Guide

This guide will help you connect your custom domain `threadlines.net` to your GitHub Pages site.

## Step 1: Configure DNS Settings

You need to add DNS records with your domain registrar (whoever you bought `threadlines.net` from). Here are the records you need to add:

### Option A: Using A Records (Recommended)

Add the following **A records** pointing to GitHub's IP addresses:

```
Type: A
Name: @ (or leave blank for root domain)
Value: 185.199.108.153

Type: A
Name: @ (or leave blank for root domain)
Value: 185.199.109.153

Type: A
Name: @ (or leave blank for root domain)
Value: 185.199.110.153

Type: A
Name: @ (or leave blank for root domain)
Value: 185.199.111.153
```

### Add CNAME Record for www Subdomain

```
Type: CNAME
Name: www
Value: <your-github-username>.github.io.
```

Replace `<your-github-username>` with your actual GitHub username.

### Option B: Using ALIAS or ANAME Records

If your DNS provider supports ALIAS or ANAME records (providers like DNSimple, DNS Made Easy, etc.):

```
Type: ALIAS or ANAME
Name: @ (or leave blank for root domain)
Value: <your-github-username>.github.io.
```

## Step 2: Configure GitHub Pages

1. Go to your repository on GitHub: `https://github.com/<username>/threadlines`

2. Click on **Settings** (top menu)

3. In the left sidebar, click on **Pages**

4. Under "Build and deployment":
   - **Source**: Should be set to "GitHub Actions"

5. Under "Custom domain":
   - Enter `threadlines.net` in the text box
   - Click **Save**

6. Wait a few minutes, then check the box for **Enforce HTTPS** (this will appear after DNS is verified)

## Step 3: Verify DNS Configuration

DNS changes can take anywhere from a few minutes to 48 hours to propagate. You can check if your DNS is configured correctly by running:

```bash
dig threadlines.net +noall +answer
dig www.threadlines.net +noall +answer
```

You should see the GitHub IP addresses or your GitHub Pages domain in the results.

## Step 4: Test Your Site

Once DNS has propagated and GitHub has verified your domain:

1. Visit `https://threadlines.net` - your site should load
2. Visit `https://www.threadlines.net` - should redirect to your main domain
3. Check that HTTPS is working (green lock icon in browser)

## Common DNS Provider Instructions

### Namecheap
1. Log in to Namecheap
2. Go to Domain List → Manage
3. Click "Advanced DNS"
4. Add the A records and CNAME record as specified above

### GoDaddy
1. Log in to GoDaddy
2. Go to My Products → DNS
3. Add the A records and CNAME record as specified above

### Cloudflare
1. Log in to Cloudflare
2. Select your domain
3. Go to DNS settings
4. Add the A records and CNAME record
5. **Important**: Set the proxy status to "DNS only" (gray cloud) initially

### Google Domains
1. Log in to Google Domains
2. Select your domain
3. Go to DNS settings
4. Add custom resource records as specified above

## Troubleshooting

### Site not loading after 24 hours
- Double-check your DNS records are correct
- Verify the CNAME file is in your repository root
- Check GitHub Pages settings to ensure custom domain is configured

### HTTPS not working
- Make sure "Enforce HTTPS" is enabled in GitHub Pages settings
- Wait 24-48 hours after DNS configuration for SSL certificate to be issued
- Try disabling and re-enabling the custom domain in GitHub settings

### DNS errors in GitHub Pages
- Verify all 4 A records are added correctly
- Make sure there are no conflicting records (remove old A or CNAME records)
- Wait for DNS propagation (can take up to 48 hours)

## Additional Resources

- [GitHub Pages Custom Domain Documentation](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [Managing a custom domain for your GitHub Pages site](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)
- [Verifying your custom domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages)

