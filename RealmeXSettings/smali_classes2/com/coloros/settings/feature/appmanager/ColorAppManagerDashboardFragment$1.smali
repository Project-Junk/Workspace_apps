.class final Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment$1;
.super Lcom/android/settings/search/a;
.source "ColorAppManagerDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    const-string v2, "special_access"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "default_apps_manager"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "system_unloadable_app_retrieve"

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coloros/settings/feature/appmanager/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.coloros.apprecover"

    .line 152
    invoke-static {p1, v1}, Lcom/coloros/settings/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "system_unloadable_app_retrieve_rekey"

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v1, "defaultApp_key"

    .line 110
    iput-object v1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v1, 0x7f08098c

    .line 111
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120f4c

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    .line 113
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {p1, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 115
    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "android.intent.action.MAIN"

    .line 116
    iput-object v3, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const-string v3, "com.google.android.permissioncontroller"

    .line 117
    iput-object v3, v0, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    const-string v3, "com.android.packageinstaller.role.ui.DefaultAppListActivity"

    .line 118
    iput-object v3, v0, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "action.coloros.safecenter.DefaultAppListActivity"

    .line 120
    iput-object v3, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 122
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "system_unloadable_app_retrieve_rekey"

    .line 125
    iput-object v3, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 126
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v1, 0x7f121672

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 128
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-static {p1, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string p1, "com.coloros.apprecover.APPRECOVER_DISPLAY_LIST"

    .line 130
    iput-object p1, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 131
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    nop

    :array_0
    .array-data 4
        0x7f1201fd
        0x7f120f4c
    .end array-data

    :array_1
    .array-data 4
        0x7f1201fd
        0x7f121672
    .end array-data
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

    .line 100
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15003e

    .line 101
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f08098c

    .line 102
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 103
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
