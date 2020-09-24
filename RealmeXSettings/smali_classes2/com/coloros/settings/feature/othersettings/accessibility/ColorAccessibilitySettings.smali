.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:Landroid/content/ComponentName;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private A:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private B:Landroidx/preference/TwoStatePreference;

.field private C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

.field private D:Landroidx/preference/Preference;

.field private E:Landroidx/preference/Preference;

.field private F:Landroidx/preference/Preference;

.field private G:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

.field private H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

.field private I:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

.field private J:Landroid/app/admin/DevicePolicyManager;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/coloros/settings/feature/othersettings/accessibility/b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Lcom/android/internal/content/PackageMonitor;

.field private final i:Lcom/coloros/settings/feature/othersettings/accessibility/d;

.field private final j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroidx/preference/TwoStatePreference;

.field private q:Landroidx/preference/TwoStatePreference;

.field private r:Landroidx/preference/TwoStatePreference;

.field private s:Landroidx/preference/TwoStatePreference;

.field private t:Landroidx/preference/TwoStatePreference;

.field private u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private w:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private x:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.coloros.colordirectservice"

    const-string v1, "com.daemon.shelper"

    const-string v2, "com.coloros.speechassist"

    const-string v3, "com.coloros.personalassistant"

    const-string v4, "com.heytap.speechassist"

    .line 101
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a:[Ljava/lang/String;

    const-string v1, "screen_reader_category"

    const-string v2, "audio_and_captions_category"

    const-string v3, "display_category"

    const-string v4, "interaction_control_category"

    const-string v5, "experimental_category"

    const-string v6, "user_installed_services_category"

    .line 111
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b:[Ljava/lang/String;

    .line 180
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->c:Landroid/content/ComponentName;

    const-string v0, "window_animation_scale"

    const-string v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    .line 190
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->d:[Ljava/lang/String;

    .line 1155
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$5;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->e:Ljava/util/Map;

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->f:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->g:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    .line 240
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$3;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->f:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$3;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->i:Lcom/coloros/settings/feature/othersettings/accessibility/d;

    .line 248
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$4;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    .line 257
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->n:Ljava/util/Map;

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->o:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroidx/preference/Preference;)V
    .locals 2

    .line 1089
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 1093
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/preference/Preference;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x7f120061

    goto :goto_0

    :cond_0
    const p2, 0x7f120060

    .line 1001
    :goto_0
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1003
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 1004
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    return-void

    .line 1007
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .line 592
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 593
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 594
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 595
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 598
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v4

    .line 599
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 600
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 2

    .line 992
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 994
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3

    .line 858
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 859
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 860
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 861
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 862
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->o:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 33

    move-object/from16 v0, p0

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->n:Ljava/util/Map;

    .line 614
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    .line 615
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 616
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 617
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->n:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceCategory;

    .line 619
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/c;

    invoke-direct {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/c;-><init>()V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const v3, 0x7f030062

    const-string v4, "screen_reader_category"

    .line 627
    invoke-direct {v0, v4, v3}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b(Ljava/lang/String;I)V

    const v3, 0x7f03005f

    const-string v6, "audio_and_captions_category"

    .line 629
    invoke-direct {v0, v6, v3}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b(Ljava/lang/String;I)V

    const v3, 0x7f030060

    const-string v7, "display_category"

    .line 631
    invoke-direct {v0, v7, v3}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b(Ljava/lang/String;I)V

    const v3, 0x7f030061

    const-string v8, "interaction_control_category"

    .line 633
    invoke-direct {v0, v8, v3}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b(Ljava/lang/String;I)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    .line 639
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    .line 640
    invoke-static {v9}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 642
    iget-object v10, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->J:Landroid/app/admin/DevicePolicyManager;

    .line 643
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 642
    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_enabled"

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    move v11, v2

    .line 647
    :goto_1
    iget-object v13, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    const-string v14, "user_installed_services_category"

    .line 648
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/preference/PreferenceCategory;

    .line 650
    invoke-virtual {v0, v14}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v14

    if-nez v14, :cond_2

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 653
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v5, "package"

    .line 657
    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    move v12, v2

    :goto_2
    const-string v2, "summary"

    move-object/from16 v16, v13

    const-string v13, "title"

    move-object/from16 v17, v7

    const-string v7, "checked"

    move-object/from16 v18, v8

    const-string v8, "preference_key"

    move-object/from16 v19, v6

    const-string v6, "has_alert_text"

    if-ge v12, v15, :cond_1b

    .line 660
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 662
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move/from16 v22, v15

    const-string v15, "AccessibilitySettings"

    if-nez v20, :cond_4

    .line 663
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "info.getResolveInfo()==null i="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_4
    move/from16 v20, v12

    .line 667
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    move-object/from16 v23, v5

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v24, v14

    .line 676
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v4

    .line 677
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v26, v1

    iget-object v1, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v6

    const-string v6, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    .line 679
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "com.android.switchaccess.SwitchAccessService"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 683
    new-instance v6, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    move-object/from16 v28, v15

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;-><init>(Landroid/content/Context;)V

    .line 684
    iget-object v15, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->L:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 685
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setKey(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v6, v12}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_5

    .line 688
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_6

    move-object/from16 v29, v9

    const v9, 0x7f120090

    .line 690
    invoke-virtual {v0, v9}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_6
    move-object/from16 v29, v9

    const v9, 0x7f12008f

    .line 691
    invoke-virtual {v0, v9}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v9, v30

    .line 697
    :goto_4
    invoke-virtual {v6, v9}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->b(Ljava/lang/CharSequence;)V

    const-string v9, "com.mirrorlink.android.service"

    .line 700
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    if-nez v15, :cond_9

    .line 707
    iget-object v9, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->K:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v9

    move-object/from16 v9, v30

    check-cast v9, Ljava/lang/String;

    .line 708
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v9, v31

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-nez v9, :cond_18

    .line 719
    :cond_9
    sget-object v9, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a:[Ljava/lang/String;

    move/from16 v30, v11

    array-length v11, v9

    move-object/from16 v31, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v11, :cond_b

    move/from16 v32, v11

    aget-object v11, v9, v1

    .line 720
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v32

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_19

    if-eqz v10, :cond_d

    .line 729
    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v1, 0x1

    :goto_a
    if-nez v1, :cond_f

    if-nez v15, :cond_f

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 731
    invoke-static {v1, v14, v9}, Lcom/android/settingslib/h;->f(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 734
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    .line 736
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    goto :goto_b

    :cond_f
    const/4 v1, 0x1

    .line 739
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    .line 743
    :goto_b
    sget-object v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 744
    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setFragment(Ljava/lang/String;)V

    goto :goto_c

    .line 746
    :cond_10
    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setFragment(Ljava/lang/String;)V

    :goto_c
    const/4 v1, 0x1

    .line 748
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setPersistent(Z)V

    .line 750
    invoke-virtual {v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 751
    invoke-virtual {v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v1, v7, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v9

    .line 756
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    const v5, 0x7f120082

    .line 757
    invoke-virtual {v0, v5}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 759
    :cond_11
    invoke-virtual {v9, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 761
    :goto_d
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 764
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const v5, 0x7f12006e

    .line 766
    invoke-virtual {v0, v5}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "settings_title"

    .line 765
    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "settings_component_name"

    .line 767
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v3, "component_name"

    .line 770
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 772
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updateServicePreferences componentName="

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v28

    invoke-static {v5, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->o:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 776
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->o:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    move-object/from16 v4, v27

    const/4 v5, 0x0

    .line 778
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v5, v3

    move-object/from16 v9, v25

    move-object/from16 v3, v26

    goto :goto_f

    :cond_13
    move-object/from16 v3, v26

    move-object/from16 v4, v27

    .line 779
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v5, v31

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_e

    :cond_14
    const/4 v5, 0x1

    .line 783
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v5, v16

    move-object/from16 v9, v25

    goto :goto_f

    .line 780
    :cond_15
    :goto_e
    iget-object v5, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    move-object/from16 v9, v25

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/PreferenceCategory;

    const/4 v11, 0x0

    .line 781
    invoke-virtual {v1, v4, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    :goto_f
    invoke-virtual {v5}, Landroidx/preference/PreferenceCategory;->getKey()Ljava/lang/String;

    const/4 v1, -0x1

    .line 787
    invoke-virtual {v6, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setOrder(I)V

    .line 788
    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 789
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->n:Ljava/util/Map;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    .line 791
    instance-of v5, v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    if-eqz v5, :cond_16

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v5, v23

    .line 792
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 793
    new-instance v3, Lcom/android/settings/core/f;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;

    .line 794
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v3

    .line 795
    invoke-virtual {v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v3

    .line 796
    invoke-virtual {v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object v3

    const/4 v5, 0x0

    .line 797
    invoke-virtual {v3, v5}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v3

    .line 798
    invoke-virtual {v3}, Lcom/android/settings/core/f;->a()V

    .line 801
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_12

    :cond_16
    move-object/from16 v5, v23

    goto :goto_10

    :cond_17
    move-object/from16 v29, v9

    :cond_18
    move/from16 v30, v11

    :cond_19
    move-object/from16 v5, v23

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v26

    :cond_1a
    :goto_10
    add-int/lit8 v12, v20, 0x1

    move-object v14, v1

    move-object v1, v3

    move-object v4, v9

    move-object/from16 v13, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    move/from16 v15, v22

    move-object/from16 v9, v29

    move/from16 v11, v30

    goto/16 :goto_2

    :cond_1b
    :goto_11
    move-object v9, v4

    move-object v4, v6

    .line 806
    :goto_12
    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/e;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/coloros/settings/feature/othersettings/accessibility/e;-><init>(Landroid/content/Context;)V

    .line 807
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 808
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->a()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/coloros/settings/feature/othersettings/accessibility/e;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 809
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->b()Landroid/content/ComponentName;

    move-result-object v5

    .line 810
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->d()Ljava/lang/String;

    .line 811
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->f()Ljava/lang/String;

    move-result-object v6

    .line 812
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    .line 815
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v11, v10}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setKey(Ljava/lang/String;)V

    .line 816
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v11, v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const v12, 0x7f12008f

    invoke-virtual {v0, v12}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    .line 819
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const-class v14, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setFragment(Ljava/lang/String;)V

    .line 820
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v11, v12}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setPersistent(Z)V

    .line 821
    iget-object v11, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v11}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 822
    invoke-virtual {v11, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 823
    invoke-virtual {v11, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 824
    invoke-virtual {v11, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "component_name"

    .line 826
    invoke-virtual {v11, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 827
    invoke-virtual {v11, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "need_install"

    .line 828
    invoke-virtual {v11, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 829
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setOrder(I)V

    .line 830
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_13

    .line 832
    :cond_1c
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :goto_13
    const v1, 0x7f03005e

    .line 836
    invoke-direct {v0, v9, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f03005b

    move-object/from16 v2, v19

    .line 838
    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f03005d

    move-object/from16 v2, v18

    .line 840
    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f03005c

    move-object/from16 v2, v17

    .line 842
    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;I)V

    .line 847
    invoke-virtual/range {v16 .. v16}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v13, v16

    .line 849
    invoke-virtual {v1, v13}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AccessibilitySettings"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a7d

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150037

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 315
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 316
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    const-string v1, "hearing_aid_preference"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    .line 318
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 319
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 321
    new-instance v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    const-string v1, "live_caption"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->I:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 305
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 1456
    :goto_0
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1457
    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 1458
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    sget-object v2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "toggle_high_text_contrast_preference"

    .line 1463
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 1464
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "toggle_power_button_ends_call_preference"

    .line 1469
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    .line 1470
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/16 p1, 0x1a

    .line 1471
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1473
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    const-string v0, "interaction_control_category"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    .line 1474
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string p1, "toggle_large_pointer_icon"

    .line 1490
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    .line 1491
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "toggle_accessibility_color_mode"

    .line 1495
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->A:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1500
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p1

    const-string v0, "display_category"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->A:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    .line 1502
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1503
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->A:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "toggle_master_mono"

    .line 1509
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->t:Landroidx/preference/TwoStatePreference;

    .line 1510
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->t:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "captioning_preference_screen"

    .line 1512
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v1, "magnification_preference_screen"

    .line 1516
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1518
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    .line 1519
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Landroidx/preference/Preference;)V

    const-string v2, "font_size_preference_screen"

    .line 1523
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->w:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v2, "autoclick_preference_screen"

    .line 1527
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->x:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1529
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->x:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    const-string v2, "daltonizer_preference"

    .line 1532
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v2, "accessibility_shortcut_preference"

    .line 1536
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v2, "hearing_aid_preference"

    .line 1539
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->D:Landroidx/preference/Preference;

    .line 1540
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 1543
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string p1, "live_caption"

    .line 1546
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->F:Landroidx/preference/Preference;

    .line 1547
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->I:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 1550
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1552
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Landroidx/preference/Preference;)V

    .line 1556
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_4

    const-string v0, "screen_zoom"

    .line 1558
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ScreenZoomPreference;

    if-eqz v0, :cond_4

    .line 1560
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 1563
    :cond_4
    new-instance p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->C:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const-string p1, "toggle_inversion_preference"

    .line 1567
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    .line 1568
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1569
    new-instance v0, Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    .line 1570
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->G:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    .line 1571
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->G:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "vibration_preference_screen"

    .line 1573
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->E:Landroidx/preference/Preference;

    .line 307
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    .line 308
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->J:Landroid/app/admin/DevicePolicyManager;

    .line 309
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2316
    invoke-static {p1}, Lcom/coloros/settings/utils/au;->a(Landroid/content/Context;)Lcom/coloros/settings/utils/au;

    move-result-object p1

    const-string v0, "accessibility_devadmin_blacklist_list"

    .line 2317
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;)Lcom/coloros/settings/utils/au;

    move-result-object p1

    const v0, 0x7fffffff

    const-string v1, "accessibility"

    .line 3087
    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;

    move-result-object p1

    .line 2319
    invoke-virtual {p1}, Lcom/coloros/settings/utils/au;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p1

    .line 2320
    invoke-virtual {p1}, Lcom/coloros/settings/utils/au$a;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p1

    .line 2321
    invoke-virtual {p1, v1}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 309
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->K:Ljava/util/List;

    .line 310
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/accessibility/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->L:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 357
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->i:Lcom/coloros/settings/feature/othersettings/accessibility/d;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7038
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 362
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 377
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 378
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 380
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_2

    .line 7418
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    const-string p2, "high_text_contrast_enabled"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    if-ne v2, p1, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "power_ends_call"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 7423
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "power_button_ends_call"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7424
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v0, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    const-string v0, "incall_power_button_behavior"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->r:Landroidx/preference/TwoStatePreference;

    if-ne v2, p1, :cond_7

    if-eqz v2, :cond_6

    .line 7432
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p1, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    :cond_6
    return v3

    .line 390
    :cond_7
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    if-ne v2, p1, :cond_8

    .line 391
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 8413
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "accessibility_display_inversion_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    .line 394
    :cond_8
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    if-ne p2, p1, :cond_a

    .line 395
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "large_pointer_icon"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 8438
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v0, :cond_9

    move v1, v3

    :cond_9
    const-string p2, "accessibility_large_pointer_icon"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    .line 398
    :cond_a
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->t:Landroidx/preference/TwoStatePreference;

    if-ne p2, p1, :cond_c

    .line 399
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "master_mono"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 8443
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    const/4 v0, -0x2

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v3

    :cond_c
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 371
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 7

    .line 327
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 3869
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3871
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    const-string v2, "experimental_category"

    .line 3872
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 3873
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->k:Ljava/util/Map;

    const-string v3, "display_category"

    .line 3874
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 3875
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 3876
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 3877
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 3878
    invoke-virtual {v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 3877
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 3879
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 3880
    invoke-virtual {v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 3879
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    .line 3881
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    .line 3882
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 3881
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    .line 3883
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    const v3, 0x7f12161f

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 3884
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3885
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3889
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 3890
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "high_text_contrast_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3889
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3894
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->G:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->B:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/16 v0, 0x1a

    .line 3897
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3898
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3899
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "incall_power_button_behavior"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3904
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3911
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_large_pointer_icon"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3915
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->A:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->mContext:Landroid/content/Context;

    .line 3916
    invoke-static {v2}, Lcom/coloros/settings/utils/g;->a(Landroid/content/Context;)Z

    move-result v2

    .line 3915
    invoke-direct {p0, v0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Landroidx/preference/Preference;Z)V

    .line 4061
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v4, "master_mono"

    .line 4060
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v3

    .line 4063
    :goto_3
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->t:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3921
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_6

    const-string v2, "accessibility_captioning_enabled"

    .line 3922
    invoke-direct {p0, v2, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;Landroidx/preference/Preference;)V

    .line 3926
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->z:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-direct {p0, v2, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Ljava/lang/String;Landroidx/preference/Preference;)V

    .line 4067
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 4068
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const v2, 0x7f120060

    if-eqz v0, :cond_7

    .line 4069
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v4, 0x7f120070

    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 4070
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    goto :goto_6

    .line 4072
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 4074
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/settingslib/a/a;->c(Landroid/content/Context;I)Z

    move-result v0

    .line 4075
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4077
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 4079
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 4080
    :cond_9
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4081
    :goto_5
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->y:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v4, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 3939
    :goto_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->H:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->D:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 3941
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->I:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->F:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 3943
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->v:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 4973
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_a

    move v4, v1

    goto :goto_7

    :cond_a
    move v4, v3

    .line 4975
    :goto_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_b

    move v5, v1

    goto :goto_8

    :cond_b
    move v5, v3

    :goto_8
    if-nez v4, :cond_c

    if-nez v5, :cond_c

    move v4, v2

    goto :goto_9

    :cond_c
    if-nez v4, :cond_d

    const v4, 0x7f12007b

    goto :goto_9

    :cond_d
    if-nez v5, :cond_e

    const v4, 0x7f120077

    goto :goto_9

    :cond_e
    const v4, 0x7f12007d

    .line 4988
    :goto_9
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 3945
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->x:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 5013
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_autoclick_enabled"

    .line 5012
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_f

    move v4, v1

    goto :goto_a

    :cond_f
    move v4, v3

    :goto_a
    if-nez v4, :cond_10

    .line 5015
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_b

    .line 5019
    :cond_10
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v4, 0x258

    const-string v5, "accessibility_autoclick_delay"

    .line 5018
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 5022
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5021
    invoke-static {v4, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_b
    const-string v0, "accessibility_control_timeout_preference_fragment"

    .line 3946
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_12

    .line 3948
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5954
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 5956
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const-string v6, "accessibility_interactive_ui_timeout_ms"

    .line 5959
    invoke-static {v2, v6}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 6151
    array-length v6, v5

    invoke-static {v5, v2, v6}, Lcom/google/a/c/a;->a([III)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_11

    move v2, v3

    .line 5963
    :cond_11
    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3579
    :cond_12
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->c()V

    .line 6854
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 330
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->mPreferenceHighlighted:Z

    if-nez v0, :cond_13

    .line 334
    iput-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->mPreferenceHighlighted:Z

    .line 336
    :cond_13
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->i:Lcom/coloros/settings/feature/othersettings/accessibility/d;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    .line 7031
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "enabled_accessibility_services"

    .line 7033
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 339
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_14
    return-void
.end method
