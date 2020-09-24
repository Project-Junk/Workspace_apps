.class public Lcom/coloros/settings/feature/security/location/ColorLocationSettings;
.super Lcom/coloros/settings/feature/security/location/LocationSettingsBase;
.source "ColorLocationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;,
        Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# instance fields
.field private a:Lcom/android/settings/widget/SwitchBar;

.field private b:Landroid/widget/Switch;

.field private c:Z

.field private d:Landroid/os/UserHandle;

.field private e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private f:Landroidx/preference/Preference;

.field private g:Landroidx/preference/PreferenceCategory;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/PreferenceCategory;

.field private j:Landroidx/preference/PreferenceCategory;

.field private k:Landroidx/preference/PreferenceCategory;

.field private l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/coloros/settings/feature/security/location/c;

.field private o:Landroid/os/UserManager;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/os/Handler;

.field private r:Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 730
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$10;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$10;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 785
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->q:Landroid/os/Handler;

    .line 666
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->r:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->q:Landroid/os/Handler;

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Lcom/android/settingslib/g$a;
    .locals 1

    const-string v0, "no_share_location"

    .line 486
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no_config_location"

    .line 489
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "managed_profile_location_category"

    .line 754
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v0, "recent_location_requests"

    .line 757
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "more_settings_category"

    .line 760
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 763
    :cond_2
    invoke-static {}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "location_background_services_control"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/b$a;",
            ">;)V"
        }
    .end annotation

    .line 433
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 434
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 436
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, ","

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/location/b$a;

    iget-object v3, v3, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 445
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top_10_apps_recent_location"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "apps_recent_location"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/security/location/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$3;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    const v1, 0x7f0d00b0

    .line 280
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 281
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 743
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    const-string p1, "loaction_others"

    .line 748
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 749
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Z)Z
    .locals 1

    if-nez p1, :cond_0

    .line 4819
    invoke-static {}, Lcom/coloros/settings/utils/h;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/telephony/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4827
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120c36

    .line 4828
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120c35

    .line 4829
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f12081d

    const/4 v0, 0x0

    .line 4830
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 4831
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "managed_profile_location_category"

    .line 769
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v0, "recent_location_requests"

    .line 772
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "more_settings_category"

    .line 775
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 776
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 779
    :cond_2
    invoke-static {}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "location_background_services_control"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 780
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Z)V

    return-void
.end method

.method private static b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.location.LocAppsOp"

    .line 459
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string v1, "ColorLocationSettings"

    const-string v2, "android.location.LocAppsOp is not find"

    .line 461
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Lcom/coloros/settings/feature/security/location/c;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->n:Lcom/coloros/settings/feature/security/location/c;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/UserManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->o:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-object p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 6

    .line 592
    invoke-static {p1}, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->getLocationString(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 601
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 602
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "no_share_location"

    .line 601
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v2

    .line 603
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 604
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 603
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 608
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    goto :goto_1

    .line 610
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 613
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 614
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 616
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 617
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 619
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eq p1, v2, :cond_5

    .line 621
    iget-boolean v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    if-eqz v2, :cond_4

    .line 622
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 624
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 625
    iget-boolean v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    if-eqz v2, :cond_5

    .line 626
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 2496
    :cond_5
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    .line 2499
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2500
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Landroid/content/Context;I)Lcom/android/settingslib/g$a;

    move-result-object v2

    .line 2660
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_3

    .line 2663
    :cond_6
    iget-object v5, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->o:Landroid/os/UserManager;

    invoke-virtual {v5, v4, v3}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 2503
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 2504
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 2505
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 2506
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;

    invoke-direct {v0, p0, v2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Lcom/android/settingslib/g$a;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 2516
    :cond_7
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    const v2, 0x7f12163c

    if-nez p1, :cond_8

    .line 2520
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 2522
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v3, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const p1, 0x7f12163e

    move v2, p1

    .line 2525
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->r:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2528
    :goto_5
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(I)V

    .line 633
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 638
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->n:Lcom/coloros/settings/feature/security/location/c;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/location/c;->a()V

    .line 641
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Landroid/content/Context;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 643
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Z)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab5

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const-string v0, "user"

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->o:Landroid/os/UserManager;

    .line 191
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b:Landroid/widget/Switch;

    const v0, 0x7f120c33

    .line 195
    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1204
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 1205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "ColorLocationSettings"

    const-string v0, "startGMS failed"

    .line 1208
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 215
    invoke-super {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onDestroyView()V

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    const-string v2, "ColorLocationSettings"

    .line 260
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Swallowing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    .line 268
    :cond_1
    invoke-super {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 11

    .line 227
    invoke-super {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onResume()V

    .line 1286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1287
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150054

    .line 1291
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->addPreferencesFromResource(I)V

    .line 1292
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 1470
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->o:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    .line 1472
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const-string v4, "managed_profile_location_category"

    if-nez v2, :cond_2

    .line 1474
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1475
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 1477
    :cond_1
    iput-object v3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    goto :goto_0

    :cond_2
    const-string v2, "managed_profile_location_switch"

    .line 1480
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1481
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    const-string v2, "location_mode"

    .line 1295
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f:Landroidx/preference/Preference;

    .line 1297
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f:Landroidx/preference/Preference;

    if-eqz v2, :cond_3

    .line 1298
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string v2, "location_toggle"

    .line 1300
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1301
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v2, :cond_4

    .line 1302
    new-instance v3, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1323
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f:Landroidx/preference/Preference;

    new-instance v3, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$5;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$5;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "loaction_others"

    .line 1336
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->i:Landroidx/preference/PreferenceCategory;

    .line 1337
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->h:Landroidx/preference/PreferenceCategory;

    .line 1339
    new-instance v2, Lcom/android/settingslib/location/b;

    invoke-direct {v2, v0}, Lcom/android/settingslib/location/b;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1340
    invoke-virtual {v2, v3}, Lcom/android/settingslib/location/b;->a(Z)Ljava/util/List;

    move-result-object v2

    .line 1342
    new-instance v4, Lcom/android/settings/location/a;

    .line 1343
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/settings/location/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1344
    invoke-virtual {v4, v1}, Lcom/android/settings/location/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v4, "recent_location_requests"

    .line 1347
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    .line 1349
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1350
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/location/b$a;

    .line 1351
    new-instance v7, Lcom/coloros/settings/widget/preference/DimmableIconPreference;

    iget-object v8, v6, Lcom/android/settingslib/location/b$a;->f:Ljava/lang/CharSequence;

    invoke-direct {v7, v0, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    .line 1356
    iget-object v8, v6, Lcom/android/settingslib/location/b$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v8}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_2

    .line 1358
    :cond_6
    iget-object v8, v6, Lcom/android/settingslib/location/b$a;->c:Landroid/graphics/drawable/Drawable;

    .line 1361
    :goto_2
    invoke-virtual {v7, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    iget-object v8, v6, Lcom/android/settingslib/location/b$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1363
    iget-boolean v8, v6, Lcom/android/settingslib/location/b$a;->e:Z

    if-eqz v8, :cond_7

    const v8, 0x7f120c15

    .line 1364
    invoke-virtual {v7, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    const v8, 0x7f120c16

    .line 1366
    invoke-virtual {v7, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setSummary(I)V

    .line 1368
    :goto_3
    invoke-virtual {v7}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->c()V

    .line 1369
    new-instance v8, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;

    iget-object v9, v6, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/settingslib/location/b$a;->b:Landroid/os/UserHandle;

    invoke-direct {v8, p0, v9, v10}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v7, v8}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v6, :cond_8

    .line 1372
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->k(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v6, v6, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    const-string v8, "p"

    .line 1373
    invoke-static {v0, v6, v8}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1377
    :cond_8
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1380
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1381
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Ljava/util/List;)V

    .line 1382
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v4, v2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    goto :goto_4

    .line 1385
    :cond_a
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120e6c

    .line 1386
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1387
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1388
    iget-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :goto_4
    const-string v2, "location_scanning"

    .line 1391
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1393
    new-instance v4, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$6;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$6;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_b
    const-string v2, "location_background_services_control"

    .line 1403
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->k:Landroidx/preference/PreferenceCategory;

    .line 1422
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1544
    iget-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d:Landroid/os/UserHandle;

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    iget-object v6, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->o:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    .line 1545
    invoke-virtual {v6, v7, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    goto :goto_5

    :cond_c
    move v4, v3

    :goto_5
    const-string v6, "more_settings_category"

    .line 1548
    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    const-string v6, "key_more_settings"

    .line 1549
    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1550
    sget-boolean v7, Lcom/coloros/settings/a;->a:Z

    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    .line 1551
    iget-object v7, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 1553
    :cond_d
    new-instance v6, Lcom/coloros/settings/feature/security/location/c;

    invoke-direct {v6, v2}, Lcom/coloros/settings/feature/security/location/c;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->n:Lcom/coloros/settings/feature/security/location/c;

    .line 1556
    iget-object v6, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1557
    iget-object v7, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->n:Lcom/coloros/settings/feature/security/location/c;

    if-eqz v4, :cond_e

    .line 1558
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_6

    :cond_e
    const/4 v4, -0x2

    .line 1557
    :goto_6
    invoke-virtual {v7, v6, v4}, Lcom/coloros/settings/feature/security/location/c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->p:Ljava/util/List;

    .line 1560
    new-instance v4, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$8;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$8;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    iput-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->m:Landroid/content/BroadcastReceiver;

    .line 1570
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.location.InjectedSettingChanged"

    .line 1571
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1572
    iget-object v6, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1575
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->p:Ljava/util/List;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 1576
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_10

    .line 1577
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->p:Ljava/util/List;

    iget-object v4, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v2, v4}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    goto :goto_7

    .line 1581
    :cond_f
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 1423
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a()V

    .line 1425
    invoke-static {v0}, Lcom/coloros/settings/custom/b;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1426
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1428
    :cond_11
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 229
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    if-nez v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 231
    iput-boolean v5, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c:Z

    .line 234
    :cond_12
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->l:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Z)V

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->q:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$1;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 3126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(I)V

    .line 656
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location_toggle"

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
