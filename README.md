# QBCore to ox_lib Conversion Example

Ein übersichtliches Referenz-Beispiel, das zeigt, wie veraltete QBCore-Standard-Events und Native-UI-Elemente auf moderne `ox_lib`-Standards und `oxmysql` umgestellt werden.

## 🔄 Was wurde optimiert?
* **Notifications:** Ersatz von `QBCore.Functions.Notify` durch `lib.notify`.
* **Progressbars:** Umstieg von `QBCore.Functions.Progressbar` auf `lib.progressBar`.
* **Database:** Migration von `exports.ghmattimysql` / `MySQL.Async` auf moderne `oxmysql`-Prepared-Statements.
* **Context Menus:** Ersatz alter DrawText/NUI-Menüs durch `lib.registerContext`.

## 📌 Verwendung
Kann als Vorlage oder Leitfaden zur Performance-Optimierung von bestehenden QBCore-Skripten genutzt werden.
