.class public final Lcom/android/settings/deviceinfo/storage/c;
.super Lcom/android/settingslib/core/a;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public e:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public f:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public g:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public h:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public i:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public j:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final k:Landroidx/fragment/app/Fragment;

.field private final l:Lcom/android/settingslib/core/instrumentation/d;

.field private final m:Lcom/android/settingslib/deviceinfo/e;

.field private n:Landroid/os/storage/VolumeInfo;

.field private o:Landroidx/preference/PreferenceScreen;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/e;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 103
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    .line 104
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/c;->m:Lcom/android/settingslib/deviceinfo/e;

    .line 105
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/c;->l:Lcom/android/settingslib/core/instrumentation/d;

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/e;B)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/e;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/c;->p:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    .line 227
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010429

    aput v2, v0, v1

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 230
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 231
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private a(I)Landroid/os/Bundle;
    .locals 2

    .line 392
    new-instance v0, Landroid/os/Bundle;

    add-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/c;->p:Z

    const-string/jumbo v1, "workProfileOnly"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    iget p1, p0, Lcom/android/settings/deviceinfo/storage/c;->a:I

    const-string/jumbo v1, "workId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->o:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->m:Lcom/android/settingslib/deviceinfo/e;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/e;->a(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->o:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->i:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->o:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->i:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/c;->a()V

    return-void
.end method

.method public final a(Landroid/util/SparseArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
            ">;I)V"
        }
    .end annotation

    .line 251
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->d:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->d:J

    add-long/2addr v1, v3

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->c:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->e:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->b:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->f:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->g:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->h:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 264
    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v0, v0, Lcom/android/settingslib/applications/f$c;->a:J

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v2, v2, Lcom/android/settingslib/applications/f$c;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v2, v2, Lcom/android/settingslib/applications/f$c;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v2, v2, Lcom/android/settingslib/applications/f$c;->d:J

    sub-long/2addr v0, v2

    iget-object p2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v2, p2, Lcom/android/settingslib/applications/f$c;->e:J

    sub-long/2addr v0, v2

    .line 270
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/c;->i:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    .line 272
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/c;->j:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    .line 276
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 277
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    .line 278
    iget-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 284
    iget-object v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->a:J

    iget-object v2, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v5, v2, Lcom/android/settingslib/applications/f$c;->e:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x40000000

    .line 288
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/c;->b:J

    sub-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 289
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->j:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 237
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/c;->o:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_photos_videos"

    .line 238
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->d:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_music_audio"

    .line 239
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->e:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_games"

    .line 240
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->f:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_movies"

    .line 241
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->g:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_other_apps"

    .line 242
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->h:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_system"

    .line 243
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->j:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_files"

    .line 244
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/c;->i:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 246
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/c;->a()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pref_other_apps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "pref_system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v2, "pref_movies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "pref_music_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :sswitch_4
    const-string v2, "pref_photos_videos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v2, "pref_games"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string v2, "pref_files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v6

    :goto_1
    const-string/jumbo v2, "volumeName"

    const-string/jumbo v8, "volumeUuid"

    const-string v9, "storageType"

    const-string v10, "classname"

    const/4 v11, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 161
    :pswitch_0
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SystemInfo"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v7

    .line 6399
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->m:Lcom/android/settingslib/deviceinfo/e;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-interface {v1, v2}, Lcom/android/settingslib/deviceinfo/e;->a(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v11

    .line 157
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    const/16 v3, 0x349

    new-array v4, v0, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto/16 :goto_3

    .line 150
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_5

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 5354
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/storage/c;->a(I)Landroid/os/Bundle;

    move-result-object v1

    .line 5355
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    .line 5356
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5355
    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5357
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5359
    new-instance v2, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 5360
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    const v3, 0x7f120205

    .line 6063
    invoke-virtual {v2, v11, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v2

    .line 5362
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 5363
    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 5364
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    :goto_2
    move-object v11, v1

    goto/16 :goto_3

    .line 4380
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/storage/c;->a(I)Landroid/os/Bundle;

    move-result-object v1

    .line 4381
    const-class v2, Lcom/android/settings/Settings$MoviesStorageActivity;

    .line 4382
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4381
    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4383
    new-instance v2, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 4384
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    const v3, 0x7f12158f

    .line 5063
    invoke-virtual {v2, v11, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v2

    .line 4386
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 4387
    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 4388
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v11

    goto/16 :goto_3

    .line 3368
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/storage/c;->a(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3369
    const-class v2, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 3370
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3369
    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    new-instance v2, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 3372
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    const v3, 0x7f120a38

    .line 4063
    invoke-virtual {v2, v11, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v2

    .line 3374
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 3375
    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 3376
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v11

    goto/16 :goto_3

    .line 2332
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 2336
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/storage/c;->a(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2337
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    .line 2338
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2337
    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->n:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2342
    new-instance v2, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 2343
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    const v3, 0x7f121590

    .line 3063
    invoke-virtual {v2, v11, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v2

    .line 2345
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 2346
    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 2347
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_2

    .line 1317
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/storage/c;->a(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1318
    const-class v2, Lcom/android/settings/Settings$PhotosStorageActivity;

    .line 1319
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1318
    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    new-instance v2, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1324
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    const v3, 0x7f121598

    .line 2063
    invoke-virtual {v2, v11, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v2

    .line 1326
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    .line 1327
    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 1328
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v11

    :cond_5
    :goto_3
    if-eqz v11, :cond_7

    .line 168
    iget p1, p0, Lcom/android/settings/deviceinfo/storage/c;->a:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v11, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6404
    :try_start_0
    invoke-virtual {v11, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_6

    .line 6410
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v11, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 6412
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/c;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v11, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 6416
    :catch_0
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No activity found for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageItemPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v7

    .line 174
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61e7a6a5 -> :sswitch_6
        -0x61dd2e5b -> :sswitch_5
        -0x58bcf846 -> :sswitch_4
        0x10e4e120 -> :sswitch_3
        0x313de4df -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x4534fddd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
