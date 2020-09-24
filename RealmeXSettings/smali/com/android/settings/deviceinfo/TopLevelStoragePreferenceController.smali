.class public Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelStoragePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TopLevelStoragePreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "show_origin_storage"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 45
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getAvailabilityStatus: shouldShow: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TopLevelStoragePreferenceController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$null$0$TopLevelStoragePreferenceController(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/b;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/android/settingslib/deviceinfo/b;->b:J

    long-to-double v2, v2

    div-double/2addr p3, v2

    .line 65
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    iget-object p2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    iget-wide p3, p5, Lcom/android/settingslib/deviceinfo/b;->a:J

    .line 66
    invoke-static {p2, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const p2, 0x7f1215a1

    .line 64
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$refreshSummary$1$TopLevelStoragePreferenceController(Landroidx/preference/Preference;)V
    .locals 8

    .line 57
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 59
    new-instance v1, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {v1, v0}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/b;->a(Lcom/android/settingslib/deviceinfo/e;)Lcom/android/settingslib/deviceinfo/b;

    move-result-object v6

    .line 61
    iget-wide v0, v6, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-wide v4, v6, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v0, v4

    long-to-double v4, v0

    .line 63
    new-instance v7, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$TVcDa0GiGmmH5jFBpPHlZmsPHRU;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$TVcDa0GiGmmH5jFBpPHlZmsPHRU;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/b;)V

    invoke-static {v7}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
