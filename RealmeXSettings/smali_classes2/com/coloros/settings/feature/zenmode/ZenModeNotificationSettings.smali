.class public Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ZenModeNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:I

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private j:Lcom/coloros/settings/feature/zenmode/b;

.field private k:Lcom/android/settingslib/core/instrumentation/d;

.field private n:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V
    .locals 2

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 288
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 290
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 280
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVisible--parent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",p:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",visible:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeNotificationSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "zen_suppressed_effect_curved_dispaly"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 170
    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    invoke-static {p1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 183
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 184
    invoke-direct {p0, p2, p3}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    .line 264
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    .line 268
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$rxse_n776VlTiKB5HmuIiQApg5g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$rxse_n776VlTiKB5HmuIiQApg5g;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    .line 271
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$0OW3YvHSX6hnVqV_uKsDXLQWLkQ;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$0OW3YvHSX6hnVqV_uKsDXLQWLkQ;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    .line 272
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/coloros/settings/utils/bg$d;->a()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 249
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 250
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->k:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x538

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 251
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->j:Lcom/coloros/settings/feature/zenmode/b;

    const/16 v0, 0x40

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(IZ)V

    const-string p2, "zen_suppressed_effect_badge"

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.coloros.smartdrive"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private synthetic b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 242
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "zen_suppressed_effect_curved_dispaly"

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic c()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.common.support.curved.display"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic c(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 234
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "zen_suppressed_effect_curved_dispaly"

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic d()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private synthetic d(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 228
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    const-string v1, "zen_suppressed_effect_key_gard"

    invoke-static {p2, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 229
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic e(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 219
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 220
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->k:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x536

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 221
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->j:Lcom/coloros/settings/feature/zenmode/b;

    const/16 v0, 0x10

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(IZ)V

    const-string p2, "zen_suppressed_effect_banner"

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic f(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 211
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 212
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->k:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x537

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 213
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->j:Lcom/coloros/settings/feature/zenmode/b;

    const/16 v0, 0x20

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(IZ)V

    const-string p2, "zen_preference_statusbar_key"

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic g(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 198
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 199
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Z)V

    .line 200
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->k:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x53a

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 201
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->j:Lcom/coloros/settings/feature/zenmode/b;

    const/16 v0, 0x100

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(IZ)V

    const-string p2, "zen_suppressed_effect_notification_list"

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(ZLjava/lang/String;)V

    .line 204
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "zen_mode_change_notification"

    .line 205
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    const-string v0, "20012"

    const-string v1, "event_zen_mode_change_notification_ways"

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$0OW3YvHSX6hnVqV_uKsDXLQWLkQ(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c()V

    return-void
.end method

.method public static synthetic lambda$CeHB-fmTMMFOsVS4TJlTEOOQPfY(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->e(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$IEBa75r1Eko47Pm09uGrum3OFDs(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NwQOhc1ZoO6Fe7QIv19NuYxDX64(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$P0e8PFhfCy0SdiDnVayIDavTrwg(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QJVIG_MXV9F9WzFQfrltmtVVC8c(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$S6N8KpbzcZzhOMHKrxu3mgdnXdg(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$rxse_n776VlTiKB5HmuIiQApg5g(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d()V

    return-void
.end method

.method public static synthetic lambda$wUgb8X4otDZH2tOcXPhgu8e0vyE(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ZenModeNotificationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x204

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150156

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    .line 97
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->j:Lcom/coloros/settings/feature/zenmode/b;

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    .line 1146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_mode_notification_other"

    .line 1147
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b:Landroidx/preference/PreferenceCategory;

    const-string p1, "zen_mode_notification"

    .line 1148
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string p1, "zen_mode_statusbar"

    .line 1149
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string p1, "zen_mode_banner"

    .line 1150
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string p1, "zen_mode_keyguard_notification"

    .line 1151
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    const-string p1, "curved_screen_display_label"

    .line 1152
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string p1, "realme_screen_display_label"

    .line 1153
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string p1, "zen_mode_notification_badge"

    .line 1154
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1156
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v0, 0x100

    const-string v1, "zen_suppressed_effect_notification_list"

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;ILjava/lang/String;)V

    .line 1157
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v0, 0x20

    const-string v1, "zen_preference_statusbar_key"

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;ILjava/lang/String;)V

    .line 1158
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v0, 0x10

    const-string v1, "zen_suppressed_effect_banner"

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;ILjava/lang/String;)V

    .line 1159
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v0, 0x40

    const-string v1, "zen_suppressed_effect_badge"

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;ILjava/lang/String;)V

    .line 1160
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;)V

    .line 1161
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Lcom/coloros/settings/widget/preference/SettingSwitchPreference;)V

    .line 1162
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz p1, :cond_0

    .line 1190
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->n:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a:I

    const-string v2, "zen_suppressed_effect_key_gard"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1191
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValueIndex(I)V

    .line 1192
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 1163
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initView: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeNotificationSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->k:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 108
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->a(Z)V

    .line 1197
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$IEBa75r1Eko47Pm09uGrum3OFDs;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$IEBa75r1Eko47Pm09uGrum3OFDs;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1210
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$QJVIG_MXV9F9WzFQfrltmtVVC8c;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$QJVIG_MXV9F9WzFQfrltmtVVC8c;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1218
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->e:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$CeHB-fmTMMFOsVS4TJlTEOOQPfY;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$CeHB-fmTMMFOsVS4TJlTEOOQPfY;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1226
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$P0e8PFhfCy0SdiDnVayIDavTrwg;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$P0e8PFhfCy0SdiDnVayIDavTrwg;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1233
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$S6N8KpbzcZzhOMHKrxu3mgdnXdg;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$S6N8KpbzcZzhOMHKrxu3mgdnXdg;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1241
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$NwQOhc1ZoO6Fe7QIv19NuYxDX64;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$NwQOhc1ZoO6Fe7QIv19NuYxDX64;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1248
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->i:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$wUgb8X4otDZH2tOcXPhgu8e0vyE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$wUgb8X4otDZH2tOcXPhgu8e0vyE;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2122
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v1, 0x7f121b2b

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(I)V

    return-void

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v1, 0x7f121b2c

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(I)V

    return-void
.end method
