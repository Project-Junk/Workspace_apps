.class public final Lcom/android/settings/deviceinfo/storage/d;
.super Lcom/android/settingslib/core/a;
.source "StorageSummaryDonutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    const p2, 0x7f1215a0

    .line 55
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v0, p2, v1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "pref_summary"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/d;->c:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 62
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/d;->c:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_summary"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 68
    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/d;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/d;->a:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/d;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/d;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/d;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/d;->b:J

    .line 71
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1215af

    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/d;->a:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/d;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    long-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 1060
    iput-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->a:D

    .line 73
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    return-void
.end method
