.class final Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;
.super Landroid/hardware/face/FaceManager$SetFeatureCallback;
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

    .line 43
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$SetFeatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 47
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$100(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    .line 53
    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->a:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->getUserId()I

    move-result v0

    const-string v1, "face_unlock_attention_required"

    .line 51
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method
