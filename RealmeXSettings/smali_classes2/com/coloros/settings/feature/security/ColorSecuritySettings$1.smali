.class final Lcom/coloros/settings/feature/security/ColorSecuritySettings$1;
.super Landroid/database/ContentObserver;
.source "ColorSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorSecuritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorSecuritySettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorSecuritySettings;Landroid/os/Handler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings$1;->a:Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    const-string p1, "ColorSecuritySettings"

    const-string v0, "mLocationModeObserver onChange()"

    .line 106
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings$1;->a:Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    .line 1376
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 1377
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    .line 1378
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 1379
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1380
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 1381
    invoke-virtual {v2}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1385
    invoke-virtual {v2}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 1386
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "DashboardFragment"

    if-eqz v4, :cond_2

    .line 1387
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 1388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Preference key is %s in Controller %s"

    .line 1387
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1392
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1394
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 1395
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Cannot find preference with key %s in Controller %s"

    .line 1394
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "location"

    .line 1398
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1399
    invoke-virtual {v2, v4}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    :cond_4
    return-void
.end method
