.class public Lcom/coloros/settings/feature/security/ColorSecuritySettings;
.super Lcom/android/settings/security/SecuritySettings;
.source "ColorSecuritySettings.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Lcom/coloros/settings/feature/security/ColorSecuritySettings$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/security/SecuritySettings;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/security/ColorSecuritySettings;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/coloros/settings/feature/security/ColorSecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorShowPasswordPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorShowPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 139
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;

    invoke-direct {v2, p0, p2}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/security/ColorSecuritySettings;)V

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 147
    new-instance v4, Lcom/android/settings/security/a;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/security/a;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v4, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 154
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v5, "security_category_profile"

    invoke-direct {v4, p0, v5}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v4, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;

    const-string v5, "lockscreen_preferences"

    invoke-direct {v4, p0, v5}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 165
    new-instance v4, Lcom/android/settings/security/b;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/security/b;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    new-instance v4, Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v4, v2}, Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    .line 167
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_3

    .line 172
    new-instance v2, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_3
    new-instance v2, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lcom/coloros/settings/feature/security/controller/RecommendSafetyAppController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/RecommendSafetyAppController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;

    const-string v4, "manage_device_admin"

    invoke-direct {v2, p0, v4}, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/android/settings/enterprise/q;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/q;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lcom/coloros/settings/feature/security/controller/a;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Lcom/android/settings/security/d;

    invoke-direct {v2, p0}, Lcom/android/settings/security/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lcom/android/settings/security/ResetCredentialsPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/security/ResetCredentialsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Lcom/coloros/settings/feature/security/controller/UserExperienceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/UserExperienceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/coloros/settings/feature/security/controller/UserExperienceFooterController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/UserExperienceFooterController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorDevicesIdentifyPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorDevicesIdentifyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lcom/coloros/settings/feature/security/controller/FeedbackLogController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/FeedbackLogController;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "oppo_feedback_log_category"

    invoke-direct {v2, p0, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/FeedbackLogFooterController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v2, Lcom/coloros/settings/feature/security/controller/b;

    const-string v3, "security_cell_broadcast_settings"

    invoke-direct {v2, p0, v3}, Lcom/coloros/settings/feature/security/controller/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v2, Lcom/coloros/settings/feature/security/controller/b;

    const-string v3, "security_cell_broadcast_records"

    invoke-direct {v2, p0, v3}, Lcom/coloros/settings/feature/security/controller/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v2, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 214
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 215
    iget-object p0, p2, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-nez p0, :cond_4

    .line 216
    new-instance p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object p0, p2, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 217
    iget-object p0, p2, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 219
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/a;

    .line 220
    instance-of v1, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, p2, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static b(Landroid/content/Context;I)Z
    .locals 1

    .line 305
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 310
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    .line 312
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "e="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorSecuritySettings"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "telephony_subscription_service"

    .line 1287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const-string v1, "phone"

    .line 1289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    .line 1291
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1295
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1296
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-static {p0, v3}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "carrier_config"

    .line 1321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 1322
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "hide_sim_lock_settings_bool"

    .line 1324
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/security/ColorSecuritySettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/security/ColorSecuritySettings;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/preference/PreferenceCategory;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string p1, "security_settings_misc_category"

    .line 243
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150063

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 273
    const-class v0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/security/SecuritySettings;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/security/SecuritySettings;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Landroidx/fragment/app/Fragment;)V

    .line 103
    new-instance p1, Lcom/coloros/settings/feature/security/ColorSecuritySettings$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings$1;-><init>(Lcom/coloros/settings/feature/security/ColorSecuritySettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a:Landroid/database/ContentObserver;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/settings/security/SecuritySettings;->onDetach()V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->b:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/android/settings/security/SecuritySettings;->onPause()V

    .line 268
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 248
    invoke-super {p0}, Lcom/android/settings/security/SecuritySettings;->onResume()V

    const-string v0, "security_settings_misc_category"

    .line 249
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v0, :cond_0

    .line 251
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 256
    :cond_0
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1213f4

    .line 257
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->setTitle(I)V

    .line 259
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.location.MODE_CHANGED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    .line 262
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a:Landroid/database/ContentObserver;

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
