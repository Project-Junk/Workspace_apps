.class public Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;
.super Lcom/android/settings/core/a;
.source "FaceSettingsFooterPreferenceController.java"


# static fields
.field private static final ANNOTATION_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "footer_preference"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120ab0

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/settings/utils/a$a;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "url"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/utils/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1213c5

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/settings/utils/a$a;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 58
    invoke-static {v0, v2}, Lcom/android/settings/utils/a;->a(Ljava/lang/CharSequence;[Lcom/android/settings/utils/a$a;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
