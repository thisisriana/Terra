import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Terra — Garden Planning",
  description: "Personalized garden planning for every space and skill level",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
