.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/datausage/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$a;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# instance fields
.field private a:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field private b:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field private c:Landroid/net/NetworkTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 342
    sget-object v0, Lcom/android/settings/datausage/-$$Lambda$8OVPcv5kTC8gT04-WlnzUsWnMOo;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$8OVPcv5kTC8gT04-WlnzUsWnMOo;

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private a(I)Landroidx/preference/Preference;
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 202
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private a(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    const v0, 0x7f15007e

    .line 171
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->a(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/f;->b(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a(Lcom/android/settings/datausage/g$a;)V

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mobile_category"

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f150082

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->a(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 185
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    return-void
.end method

.method private l()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    .line 243
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 244
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 245
    instance-of v3, v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_0

    .line 246
    check-cast v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a(Lcom/android/settings/datausage/g$a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUsageSummary"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 158
    invoke-static {p1}, Lcom/android/settings/datausage/f;->e(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->b:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 159
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->b:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->b:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object v0
.end method

.method public final c()Lcom/android/settingslib/d;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    return-object v0
.end method

.method public final d()Landroid/net/NetworkTemplate;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->c:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 268
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->l()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->b:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->a:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aab

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15007d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/android/settings/datausage/f;->b(Landroid/content/Context;)Z

    move-result v0

    .line 91
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 95
    :cond_0
    invoke-static {p1, v1}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->c:Landroid/net/NetworkTemplate;

    const-string v3, "status_header"

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->a:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->f()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "restrict_background"

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)Z

    .line 101
    :cond_2
    invoke-static {p1}, Lcom/android/settings/datausage/f;->c(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->e:Landroid/telephony/SubscriptionManager;

    .line 104
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1166
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/settings/datausage/DataUsageSummary;->a(ILandroid/telephony/SubscriptionInfo;)V

    :cond_4
    move v1, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_5

    .line 111
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {p0, v7, v6}, Lcom/android/settings/datausage/DataUsageSummary;->a(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 2166
    invoke-direct {p0, v6, v5}, Lcom/android/settings/datausage/DataUsageSummary;->a(ILandroid/telephony/SubscriptionInfo;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_6
    invoke-static {p1}, Lcom/android/settings/datausage/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 119
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->h()V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    .line 125
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->h()V

    .line 127
    :cond_8
    :goto_2
    invoke-static {p1}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f15007f

    .line 2190
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 2191
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->e:Lcom/android/settings/datausage/g$a;

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    .line 130
    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "status_header"

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 136
    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a(Lcom/android/settings/datausage/d;Z)V

    return p1

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 209
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->l()V

    return-void
.end method
