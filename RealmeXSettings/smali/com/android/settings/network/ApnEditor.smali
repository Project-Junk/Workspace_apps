.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$a;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field private static final J:[Ljava/lang/String;

.field private static final K:[Ljava/lang/String;

.field static a:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final w:Ljava/lang/String; = "ApnEditor"


# instance fields
.field private A:I

.field private B:Landroid/telephony/TelephonyManager;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:[Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private H:Z

.field private I:Landroid/net/Uri;

.field b:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field j:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field l:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field m:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field n:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field o:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field p:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field q:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field r:Landroidx/preference/TwoStatePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field s:Landroidx/preference/MultiSelectListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field t:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field u:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field v:Lcom/android/settings/network/ApnEditor$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string/jumbo v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mcc"

    const-string v10, "mnc"

    const-string v11, "numeric"

    const-string v12, "mmsproxy"

    const-string v13, "mmsport"

    const-string v14, "authtype"

    const-string/jumbo v15, "type"

    const-string v16, "protocol"

    const-string v17, "carrier_enabled"

    const-string v18, "bearer"

    const-string v19, "bearer_bitmask"

    const-string v20, "roaming_protocol"

    const-string v21, "mvno_type"

    const-string v22, "mvno_match_data"

    const-string v23, "edited"

    const-string/jumbo v24, "user_editable"

    .line 149
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->J:[Ljava/lang/String;

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string/jumbo v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string/jumbo v12, "type"

    const-string v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string v17, "roaming_protocol"

    .line 177
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->K:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/android/settings/network/ApnEditor;->C:I

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$a;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/ApnEditor;->J:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1300
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1301
    new-instance v2, Lcom/android/settings/network/ApnEditor$a;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/network/ApnEditor$a;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 1293
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 1303
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v1, :cond_4

    .line 1306
    sget-object v0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Can\'t get apnData from Uri "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 346
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "%02d"

    goto :goto_0

    :cond_0
    const-string v1, "%03d"

    :goto_0
    const/4 v2, 0x1

    .line 347
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private a(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;
    .locals 2

    .line 643
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 649
    :try_start_0
    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method private a(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 661
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    .line 664
    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1086
    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$GYOVfsw0Q4O4d7fBdqymmV_Hk4Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$GYOVfsw0Q4O4d7fBdqymmV_Hk4Y;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a(Z)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    .line 519
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    invoke-virtual {v3, v2}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 532
    iget-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->z:Z

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->B:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->A:I

    invoke-virtual {p1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 537
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 541
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 542
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor;->x:Ljava/lang/String;

    .line 544
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->y:Ljava/lang/String;

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_1

    .line 549
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 554
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v4, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 557
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v3, 0x12

    invoke-virtual {p1, v3, v1}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/ApnEditor;->C:I

    .line 559
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 560
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 562
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->C:I

    if-nez v1, :cond_5

    const-string v1, "0"

    .line 563
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v1, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_4

    .line 569
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 576
    :cond_5
    :goto_3
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->C:I

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->C:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->C:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_6
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 582
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 584
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 585
    iget-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->z:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->D:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 586
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 589
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 591
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 595
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 601
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 607
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 612
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 615
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    aget-object p1, v1, p1

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 617
    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    :goto_4
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    .line 622
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 623
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    .line 624
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {p1, v1}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    .line 626
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 627
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 631
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 633
    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$a;->a(I)Ljava/lang/Integer;

    move-result-object p5

    if-nez p4, :cond_1

    .line 878
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-eqz p4, :cond_2

    .line 880
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p4
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object p5

    if-nez p4, :cond_2

    .line 852
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 853
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    .line 856
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p4
.end method

.method static a([Ljava/lang/String;)Z
    .locals 6

    .line 369
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 373
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    .line 374
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 375
    sget-object p0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    const-string v0, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 378
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 379
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_3
    sget-object p0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    const-string v0, "hasAllApns: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 396
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 400
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/ApnEditor;->a([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, ","

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 407
    array-length v0, p1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 408
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 409
    sget-object p0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "apnTypesMatch: true because match found for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_3
    sget-object p0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    const-string p1, "apnTypesMatch: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 681
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 682
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 688
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->H:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->G:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 690
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    .line 691
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 692
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    if-eqz p1, :cond_7

    .line 693
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 694
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 695
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->B:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 696
    :cond_4
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 697
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->B:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->A:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 698
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 699
    :cond_5
    aget-object p1, v3, v0

    const-string v1, "GID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 700
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->B:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 701
    :cond_6
    aget-object p1, v3, v0

    const-string v1, "ICCID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 702
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 703
    sget-object p1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mMvnoMatchDataStr: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 710
    :cond_7
    :goto_2
    :try_start_0
    aget-object p1, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2
.end method

.method private synthetic b(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1091
    sget-object p1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t add a new apn to database "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1095
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 6

    .line 476
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, -0x1

    .line 2424
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "authtype"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "password"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "mmsport"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "proxy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "port"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto/16 :goto_2

    :sswitch_8
    const-string v5, "mmsc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v5, "mnc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_a
    const-string v5, "mcc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v5, "apn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_c
    const-string v5, "mvno_match_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto :goto_2

    :sswitch_d
    const-string v5, "server"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_e
    const-string v5, "protocol"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_2

    :sswitch_f
    const-string v5, "roaming_protocol"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_2

    :sswitch_10
    const-string v5, "bearer_bitmask"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto :goto_2

    :sswitch_11
    const-string v5, "bearer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto :goto_2

    :sswitch_12
    const-string v5, "carrier_enabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto :goto_2

    :sswitch_13
    const-string v5, "mmsproxy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_14
    const-string v5, "mvno_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_3

    .line 2465
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2463
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    goto :goto_3

    .line 2461
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    goto :goto_3

    .line 2458
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    goto :goto_3

    .line 2456
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    goto :goto_3

    .line 2454
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    goto :goto_3

    .line 2452
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    goto :goto_3

    .line 2450
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2448
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2446
    :pswitch_9
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2444
    :pswitch_a
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2442
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2440
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2438
    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2436
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2434
    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2432
    :pswitch_10
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2430
    :pswitch_11
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2428
    :pswitch_12
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    goto :goto_3

    .line 2426
    :pswitch_13
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    :goto_3
    if-eqz v3, :cond_1

    .line 479
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Z
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 896
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->H:Z

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v0, :cond_0

    return v6

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 901
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 902
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 903
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 905
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 5149
    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->a(Lcom/android/settings/network/ApnEditor;)V

    return v11

    .line 911
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 914
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->z:Z

    const/4 v5, 0x1

    const-string v2, "name"

    move-object v0, p0

    move-object v1, v12

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/4 v5, 0x2

    const-string v2, "apn"

    move-object v3, v8

    .line 921
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 927
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    .line 929
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v2, "proxy"

    move-object v0, p0

    .line 927
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 933
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    .line 935
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v2, "port"

    move-object v0, p0

    .line 933
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 939
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    .line 941
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string v2, "mmsproxy"

    move-object v0, p0

    .line 939
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 945
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    .line 947
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string v2, "mmsport"

    move-object v0, p0

    .line 945
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 951
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    .line 953
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string/jumbo v2, "user"

    move-object v0, p0

    .line 951
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 957
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    .line 959
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v2, "server"

    move-object v0, p0

    .line 957
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 963
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    .line 965
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v2, "password"

    move-object v0, p0

    .line 963
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 969
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    .line 971
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v2, "mmsc"

    move-object v0, p0

    .line 969
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 975
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 979
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object v0, p0

    move-object v1, v12

    .line 977
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    .line 986
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string v2, "protocol"

    move-object v0, p0

    move-object v1, v12

    .line 984
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 990
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    .line 992
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v2, "roaming_protocol"

    move-object v0, p0

    .line 990
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 998
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    move-object v0, p0

    .line 996
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0x9

    const-string v2, "mcc"

    move-object v3, v9

    .line 1002
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0xa

    const-string v2, "mnc"

    move-object v3, v10

    .line 1008
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->y:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1017
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->y:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "current"

    .line 1018
    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 1024
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1025
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v8, v11

    goto :goto_1

    .line 1029
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_5
    move v8, v1

    :goto_1
    const/16 v5, 0x13

    const-string v2, "bearer_bitmask"

    move-object v0, p0

    move-object v1, v12

    move v3, v8

    .line 1032
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v8, :cond_7

    .line 1039
    iget v0, p0, Lcom/android/settings/network/ApnEditor;->C:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1041
    :cond_6
    invoke-static {v8, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1042
    iget v0, p0, Lcom/android/settings/network/ApnEditor;->C:I

    move v3, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v11

    :goto_3
    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object v0, p0

    move-object v1, v12

    .line 1049
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 1055
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    .line 1057
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object v0, p0

    .line 1055
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1061
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    .line 1063
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object v0, p0

    .line 1061
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1067
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    .line 1069
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object v0, p0

    move-object v1, v12

    .line 1067
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v1, "edited"

    .line 1073
    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_9

    .line 1076
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 5351
    iget-object v0, v0, Lcom/android/settings/network/ApnEditor$a;->a:Landroid/net/Uri;

    if-nez v0, :cond_8

    .line 1076
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 6351
    iget-object v0, v0, Lcom/android/settings/network/ApnEditor$a;->a:Landroid/net/Uri;

    .line 1077
    :goto_4
    invoke-direct {p0, v0, v12}, Lcom/android/settings/network/ApnEditor;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_9
    return v6
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 1160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1163
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 v0, 0x0

    .line 1164
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const/16 v1, 0x2a

    .line 1165
    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 1161
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/ApnEditor;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 8

    const-string v0, "carrier_config"

    .line 1190
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_3

    .line 1192
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->A:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "apn_default_values_strings_array"

    .line 1194
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1196
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1197
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1198
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7225
    sget-object v3, Lcom/android/settings/network/ApnEditor;->K:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 7226
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7229
    :cond_2
    sget-object v3, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not configurable"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v5, :cond_0

    .line 1200
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 8209
    invoke-static {v2}, Lcom/android/settings/network/ApnEditor;->f(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 8211
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 8372
    iget-object v4, v4, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    aput-object v3, v4, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 9

    .line 1235
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1237
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    .line 1239
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1243
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v5

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 1245
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ia"

    .line 1246
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "emergency"

    .line 1247
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "mcx"

    .line 1248
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    const-string v8, ","

    .line 1252
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1257
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    sget-object v1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/settings/network/ApnEditor;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1185
    sget-object v0, Lcom/android/settings/network/ApnEditor;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static f(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1216
    :goto_0
    sget-object v1, Lcom/android/settings/network/ApnEditor;->J:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1217
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic lambda$GYOVfsw0Q4O4d7fBdqymmV_Hk4Y(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ApnEditor;->b(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1110
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1113
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12092f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1117
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12092a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_5

    .line 1119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    .line 1121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1122
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12092d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1120
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12092c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_8

    .line 1128
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    .line 1129
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnEditor;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_6

    aget-object v6, v1, v5

    .line 1132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    sget-object v7, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "validateApnData: appending type: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1136
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v4, :cond_7

    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1139
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120929

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150013

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->a:Ljava/lang/String;

    const-string v0, "apn_name"

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_apn"

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_proxy"

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_port"

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_user"

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_server"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_password"

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_proxy"

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_port"

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mmsc"

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mcc"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mnc"

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_type"

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    const-string v0, "auth_type"

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    const-string v0, "apn_protocol"

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    const-string v0, "apn_roaming_protocol"

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    const-string v0, "carrier_enabled"

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    const-string v0, "bearer_multi"

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    const-string v0, "mvno_type"

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    const-string v1, "mvno_match_data"

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_0
    const/4 v4, -0x1

    const-string v5, "sub_id"

    .line 262
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/network/ApnEditor;->A:I

    const/4 v4, 0x0

    .line 264
    iput-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->H:Z

    const/4 v5, 0x0

    .line 265
    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    .line 266
    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->G:[Ljava/lang/String;

    const-string v6, "carrier_config"

    .line 269
    invoke-virtual {p0, v6}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    if-eqz v6, :cond_2

    .line 271
    iget v7, p0, Lcom/android/settings/network/ApnEditor;->A:I

    invoke-virtual {v6, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "read_only_apn_types_string_array"

    .line 273
    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    .line 275
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 276
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    array-length v8, v7

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 277
    sget-object v11, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "onCreate: read only APN type: "

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "read_only_apn_fields_string_array"

    .line 280
    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/network/ApnEditor;->G:[Ljava/lang/String;

    :cond_2
    const-string v6, "android.intent.action.EDIT"

    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "android.intent.action.INSERT"

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 288
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    sget-object p1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Edit request not for carrier table. Uri: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    .line 293
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 294
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    .line 295
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 296
    sget-object p1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->I:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    .line 300
    :cond_4
    iput-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->z:Z

    .line 301
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->D:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->E:Ljava/lang/String;

    :cond_5
    if-eqz v5, :cond_6

    .line 312
    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->a(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    goto :goto_1

    .line 314
    :cond_6
    new-instance v0, Lcom/android/settings/network/ApnEditor$a;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->J:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$a;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 315
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->c()V

    :cond_7
    :goto_1
    const-string v0, "phone"

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->B:Landroid/telephony/TelephonyManager;

    .line 322
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v1, 0x17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v0, v8

    goto :goto_2

    :cond_8
    move v0, v4

    .line 325
    :goto_2
    sget-object v1, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate: EDITED "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_a

    .line 327
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v1, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/ApnEditor$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->F:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    const/16 v2, 0xf

    .line 328
    invoke-virtual {v1, v2}, Lcom/android/settings/network/ApnEditor$a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnEditor;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 329
    :cond_9
    sget-object v0, Lcom/android/settings/network/ApnEditor;->w:Ljava/lang/String;

    const-string v1, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->H:Z

    .line 1488
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->b:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1489
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->c:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1490
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->d:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1491
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->e:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1492
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->f:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1493
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->g:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1494
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1495
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->l:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1496
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->m:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1497
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->i:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->j:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1499
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->k:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1500
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->o:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 1501
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 1502
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->r:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 1505
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->u:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_3

    .line 332
    :cond_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->G:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->G:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->b([Ljava/lang/String;)V

    :cond_b
    :goto_3
    move v0, v4

    .line 336
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    if-nez p1, :cond_d

    move v4, v8

    .line 340
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->a(Z)V

    return-void

    .line 304
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 770
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 772
    iget-boolean p2, p0, Lcom/android/settings/network/ApnEditor;->z:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/network/ApnEditor;->H:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    const v1, 0x7f120d77

    .line 773
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x7f0806ca

    .line 774
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 p2, 0x2

    const v1, 0x7f120d84

    .line 776
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x108004e

    .line 777
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p2, 0x3

    const v1, 0x7f120d76

    .line 778
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x1080038

    .line 779
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 820
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    return p3

    .line 823
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 784
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 798
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return v1

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    :cond_2
    return v1

    .line 3153
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 3351
    iget-object p1, p1, Lcom/android/settings/network/ApnEditor$a;->a:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 3154
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 4351
    iget-object v0, v0, Lcom/android/settings/network/ApnEditor$a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 3154
    invoke-virtual {p1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3155
    new-instance p1, Lcom/android/settings/network/ApnEditor$a;

    sget-object v0, Lcom/android/settings/network/ApnEditor;->J:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p1, v0}, Lcom/android/settings/network/ApnEditor$a;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor;->v:Lcom/android/settings/network/ApnEditor$a;

    .line 787
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 718
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    .line 719
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 721
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 722
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030007

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 725
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->n:Landroidx/preference/ListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    return v2

    :cond_0
    const-string v1, "apn_protocol"

    .line 729
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 735
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->p:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    .line 736
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 737
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->a(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 742
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->q:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    .line 743
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 744
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    .line 748
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 749
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->s:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    .line 750
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 751
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    .line 755
    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 756
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->t:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v1, "apn_password"

    .line 757
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 758
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->h:Landroidx/preference/EditTextPreference;

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_9
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Lcom/android/settings/network/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v1, "carrier_enabled"

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p2, :cond_b

    .line 762
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Lcom/android/settings/network/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 804
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 805
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p2, 0x1

    .line 806
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
