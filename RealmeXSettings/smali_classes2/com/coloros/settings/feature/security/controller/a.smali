.class public final Lcom/coloros/settings/feature/security/controller/a;
.super Lcom/android/settings/security/c;
.source "ColorCredentialStoragePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/security/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 31
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/a;->a:Landroid/security/KeyStore;

    .line 33
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120648

    goto :goto_0

    :cond_0
    const v1, 0x7f120649

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
