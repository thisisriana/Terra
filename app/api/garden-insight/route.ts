import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const { prompt } = await request.json();

  const response = await fetch("https://api.anthropic.com/v1/messages", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "x-api-key": process.env.ANTHROPIC_API_KEY!,
      "anthropic-version": "2023-06-01",
    },
    body: JSON.stringify({
      model: "claude-sonnet-4-6",
      max_tokens: 300,
      messages: [{ role: "user", content: prompt }],
    }),
  });

  const data = await response.json();
  const text = data.content?.find((b: { type: string; text?: string }) => b.type === "text")?.text ?? "";

  return NextResponse.json({ text });
}
