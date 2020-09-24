.class public final Lcom/android/settings/nfc/d;
.super Lcom/android/settings/nfc/b;
.source "NfcEnabler.java"


# instance fields
.field private final c:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/b;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 43
    iget-object p1, p0, Lcom/android/settings/nfc/d;->c:Landroidx/preference/TwoStatePreference;

    .line 1062
    iget-object v2, p0, Lcom/android/settings/nfc/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/nfc/d;->a:Landroid/content/Context;

    .line 1063
    invoke-static {v2}, Lcom/android/settings/nfc/NfcPreferenceController;->shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1066
    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/d;->a:Landroid/content/Context;

    .line 1067
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    .line 1066
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    .line 43
    :cond_6
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method
