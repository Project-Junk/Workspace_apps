.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Landroid/os/storage/StorageManager;

.field private d:Landroid/os/UserManager;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/storage/VolumeInfo;

.field private g:Landroid/os/storage/VolumeInfo;

.field private h:J

.field private i:J

.field private j:Lcom/android/settingslib/deviceinfo/d;

.field private k:Landroid/content/pm/UserInfo;

.field private l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Landroidx/preference/Preference;

.field private r:Z

.field private final s:Lcom/android/settingslib/deviceinfo/d$c;

.field private final t:Landroid/os/storage/StorageEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a:[I

    const/4 v0, 0x6

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f12155f
        0x7f121568
    .end array-data

    :array_1
    .array-data 4
        0x7f12155f
        0x7f121566
        0x7f121569
        0x7f121560
        0x7f121568
        0x7f121567
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->m:Ljava/util/List;

    .line 124
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->n:Ljava/util/List;

    .line 550
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->s:Lcom/android/settingslib/deviceinfo/d$c;

    .line 675
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->t:Landroid/os/storage/StorageEventListener;

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    return-void
.end method

.method private static varargs a(Lcom/android/settingslib/deviceinfo/d$b;I[Ljava/lang/String;)J
    .locals 5

    .line 662
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/d$b;->f:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 664
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    .line 665
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PrivateVolumeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-wide v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo p1, "vnd.android.document/root"

    .line 542
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.DEFAULT"

    .line 545
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method private a(Landroidx/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;
    .locals 2

    .line 276
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->o:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->n:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_0
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 284
    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 285
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->o:I

    return-object v0
.end method

.method static a(Landroid/os/Bundle;J)V
    .locals 1

    const-string/jumbo v0, "volume_size"

    .line 341
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroidx/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 4

    const v0, 0x7f121568

    if-ne p2, v0, :cond_1

    .line 298
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skipping System storage because its size is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrivateVolumeSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p4, v0, :cond_1

    return-void

    .line 308
    :cond_1
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->m:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->d()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_3

    .line 315
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    :goto_1
    const p2, 0x7f120d60

    .line 321
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 322
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->a:I

    .line 323
    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 324
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    return-void
.end method

.method private static a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    .line 270
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 271
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/d$b;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v6, v2

    move-wide v8, v6

    move-wide v10, v8

    move v2, v4

    .line 6563
    :goto_0
    iget v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    if-ge v2, v3, :cond_1

    .line 6564
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 6565
    iget v12, v3, Lcom/android/settings/deviceinfo/StorageItemPreference;->a:I

    .line 6568
    :try_start_0
    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v13, v4

    :goto_1
    if-eqz v13, :cond_0

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_3

    .line 6594
    :pswitch_0
    new-array v13, v15, [Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-static {v1, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settingslib/deviceinfo/d$b;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 6596
    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    .line 6574
    :pswitch_1
    iget-wide v12, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 6575
    iget-wide v12, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    goto :goto_2

    .line 6612
    :pswitch_2
    new-array v5, v15, [Ljava/lang/String;

    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v13, v5, v4

    invoke-static {v1, v12, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settingslib/deviceinfo/d$b;I[Ljava/lang/String;)J

    move-result-wide v13

    .line 6614
    iget-object v5, v1, Lcom/android/settingslib/deviceinfo/d$b;->g:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v15

    add-long/2addr v10, v13

    add-long/2addr v8, v15

    add-long/2addr v15, v13

    add-long/2addr v6, v15

    move-object v5, v3

    goto :goto_3

    .line 6586
    :pswitch_3
    new-array v13, v14, [Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v14, v13, v4

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v14, v13, v15

    invoke-static {v1, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settingslib/deviceinfo/d$b;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 6588
    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 6628
    :pswitch_4
    iget-wide v12, v1, Lcom/android/settingslib/deviceinfo/d$b;->c:J

    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 6629
    iget-wide v12, v1, Lcom/android/settingslib/deviceinfo/d$b;->c:J

    goto :goto_2

    :pswitch_5
    const/4 v13, 0x5

    .line 6602
    new-array v13, v13, [Ljava/lang/String;

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v13, v4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v13, v15

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v1, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settingslib/deviceinfo/d$b;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 6606
    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 6580
    :pswitch_6
    iget-object v13, v1, Lcom/android/settingslib/deviceinfo/d$b;->e:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    invoke-direct {v0, v3, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 6581
    iget-object v3, v1, Lcom/android/settingslib/deviceinfo/d$b;->e:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    goto :goto_2

    .line 6635
    :cond_0
    iget-object v13, v1, Lcom/android/settingslib/deviceinfo/d$b;->d:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 6636
    invoke-direct {v0, v3, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    :goto_2
    add-long/2addr v6, v12

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 6644
    iget-wide v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    iget-wide v12, v1, Lcom/android/settingslib/deviceinfo/d$b;->b:J

    sub-long/2addr v2, v12

    sub-long v12, v2, v6

    add-long v14, v8, v10

    add-long/2addr v14, v12

    .line 6647
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    const-string v5, "Other items: \n\tmTotalSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v17, v14

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " availSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/settingslib/deviceinfo/d$b;->b:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " usedSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n\taccountedSize: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " unaccountedSize size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n\ttotalMiscSize: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " totalDownloadsSize: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n\tdetails: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivateVolumeSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v16

    move-wide/from16 v14, v17

    .line 6652
    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f12155f
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f121566
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2

    .line 657
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    .line 134
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->e:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 16

    move-object/from16 v0, p0

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 203
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->b()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 213
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 215
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->d:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    .line 218
    :goto_0
    iget-object v8, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->g:Landroid/os/storage/VolumeInfo;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    .line 220
    :goto_1
    iput v6, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->p:I

    .line 221
    iput v6, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->o:I

    move v9, v6

    move v10, v9

    :goto_2
    const/4 v11, 0x0

    if-ge v9, v4, :cond_7

    .line 226
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 227
    iget-object v13, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->k:Landroid/content/pm/UserInfo;

    invoke-static {v13, v12}, Lcom/android/settings/m;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v7, :cond_3

    .line 228
    iget-object v13, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 229
    invoke-direct {v0, v2, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v2

    .line 230
    :goto_3
    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-eqz v8, :cond_4

    .line 2290
    sget-object v14, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->b:[I

    goto :goto_4

    :cond_4
    sget-object v14, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a:[I

    :goto_4
    move v15, v6

    .line 2291
    :goto_5
    array-length v5, v14

    if-ge v15, v5, :cond_5

    .line 2292
    aget v5, v14, v15

    invoke-direct {v0, v13, v5, v11, v12}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    sub-int v5, v4, v10

    if-lez v5, :cond_9

    const v5, 0x7f121596

    .line 238
    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 237
    invoke-direct {v0, v2, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    move-result-object v5

    move v7, v6

    :goto_6
    if-ge v7, v4, :cond_9

    .line 240
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 241
    iget-object v10, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->k:Landroid/content/pm/UserInfo;

    invoke-static {v10, v9}, Lcom/android/settings/m;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 242
    iget-object v10, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v5, v6, v10, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    const v3, 0x7f121561

    const/16 v4, -0x2710

    .line 247
    invoke-direct {v0, v2, v3, v11, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    if-eqz v8, :cond_a

    .line 250
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->q:Landroidx/preference/Preference;

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 253
    :cond_a
    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 254
    iget-wide v4, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    sub-long/2addr v4, v2

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4, v5, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v2

    .line 259
    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v7, 0x7f12159f

    invoke-virtual {v0, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-object v9, v2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v9, v8, v6

    iget-object v2, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f1215b0

    new-array v7, v9, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    .line 262
    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v6

    .line 261
    invoke-virtual {v0, v3, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    iget-wide v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->a(JJ)V

    .line 265
    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->j:Lcom/android/settingslib/deviceinfo/d;

    .line 3125
    new-instance v2, Lcom/android/settingslib/deviceinfo/d$a;

    invoke-direct {v2, v1, v6}, Lcom/android/settingslib/deviceinfo/d$a;-><init>(Lcom/android/settingslib/deviceinfo/d;B)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/deviceinfo/d$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    iput-boolean v6, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->r:Z

    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private d()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .line 328
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08053b

    .line 329
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 152
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->d:Landroid/os/UserManager;

    .line 153
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->e:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string/jumbo v5, "volume_size"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    .line 160
    iget-wide v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    sub-long v7, v5, v0

    iput-wide v7, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_0

    .line 165
    iput-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->h:J

    .line 166
    iput-wide v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->i:J

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->g:Landroid/os/storage/VolumeInfo;

    .line 172
    new-instance v0, Lcom/android/settingslib/deviceinfo/d;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->g:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settingslib/deviceinfo/d;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->j:Lcom/android/settingslib/deviceinfo/d;

    .line 173
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->j:Lcom/android/settingslib/deviceinfo/d;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->s:Lcom/android/settingslib/deviceinfo/d$c;

    .line 1115
    iget-object v1, p1, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1116
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_3
    const p1, 0x7f15008e

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 183
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->l:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 184
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->d:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->k:Landroid/content/pm/UserInfo;

    .line 1334
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121581

    .line 1335
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1336
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->q:Landroidx/preference/Preference;

    .line 188
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->r:Z

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0019

    .line 381
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 372
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->j:Lcom/android/settingslib/deviceinfo/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3129
    iput-object v1, v0, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 426
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.os.storage.extra.VOLUME_ID"

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 463
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 435
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    .line 437
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const v0, 0x7f12158c

    .line 4063
    invoke-virtual {p1, v3, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 440
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v5

    .line 429
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    return v5

    .line 432
    :pswitch_2
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$a;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$a;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v5

    .line 453
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 458
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 444
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const v0, 0x7f121583

    .line 5063
    invoke-virtual {p1, v3, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 449
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v5

    :pswitch_data_0
    .packed-switch 0x7f0a0656
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 366
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->t:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 470
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 474
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const v3, 0x7f121581

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const-string v3, "com.android.providers.media.documents"

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo v1, "videos_root"

    .line 501
    invoke-static {v3, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto/16 :goto_2

    .line 507
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->a(Landroidx/fragment/app/Fragment;)V

    return v2

    .line 512
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->g:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V

    return v2

    :pswitch_3
    const-string v1, "images_root"

    .line 498
    invoke-static {v3, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_2

    .line 518
    :pswitch_4
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->a(Landroidx/fragment/app/Fragment;)V

    return v2

    :pswitch_5
    const-string v1, "audio_root"

    .line 504
    invoke-static {v3, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_2

    .line 481
    :pswitch_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 482
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    .line 483
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "classname"

    .line 482
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "volumeUuid"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "volumeName"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    const-string v5, "storageType"

    .line 486
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    new-instance v3, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 490
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v3

    .line 491
    invoke-virtual {v3, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    const v3, 0x7f120205

    .line 6063
    invoke-virtual {v1, v4, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v4

    goto :goto_2

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->g:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    const-string p1, "android.intent.extra.USER_ID"

    .line 532
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    invoke-static {p0, v4}, Lcom/android/settings/m;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return v2

    .line 537
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 526
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->a(Landroidx/fragment/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f12155f
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f121566
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 386
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a065a

    .line 388
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0659

    .line 389
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a065b

    .line 390
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0a0656

    .line 391
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0a0658

    .line 392
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0a0657

    .line 393
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 397
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "private"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 398
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 405
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const p1, 0x7f121585

    .line 412
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 418
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    .line 419
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 420
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v6, v7

    .line 417
    :goto_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 346
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->f:Landroid/os/storage/VolumeInfo;

    .line 350
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->t:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 357
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->r:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->c()V

    return-void

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->b()V

    return-void
.end method
