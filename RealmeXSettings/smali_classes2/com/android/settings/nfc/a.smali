.class public final Lcom/android/settings/nfc/a;
.super Lcom/android/settings/nfc/b;
.source "AndroidBeamEnabler.java"


# instance fields
.field private final c:Z

.field private final d:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/b;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string v0, "no_outgoing_beam"

    .line 39
    invoke-static {p1, v0, p2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/a;->c:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/nfc/a;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/nfc/a;->c:Z

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_0
    return-void

    .line 59
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/nfc/a;->c:Z

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_outgoing_beam"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->b(Ljava/lang/String;)V

    .line 65
    :goto_1
    iget-object p1, p0, Lcom/android/settings/nfc/a;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f120170

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f12016f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    return-void

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 55
    :cond_5
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/nfc/a;->d:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f120e38

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    return-void
.end method
