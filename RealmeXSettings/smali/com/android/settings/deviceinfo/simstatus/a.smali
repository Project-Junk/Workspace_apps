.class public final Lcom/android/settings/deviceinfo/simstatus/a;
.super Lcom/android/settingslib/deviceinfo/a;
.source "SimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Landroid/telephony/TelephonyManager;

.field protected final b:Landroid/telephony/SubscriptionManager;

.field private final c:Landroidx/fragment/app/Fragment;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/a;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    const-string v0, "phone"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->a:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "telephony_subscription_service"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/a;->b:Landroid/telephony/SubscriptionManager;

    .line 54
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/a;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->mContext:Landroid/content/Context;

    const v2, 0x7f1214e6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v1

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/a;->mContext:Landroid/content/Context;

    const v0, 0x7f1214e5

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/a;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1085
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1133
    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    add-int v2, v0, v1

    .line 1086
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1087
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sim_status"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 79
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sim_status"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    const/4 p1, 0x0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2119
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/a;->b:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x1

    .line 2120
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2123
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2124
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 2128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/a;->mContext:Landroid/content/Context;

    const v2, 0x7f120781

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
