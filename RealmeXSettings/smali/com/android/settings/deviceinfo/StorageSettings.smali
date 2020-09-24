.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$b;,
        Lcom/android/settings/deviceinfo/StorageSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static e:J


# instance fields
.field private a:Landroid/os/storage/StorageManager;

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Landroidx/preference/PreferenceCategory;

.field private d:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private f:Z

.field private final g:Landroid/os/storage/StorageEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 546
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->f:Z

    .line 120
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->g:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 13

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 149
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 150
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 152
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->d:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 154
    new-instance v1, Lcom/android/settingslib/deviceinfo/c;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    .line 155
    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/b;->a(Lcom/android/settingslib/deviceinfo/e;)Lcom/android/settingslib/deviceinfo/b;

    move-result-object v1

    .line 156
    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 157
    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-wide v6, v1, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v4, v6

    .line 159
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 163
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 165
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 166
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v6}, Lcom/android/settingslib/deviceinfo/b;->a(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v7

    .line 171
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_3

    .line 175
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 176
    :cond_3
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const v10, 0x7f08084e

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 184
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v11

    if-ne v11, v9, :cond_5

    iget-object v11, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    .line 185
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v11

    if-nez v11, :cond_5

    .line 187
    new-instance v11, Landroidx/preference/Preference;

    invoke-direct {v11, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v6, "com.android.internal.R.string.ext_media_status_missing"

    .line 190
    invoke-static {v6}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIcon(I)V

    .line 192
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v11}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 197
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/DiskInfo;

    .line 199
    iget v11, v6, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v11, :cond_7

    iget-wide v11, v6, Landroid/os/storage/DiskInfo;->size:J

    cmp-long v11, v11, v7

    if-lez v11, :cond_7

    .line 200
    new-instance v11, Landroidx/preference/Preference;

    invoke-direct {v11, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v6, "com.android.internal.R.string.ext_media_status_unsupported"

    .line 203
    invoke-static {v6}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIcon(I)V

    .line 205
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v11}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 210
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings;->d:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v5, 0x7f12159f

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/CharSequence;

    iget-object v10, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v8, v6

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-static {v5, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->d:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v4, 0x7f1215b1

    new-array v5, v9, [Ljava/lang/Object;

    .line 213
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 212
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    .line 222
    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->f:Z

    if-nez v0, :cond_b

    .line 225
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->f:Z

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    const-string v2, "private"

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f12159a

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->a()V

    return-void
.end method

.method static synthetic a(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .line 5135
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a97

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 104
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    .line 106
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->e:J

    :cond_0
    const p1, 0x7f15008d

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    const-string p1, "storage_internal"

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->b:Landroidx/preference/PreferenceCategory;

    const-string p1, "storage_external"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->c:Landroidx/preference/PreferenceCategory;

    .line 115
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->d:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 254
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 255
    instance-of p1, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    .line 257
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return v2

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    const v0, 0x7f12156b

    .line 267
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return v2

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "android.os.storage.extra.VOLUME_ID"

    if-ne v3, v2, :cond_4

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "private"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 277
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const v3, 0x7f12159a

    .line 2063
    invoke-virtual {p1, v1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    goto :goto_0

    .line 285
    :cond_3
    invoke-static {p1}, Lcom/android/settingslib/deviceinfo/b;->a(Landroid/os/storage/VolumeInfo;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroid/os/Bundle;J)V

    .line 287
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 288
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 3063
    invoke-virtual {p1, v1, v4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    :goto_0
    return v2

    .line 297
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_6

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3336
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3337
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    .line 3338
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 3341
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3342
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 3344
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 4063
    invoke-virtual {p1, v1, v4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x2a

    .line 3346
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 3347
    invoke-virtual {p1, v3}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 3348
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v2

    .line 299
    :cond_6
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4326
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4327
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    .line 4328
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_7
    return v0

    :cond_8
    const-string p1, "disk:"

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f12156d

    .line 305
    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return v2

    .line 310
    :cond_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.os.storage.extra.FS_UUID"

    .line 311
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 313
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const v3, 0x7f121582

    .line 5063
    invoke-virtual {v0, v1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 316
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v2
.end method

.method public onResume()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->a()V

    return-void
.end method
