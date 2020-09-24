.class final Lcom/android/settings/datausage/DataUsageList$6;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->d(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    .line 550
    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageList;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->d(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageList;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->e(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 553
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageList;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->d(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageList;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p2}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    .line 528
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->b(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    .line 1167
    iget-wide v0, p2, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    .line 2087
    iput-wide v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->b:J

    .line 528
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    .line 529
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->b(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    .line 2171
    iget-wide v0, p2, Lcom/android/settings/datausage/ChartDataUsagePreference;->b:J

    .line 3092
    iput-wide v0, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->c:J

    .line 529
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p2, p2, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    .line 3100
    iput-object p2, p1, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 3105
    new-instance p2, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;-><init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;B)V

    return-object p2
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 524
    check-cast p2, Landroid/app/usage/NetworkStats;

    .line 3536
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageList;->e:Lcom/android/settings/datausage/g$a;

    iget-object p1, p1, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1

    .line 3538
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0, p2, p1}, Lcom/android/settings/datausage/DataUsageList;->a(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V

    .line 3539
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList$6;->a()V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/app/usage/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$6;->a:Lcom/android/settings/datausage/DataUsageList;

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->a(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V

    .line 545
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList$6;->a()V

    return-void
.end method
