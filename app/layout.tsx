import type { Metadata } from "next";
import "./globals.css";
export const metadata:Metadata={title:"Kesana Kemari Travel | Jelajah Dunia, Ciptakan Cerita",description:"Demo website Kesana Kemari Travel."};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="id"><body>{children}</body></html>}