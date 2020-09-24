.class public Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelSecurityEntryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121385

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121384

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/TopLevelSecurityEntryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121386

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
