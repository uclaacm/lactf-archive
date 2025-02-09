/** @type {import('next').NextConfig} */
export default {
  reactStrictMode: true,
  async redirects() {
    return [{ source: "/", destination: "/index.html", permanent: true }]
  }
}
