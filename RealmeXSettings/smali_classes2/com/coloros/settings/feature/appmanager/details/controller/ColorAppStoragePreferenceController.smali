.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;
.source "ColorAppStoragePreferenceController.java"


# static fields
.field private static final KEY_STORAGE_USE:Ljava/lang/String; = "storage_use"

.field private static final TAG:Ljava/lang/String; = "ColorAppStoragePreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getArguments()Landroid/os/Bundle;
    .locals 3

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getMultiAppUserId()I

    move-result v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getStorageSummary(Lcom/android/settingslib/applications/f$a;Z)Ljava/lang/CharSequence;
    .locals 7

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1205cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const p2, 0x7f1215a6

    goto :goto_0

    :cond_1
    const p2, 0x7f1215a7

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1215a2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    .line 66
    invoke-interface {p1}, Lcom/android/settingslib/applications/f$a;->d()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 67
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/settingslib/applications/f$a;->d()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "app_detail_storage"

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "1"

    .line 79
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "package_name"

    .line 80
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppStoragePreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 49
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 52
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->mLastResult:Lcom/android/settingslib/applications/f$a;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppStoragePreferenceController;->getStorageSummary(Lcom/android/settingslib/applications/f$a;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
