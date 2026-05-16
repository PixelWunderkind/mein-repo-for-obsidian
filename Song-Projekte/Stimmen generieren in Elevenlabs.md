

# 📘 4‑Zeiler für ElevenLabs‑Stimmen


## 🔹 Übersicht

- Drei optimierte Test‑Vierzeiler
- Jeweils für **Frauenstimme**, **Männerstimme** und **beide Stimmen**
- Enthalten: Style‑Keywords, deutscher Vierzeiler, englische Version

---

## 🔸 Details

### **1. Frauenstimme – „The Fragile Ghost“**

**Style‑Keywords:** breathy intimacy, heavy vocal fry, emotive cracking, whisper‑soft delivery, androgynous alto

**Test‑Vierzeiler (Deutsch):**

- (breathy exhale)… So le‑ise… wie der Re‑gen fällt…
- ver‑liert sich mei‑ne Stim‑me… in der Welt…
- (voice breaking)… WAR‑UM… ist alles so leer…
- Ein letz‑tes Mal… Samt‑blau… und dann nichts mehr…

**Test‑Vierzeiler (Englisch):**

- (breathy exhale)… As quiet… as the rain falls…
- my voice fades away… into the world…
- (voice breaking)… WHY… is everything so empty…
- One last time… velvet blue… and then nothing more…

---

### **2. Männerstimme – „The Gritty Soul“**

**Style‑Keywords:** raspy baritone, strained emotional delivery, soulful grit, distant reverb‑drenched vocals, post‑grunge mumble

**Test‑Vierzeiler (Deutsch):**

- (excited, maniacal) (low rasp) Der Asphalt brennt... noch immer. 
- (rapidly) Zähl die Stunden... im blassen Schimmer.
- (strained, shouting) ICH GEH... durch das dunkle Tor!
- (deep breath) (maniacal laughter)
- (whispery, silly) Es war nie... so still... wie zuvor.

**Test-Vierzeiler: „The Burning Gate“ (Englisch)**
 
- (low rasp) The asphalt is burning... it still is... 
- (whispery) Counting the hours... in this pale... fading shimmer...
- (strained, shouting) I AM GOING... through the dark gates!
- (deep breath)
- (maniacal laughter) It has never been... so quiet...
- (deep booming) SO QUIET... before.
---

### **3. Für Mann & Frau – Universeller Test‑Vierzeiler**

**Ziel:** Belastungstest für KI‑Stimmen (Brüche, Flüstern, Dynamik)

**Test‑Vierzeiler (Deutsch):**

- (whispered)… Nur ein Hauch von dir…
- geblieben im kalten Licht…
- ICH SCHREI… (voice cracks)… doch der Wind antwortet nicht…
- Nur das Samt‑blau… der Nacht…

---

## 🔻 Zusammenfassung

Für die Verwendung als **Audio-Input für Suno** (Hard Rock/Emo-Trap) ist die Stabilität der kritischste Regler. Da Suno eine klare, aber ausdrucksstarke Vorlage braucht, um den Rhythmus und die Tonhöhe zu extrahieren, empfehle ich folgende Konfiguration:

### Die optimalen Settings für den deutschen Input

| Regler | Wert | Grund |
| --- | --- | --- |
| **Stability** | **25% – 35%** | **Niedrig:** Erlaubt der Stimme das „Kippen“ (Breaking), was für Hard Rock Screams und Emo-Trap-Emotionen essenziell ist. Zu hoch klingt es zu monoton/robotisch für Musik. |
| **Similarity** | **70% – 80%** | **Hoch:** Stellt sicher, dass die „Oger“-Textur (das Grollen) über den ganzen Text hinweg erhalten bleibt und nicht in eine Standardstimme abdriftet. |
| **Style Exaggeration** | **85% – 100%** | **Maximum:** Verstärkt die manischen und theatralischen Ausbrüche, die Suno als Signal für „Energy“ in den Instrumentals nutzt. |

### ElevenLabs Settings für den englischen Input

| Regler | Wert | Zweck für Suno |
| --- | --- | --- |
| **Stability** | **28%** | Genug Varianz für "Grittiness", aber stabil genug für das englische Pacing. |
| **Similarity** | **75%** | Erhält die Oger-Textur (Gravelly Tone). |
| **Style Exaggeration** | **95%** | Maximale emotionale Ausbeute aus den Tags `(strained)` und `(maniacal)`. |





 
