.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/preference/PreferenceScreen;

.field private h:Landroid/telephony/SubscriptionManager;

.field private i:I

.field private j:Landroid/content/Context;

.field private k:I

.field private l:[I

.field private m:[Landroid/telephony/PhoneStateListener;

.field private final n:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_sim"

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->d:Ljava/util/List;

    .line 70
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->e:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->k:I

    .line 78
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->k:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->l:[I

    .line 79
    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->m:[Landroid/telephony/PhoneStateListener;

    .line 107
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->n:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    .line 2327
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->j:Landroid/content/Context;

    const-string v0, "phone"

    .line 2328
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2329
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->d()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/sim/SimSettings;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->l:[I

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->e()V

    return-void
.end method

.method private d()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->e:Ljava/util/List;

    const/4 v0, 0x0

    move v2, v0

    .line 118
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->i:I

    if-ge v2, v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 120
    instance-of v4, v3, Lcom/android/settings/sim/SimSettings$a;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v0

    .line 127
    :goto_1
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->i:I

    if-ge v2, v3, :cond_3

    .line 128
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    .line 129
    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 130
    new-instance v4, Lcom/android/settings/sim/SimSettings$a;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, v2}, Lcom/android/settings/sim/SimSettings$a;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 131
    iget v5, p0, Lcom/android/settings/sim/SimSettings;->i:I

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/SimSettings$a;->setOrder(I)V

    .line 132
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 133
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1147
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 1149
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 1150
    instance-of v5, v4, Lcom/android/settings/sim/SimSettings$a;

    if-eqz v5, :cond_4

    .line 1151
    check-cast v4, Lcom/android/settings/sim/SimSettings$a;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings$a;->a()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1157
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->e()V

    const-string v2, "sim_calls"

    .line 1198
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 1199
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->j:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1201
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 1203
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    const v6, 0x7f120473

    .line 1205
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setTitle(I)V

    if-nez v4, :cond_6

    .line 1206
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->j:Landroid/content/Context;

    .line 1207
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1214a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1208
    :cond_6
    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1206
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_4
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v2, "sim_sms"

    .line 2163
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 2164
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    const v4, 0x7f121500

    .line 2165
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    if-eqz v3, :cond_9

    .line 2169
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2170
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_9
    if-nez v3, :cond_b

    const v3, 0x7f1214de

    .line 2172
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2173
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method private e()V
    .locals 6

    const-string v0, "sim_cellular_data"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v2, 0x7f1204cb

    .line 180
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->f()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ril.cdma.inecmmode"

    .line 184
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    move v3, v5

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    if-nez v1, :cond_3

    const v1, 0x7f1214de

    .line 191
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    move v3, v5

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private f()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 359
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->l:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 360
    aget v3, v3, v1

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCallStateIdle "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->j:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const v0, 0x7f150116

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/SimSettings;->i:I

    const-string p1, "sim_cards"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->g:Landroidx/preference/PreferenceScreen;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->i:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->d:Ljava/util/List;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/sim/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 231
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->n:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string v0, "phone"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->k:I

    if-ge v2, v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->m:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 236
    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->m:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->j:Landroid/content/Context;

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 263
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    instance-of v2, p1, Lcom/android/settings/sim/SimSettings$a;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/a;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    check-cast p1, Lcom/android/settings/sim/SimSettings$a;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings$a;->a(Lcom/android/settings/sim/SimSettings$a;)I

    move-result p1

    const-string v0, "slot_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "sim_cellular_data"

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 270
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v2, "sim_calls"

    .line 272
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 273
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "sim_sms"

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 276
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 5

    .line 214
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->h:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->n:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->d()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 219
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "SimSettings"

    const-string v2, "Register for call state change"

    .line 220
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->k:I

    if-ge v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 223
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2248
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->m:[Landroid/telephony/PhoneStateListener;

    new-instance v4, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;I)V

    aput-object v4, v3, v1

    .line 2256
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->m:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 223
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
