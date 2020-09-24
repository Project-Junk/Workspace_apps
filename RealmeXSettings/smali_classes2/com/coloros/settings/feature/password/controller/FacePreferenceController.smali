.class public Lcom/coloros/settings/feature/password/controller/FacePreferenceController;
.super Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;
.source "FacePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.FACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_setup_face"

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->d()V

    return-void
.end method

.method protected final c()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "face_settings"

    const-string v2, "face_setup"

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->a:Landroidx/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->a:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1, v3}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v0

    .line 45
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->a:Landroidx/preference/PreferenceScreen;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 46
    iget-object v2, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->a:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v1, v0}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_setup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->d()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/FacePreferenceController;->a()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 59
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
