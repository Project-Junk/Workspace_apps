.class public Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.source "FaceSettingsAppPreferenceController.java"


# static fields
.field private static final DEFAULT:I = 0x1

.field static final KEY:Ljava/lang/String; = "security_settings_face_app"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_app"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "face_unlock_app_enabled"

    .line 57
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->getUserId()I

    move-result v1

    const-string v2, "face_unlock_app_enabled"

    .line 63
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
