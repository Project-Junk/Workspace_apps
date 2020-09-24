.class public final Lcom/android/settings/nfc/f;
.super Lcom/android/settings/nfc/b;
.source "SecureNfcEnabler.java"


# instance fields
.field private final c:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/b;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f120e4f

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    const v1, 0x7f120e38

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/f;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
