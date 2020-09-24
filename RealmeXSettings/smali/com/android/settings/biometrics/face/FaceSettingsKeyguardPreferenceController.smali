.class public Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.source "FaceSettingsKeyguardPreferenceController.java"


# static fields
.field private static final DEFAULT:I = 0x1

.field static final KEY:Ljava/lang/String; = "security_settings_face_keyguard"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_keyguard"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method private adminDisabled()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->adminDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "face_unlock_keyguard_enabled"

    .line 62
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->getUserId()I

    move-result v1

    const-string v2, "face_unlock_keyguard_enabled"

    .line 68
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->adminDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
