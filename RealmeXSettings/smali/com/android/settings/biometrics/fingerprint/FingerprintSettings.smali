.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SubSettings;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 96
    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1213f2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
