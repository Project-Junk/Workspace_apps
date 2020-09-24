.class public Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.source "FaceSettingsConfirmPreferenceController.java"


# static fields
.field private static final DEFAULT:I = 0x0

.field static final KEY:Ljava/lang/String; = "security_settings_face_require_confirmation"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_require_confirmation"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "face_unlock_always_require_confirmation"

    .line 55
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->getUserId()I

    move-result v1

    const-string v2, "face_unlock_always_require_confirmation"

    .line 61
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
