.class public Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;
.super Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.source "FaceStatusPreferenceController.java"


# static fields
.field private static final KEY_FACE_SETTINGS:Ljava/lang/String; = "face_settings"


# instance fields
.field protected final mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "face_settings"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method


# virtual methods
.method public getEnrollClassName()Ljava/lang/String;
    .locals 1

    .line 71
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 1

    .line 66
    const-class v0, Lcom/android/settings/Settings$FaceSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryTextEnrolled()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1213c1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryTextNoneEnrolled()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1213c2

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledBiometrics()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceSupported()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
