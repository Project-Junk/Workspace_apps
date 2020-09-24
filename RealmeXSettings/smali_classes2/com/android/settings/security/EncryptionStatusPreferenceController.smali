.class public Lcom/android/settings/security/EncryptionStatusPreferenceController;
.super Lcom/android/settings/core/a;
.source "EncryptionStatusPreferenceController.java"


# static fields
.field static final PREF_KEY_ENCRYPTION_DETAIL_PAGE:Ljava/lang/String; = "encryption_and_credentials_encryption_status"

.field static final PREF_KEY_ENCRYPTION_SECURITY_PAGE:Ljava/lang/String; = "encryption_and_credential"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "user"

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_and_credentials_encryption_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    const-string v1, "encryption_and_credentials_encryption_status"

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f120662

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-class v0, Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    const v0, 0x7f120734

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
