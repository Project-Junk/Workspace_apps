.class public final Lcom/coloros/settings/feature/deviceinfo/controller/k;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorSecurityPatchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_patch"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/settingslib/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/k;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 59
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v1, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelPreferenceController;->INTENT_URI_DATA:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/coloros/settings/utils/ba;->a()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "SecurityPatchController"

    const-string v0, "queryIntentActivities() returns empty"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public final isAvailable()Z
    .locals 1

    .line 44
    invoke-static {}, Lcom/android/settingslib/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
