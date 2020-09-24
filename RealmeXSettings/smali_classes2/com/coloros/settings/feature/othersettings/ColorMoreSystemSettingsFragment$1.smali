.class final Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment$1;
.super Lcom/android/settings/search/a;
.source "ColorMoreSystemSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "storage_settings"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "date_time_settings"

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "language_settings"

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "video_call_effects"

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "play_sellmode"

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "search"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v1, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "timepower_settings"

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_settings"

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "accessibility_settings"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "development_settings"

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isOtgMenuSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/custom/b;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "oppo_otg_connection"

    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-nez p1, :cond_3

    invoke-static {}, Lcom/coloros/settings/utils/bh;->B()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "backup_restore"

    .line 263
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "privacy_settings"

    .line 265
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "privacy_settings_exp"

    .line 266
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-nez p1, :cond_5

    invoke-static {}, Lcom/coloros/settings/utils/al;->m()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const-string p1, "google_settings"

    .line 268
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p1, "camera_effect_settings"

    .line 270
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {}, Lcom/coloros/settings/utils/p;->c()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const-string p1, "sim_toolkit_settings"

    .line 273
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_8
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->b()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "video_beauty_settings"

    .line 278
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string p1, "key_oppo_screen_capture"

    .line 281
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "key_oppo_screen_recording"

    .line 282
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "processes_settings"

    .line 284
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_a
    invoke-static {}, Lcom/coloros/settings/utils/ad;->c()Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "recommend_settings"

    .line 289
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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

    const p2, 0x7f120fe1

    .line 218
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.coloros.providers.downloads.ui"

    const/4 v3, 0x0

    .line 225
    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 230
    new-instance v3, Lcom/android/settings/search/e;

    invoke-direct {v3, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v4, "dataDownloads_key"

    .line 231
    iput-object v4, v3, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v4, 0x7f0809a1

    .line 232
    iput v4, v3, Lcom/android/settings/search/e;->iconResId:I

    .line 233
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 235
    iget-object v1, v3, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment$1;->formatTitleString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string p1, "coloros.intent.action.VIEW_DOWNLOADS"

    .line 237
    iput-object p1, v3, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
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

    .line 210
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1500d6

    .line 211
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f0809a1

    .line 212
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 213
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
