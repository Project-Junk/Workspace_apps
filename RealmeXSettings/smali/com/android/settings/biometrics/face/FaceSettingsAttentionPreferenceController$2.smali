.class final Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;
.super Landroid/hardware/face/FaceManager$GetFeatureCallback;
.source "FaceSettingsAttentionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$GetFeatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(ZIZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$200(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
