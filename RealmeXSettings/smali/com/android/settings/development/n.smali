.class public final Lcom/android/settings/development/n;
.super Lcom/android/settingslib/development/b;
.source "MemoryUsagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private a:Lcom/android/settings/applications/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/n;->d:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/n;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const p1, 0x7f120d71

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic c()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/n;->a:Lcom/android/settings/applications/v;

    invoke-virtual {v0}, Lcom/android/settings/applications/v;->b()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/n;->a:Lcom/android/settings/applications/v;

    .line 2118
    iget-object v0, v0, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 64
    iget-object v1, p0, Lcom/android/settings/development/n;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/settings/applications/v$a;->a:D

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/android/settings/development/n;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/applications/v$a;->c:D

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/android/settings/development/-$$Lambda$n$BqGHUx-dgADNu1uM1htzRAdWlJc;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/development/-$$Lambda$n$BqGHUx-dgADNu1uM1htzRAdWlJc;-><init>(Lcom/android/settings/development/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$76UR-t-G85tDkX6imWURsJhJyEc(Lcom/android/settings/development/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/n;->c()V

    return-void
.end method

.method public static synthetic lambda$BqGHUx-dgADNu1uM1htzRAdWlJc(Lcom/android/settings/development/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 1081
    new-instance p1, Lcom/android/settings/applications/v;

    iget-object v0, p0, Lcom/android/settings/development/n;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/v;-><init>(Landroid/content/Context;Z)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/development/n;->a:Lcom/android/settings/applications/v;

    .line 2076
    iget-object p1, p0, Lcom/android/settings/development/n;->a:Lcom/android/settings/applications/v;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide v1, v0, v1

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/applications/v;->a(J)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "memory"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 61
    new-instance p1, Lcom/android/settings/development/-$$Lambda$n$76UR-t-G85tDkX6imWURsJhJyEc;

    invoke-direct {p1, p0}, Lcom/android/settings/development/-$$Lambda$n$76UR-t-G85tDkX6imWURsJhJyEc;-><init>(Lcom/android/settings/development/n;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
