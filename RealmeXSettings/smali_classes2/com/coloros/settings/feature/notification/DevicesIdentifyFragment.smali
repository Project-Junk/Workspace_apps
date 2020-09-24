.class public Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DevicesIdentifyFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/id/impl/IdProviderImpl;

.field private b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private c:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 135
    :try_start_0
    new-instance v1, Landroid/app/ColorNotificationManager;

    invoke-direct {v1}, Landroid/app/ColorNotificationManager;-><init>()V

    .line 136
    const-class v2, Landroid/app/IColorNotificationManager;

    const-string v3, "clearOpenid"

    const/4 v4, 0x3

    .line 137
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 138
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicesIdentifyFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DevicesIdentifyFragment"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->mContext:Landroid/content/Context;

    const-string v1, "20012"

    const/4 v2, 0x0

    invoke-static {p2, v1, p1, v0, v2}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x204

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150012

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance p1, Lcom/android/id/impl/IdProviderImpl;

    invoke-direct {p1}, Lcom/android/id/impl/IdProviderImpl;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a:Lcom/android/id/impl/IdProviderImpl;

    const-string p1, "open_devices_identify"

    const-string v0, "1"

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "restrict_advertise_switch"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1127
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1128
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "openid_toggle"

    .line 1127
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1129
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$1;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "reset_advertise_id"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->c:Landroidx/preference/Preference;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->c:Landroidx/preference/Preference;

    new-instance v0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$2;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
