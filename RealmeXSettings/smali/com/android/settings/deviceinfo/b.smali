.class public final Lcom/android/settings/deviceinfo/b;
.super Lcom/android/settingslib/core/a;
.source "FeedbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/android/settings/deviceinfo/b;->a:Landroidx/fragment/app/Fragment;

    .line 40
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.BUG_REPORT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/b;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "device_feedback"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_feedback"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/b;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/b;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/b;->b:Landroid/content/Intent;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/coloros/settings/utils/ax;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/deviceinfo/b;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/b;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/b;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method
