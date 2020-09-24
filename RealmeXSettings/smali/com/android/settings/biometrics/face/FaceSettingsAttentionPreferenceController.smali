.class public Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.source "FaceSettingsAttentionPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "security_settings_face_require_attention"


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field private final mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

.field private mToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_require_attention"

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 59
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 75
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/hardware/face/FaceManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_settings_face_require_attention"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/FaceManager;->getFeature(ILandroid/hardware/face/FaceManager$GetFeatureCallback;)V

    return v1
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/hardware/face/FaceManager;->setFeature(IZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V

    return v3
.end method

.method public setToken([B)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mToken:[B

    return-void
.end method
