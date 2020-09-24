.class final Lcom/android/settings/users/UserSettings$6;
.super Lcom/android/settings/search/a;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1323
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1347
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/search/a;->getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p2

    .line 1349
    new-instance p3, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v0, "user_settings_add_users_when_locked"

    invoke-direct {p3, p1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p3, p2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1351
    new-instance p3, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1352
    invoke-virtual {p3, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1353
    new-instance p3, Lcom/android/settings/users/a;

    invoke-direct {p3, p1, v0}, Lcom/android/settings/users/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1354
    invoke-virtual {p3, p2}, Lcom/android/settings/users/a;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1355
    new-instance p3, Lcom/android/settings/users/b;

    invoke-direct {p3, p1, v0}, Lcom/android/settings/users/b;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 1356
    invoke-virtual {p3, p2}, Lcom/android/settings/users/b;->updateNonIndexableKeys(Ljava/util/List;)V

    return-object p2
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 1335
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f150134

    .line 1338
    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f080987

    .line 1339
    iput p1, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 1340
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1327
    invoke-static {p1}, Lcom/android/settings/users/f;->a(Landroid/content/Context;)Lcom/android/settings/users/f;

    move-result-object v0

    .line 1328
    new-instance v1, Lcom/coloros/settings/feature/accounts/controller/ColorMultiUserPreferenceController;

    const-string v2, "user_settings_title"

    invoke-direct {v1, p1, v2}, Lcom/coloros/settings/feature/accounts/controller/ColorMultiUserPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1329
    iget-boolean p1, v0, Lcom/android/settings/users/f;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/settings/feature/accounts/controller/ColorMultiUserPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
