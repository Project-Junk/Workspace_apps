.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private A:Landroidx/preference/Preference;

.field private B:Landroidx/preference/Preference;

.field private C:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

.field private D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

.field private E:Landroidx/preference/TwoStatePreference;

.field private F:Lcom/android/settings/display/DarkUIPreferenceController;

.field private G:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

.field private H:I

.field private I:Landroid/app/admin/DevicePolicyManager;

.field protected a:Landroidx/preference/Preference;

.field protected b:Landroidx/preference/TwoStatePreference;

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

.field private final i:Lcom/android/settings/accessibility/b;

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

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroidx/preference/TwoStatePreference;

.field private o:Landroidx/preference/TwoStatePreference;

.field private p:Landroidx/preference/TwoStatePreference;

.field private q:Landroidx/preference/TwoStatePreference;

.field private r:Landroidx/preference/TwoStatePreference;

.field private s:Landroidx/preference/TwoStatePreference;

.field private t:Landroidx/preference/ListPreference;

.field private u:Landroidx/preference/Preference;

.field private v:Landroidx/preference/Preference;

.field private w:Landroidx/preference/Preference;

.field private x:Landroidx/preference/Preference;

.field private y:Landroidx/preference/Preference;

.field private z:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "screen_reader_category"

    const-string v1, "audio_and_captions_category"

    const-string v2, "display_category"

    const-string v3, "interaction_control_category"

    const-string v4, "experimental_category"

    const-string/jumbo v5, "user_installed_services_category"

    .line 98
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->c:[Ljava/lang/String;

    const-string/jumbo v0, "window_animation_scale"

    const-string/jumbo v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    .line 164
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->d:[Ljava/lang/String;

    .line 998
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 266
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->e:Ljava/util/Map;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->f:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->g:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    .line 214
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->l:Ljava/util/Map;

    .line 225
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->m:Ljava/util/Map;

    .line 269
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 272
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->f:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->i:Lcom/android/settings/accessibility/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p2, :cond_0

    const p2, 0x7f120090

    .line 382
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p2, 0x7f12008f

    .line 383
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 384
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f121071

    const/4 v1, 0x2

    .line 385
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(Landroid/content/ContentResolver;Landroidx/preference/Preference;)V
    .locals 3

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const-string v2, "accessibility_interactive_ui_timeout_ms"

    .line 811
    invoke-static {p1, v2}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 3151
    array-length v2, v1

    invoke-static {v1, p1, v2}, Lcom/google/a/c/a;->a([III)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 815
    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 5

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 821
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const v0, 0x7f120060

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x7f12007b

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const v0, 0x7f120077

    goto :goto_1

    :cond_4
    const v0, 0x7f12007d

    .line 834
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 690
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 691
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 692
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 693
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->m:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 2

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const p1, 0x7f120061

    goto :goto_1

    :cond_1
    const p1, 0x7f120060

    .line 839
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "apply_ramping_ringer"

    .line 396
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "telephony"

    const-string v2, "ramping_ringer_enabled"

    .line 399
    invoke-static {p0, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroidx/preference/Preference;)V
    .locals 3

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_autoclick_enabled"

    .line 844
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    const v0, 0x7f120060

    .line 847
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x258

    const-string v2, "accessibility_autoclick_delay"

    .line 850
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 853
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 7

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 706
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 707
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 708
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 711
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v4

    .line 712
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 713
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

.method private c()V
    .locals 5

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    const-string v2, "experimental_category"

    .line 725
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 726
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    const-string v3, "display_category"

    .line 727
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 728
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 729
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 730
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->v:Landroidx/preference/Preference;

    .line 731
    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 730
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    .line 733
    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 732
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    .line 735
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 734
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->r:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    .line 737
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->getOrder()I

    move-result v3

    add-int/2addr v3, v1

    .line 736
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    const v3, 0x7f12161f

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 740
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->n:Landroidx/preference/TwoStatePreference;

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 744
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->C:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->F:Lcom/android/settings/display/DarkUIPreferenceController;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->E:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/display/DarkUIPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/16 v0, 0x1a

    .line 755
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 762
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->o:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 766
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->e()V

    .line 769
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_large_pointer_icon"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 771
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->f()V

    .line 773
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->g()V

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->H:I

    const-string v2, "long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 778
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 782
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->d()V

    .line 784
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->z:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->G:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->B:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 788
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->u:Landroidx/preference/Preference;

    const-string v1, "accessibility_captioning_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroidx/preference/Preference;)V

    .line 790
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroidx/preference/Preference;)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->v:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Landroidx/preference/Preference;)V

    .line 795
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->w:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->c(Landroidx/preference/Preference;)V

    .line 797
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->x:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Landroidx/preference/Preference;)V

    .line 799
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->h()V

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_control_timeout_preference_fragment"

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 801
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Landroid/content/ContentResolver;Landroidx/preference/Preference;)V

    return-void
.end method

.method private c(Landroidx/preference/Preference;)V
    .locals 4

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030051

    .line 861
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030091

    .line 862
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v0, v1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->a(F[Ljava/lang/String;)I

    move-result v0

    .line 865
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->e()V

    return-void
.end method

.method private d()V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 871
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 873
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 875
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v3

    const-string v4, "ring_vibration_intensity"

    .line 873
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 876
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "vibrate_when_ringing"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 877
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v4

    .line 881
    :cond_0
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 883
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 885
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v6

    const-string v7, "notification_vibration_intensity"

    .line 883
    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 887
    invoke-static {v0, v5}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 890
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 892
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    const-string v8, "haptic_feedback_intensity"

    .line 890
    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 893
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    move v1, v4

    .line 898
    :cond_1
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 900
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->A:Landroidx/preference/Preference;

    if-nez v7, :cond_2

    const-string/jumbo v7, "vibration_preference_screen"

    .line 901
    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->A:Landroidx/preference/Preference;

    :cond_2
    if-ne v2, v1, :cond_3

    if-ne v2, v5, :cond_3

    .line 905
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->A:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->A:Landroidx/preference/Preference;

    const v2, 0x7f1200b6

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    .line 908
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 944
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 943
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 950
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 951
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 958
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->r:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "master_mono"

    const/4 v3, -0x2

    .line 962
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->y:Landroidx/preference/Preference;

    const v1, 0x7f120070

    .line 972
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->y:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->y:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/a/a;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f120060

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->y:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->c()V

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->b()V

    return-void
.end method

.method protected final b()V
    .locals 23

    move-object/from16 v0, p0

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->l:Ljava/util/Map;

    .line 551
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 552
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 553
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 554
    iget-object v5, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->l:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/PreferenceCategory;

    .line 555
    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f030062

    const-string v3, "screen_reader_category"

    .line 558
    invoke-direct {v0, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f03005f

    const-string v4, "audio_and_captions_category"

    .line 560
    invoke-direct {v0, v4, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f030060

    const-string v5, "display_category"

    .line 562
    invoke-direct {v0, v5, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;I)V

    const v1, 0x7f030061

    const-string v6, "interaction_control_category"

    .line 564
    invoke-direct {v0, v6, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;I)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v7

    const/4 v8, -0x1

    .line 572
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    .line 573
    invoke-static {v9}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 575
    iget-object v10, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->I:Landroid/app/admin/DevicePolicyManager;

    .line 576
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 575
    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 578
    iget-object v11, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    const-string/jumbo v12, "user_installed_services_category"

    .line 579
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/preference/PreferenceCategory;

    .line 581
    invoke-virtual {v0, v12}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    if-nez v12, :cond_1

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 585
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_b

    .line 586
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 587
    invoke-virtual {v14}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 589
    new-instance v8, Lcom/android/settingslib/RestrictedPreference;

    .line 590
    invoke-virtual {v11}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v15}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v17, v7

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v18, v12

    const v12, 0x7f080699

    invoke-static {v7, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object/from16 v17, v7

    move/from16 v18, v12

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 600
    :goto_2
    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v11

    .line 601
    iget-object v11, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v5

    .line 602
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v21, v6

    iget-object v6, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v8, v2}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    .line 3082
    iput v6, v8, Lcom/android/settingslib/TwoTargetPreference;->p:I

    .line 608
    invoke-static {v8, v7}, Lcom/android/settings/m;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 609
    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    .line 611
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    const v6, 0x7f120082

    .line 612
    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v7, :cond_4

    .line 615
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v11, v12, v1}, Lcom/android/settingslib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_4

    const v6, 0x7f120091

    .line 618
    invoke-virtual {v8, v6}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    const v6, 0x7f120056

    .line 619
    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 621
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v14, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v12

    .line 623
    invoke-virtual {v8, v12}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v10, :cond_6

    .line 628
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v12, 0x1

    :goto_5
    if-nez v12, :cond_8

    if-nez v7, :cond_8

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    move-object/from16 v22, v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 631
    invoke-static {v12, v11, v1}, Lcom/android/settingslib/h;->f(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 634
    invoke-virtual {v8, v1}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    .line 636
    invoke-virtual {v8, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v22, v1

    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 639
    invoke-virtual {v8, v12}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 642
    :goto_7
    const-class v16, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v8, v12}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    .line 645
    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 646
    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v9

    const-string v9, "preference_key"

    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "checked"

    .line 647
    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "title"

    .line 648
    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resolve_info"

    .line 649
    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "summary"

    .line 650
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v14}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const v6, 0x7f12006e

    .line 655
    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "settings_title"

    .line 654
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v11, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "settings_component_name"

    .line 656
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v2, "component_name"

    .line 659
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 663
    iget-object v1, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->m:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 664
    iget-object v1, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->m:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/preference/PreferenceCategory;

    goto :goto_8

    :cond_a
    move-object/from16 v11, v19

    :goto_8
    const/4 v1, -0x1

    .line 666
    invoke-virtual {v8, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 667
    invoke-virtual {v11, v8}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 668
    iget-object v2, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->l:Ljava/util/Map;

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move v8, v1

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move/from16 v12, v18

    move-object/from16 v11, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v1, v22

    goto/16 :goto_1

    :cond_b
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v11

    const v1, 0x7f03005e

    .line 672
    invoke-direct {v0, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Ljava/lang/String;I)V

    const v1, 0x7f03005b

    .line 674
    invoke-direct {v0, v4, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Ljava/lang/String;I)V

    const v1, 0x7f03005d

    move-object/from16 v2, v21

    .line 676
    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Ljava/lang/String;I)V

    const v1, 0x7f03005c

    move-object/from16 v2, v20

    .line 678
    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Ljava/lang/String;I)V

    .line 682
    invoke-virtual/range {v19 .. v19}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v11, v19

    .line 684
    invoke-virtual {v1, v11}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    return-void
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

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 304
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    const-string v1, "hearing_aid_preference"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    .line 306
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 309
    new-instance v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    const-string v1, "live_caption"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->G:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150007

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    const/4 p1, 0x0

    move v0, p1

    .line 1441
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1442
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 1443
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettings;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "toggle_high_text_contrast_preference"

    .line 1448
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->n:Landroidx/preference/TwoStatePreference;

    const-string/jumbo v0, "toggle_inversion_preference"

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->b:Landroidx/preference/TwoStatePreference;

    .line 1452
    new-instance v1, Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->C:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    .line 1454
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->C:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "toggle_power_button_ends_call_preference"

    .line 1458
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->o:Landroidx/preference/TwoStatePreference;

    const/16 v0, 0x1a

    .line 1459
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    const-string v1, "interaction_control_category"

    if-eqz v0, :cond_1

    .line 1460
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->o:Landroidx/preference/TwoStatePreference;

    .line 1462
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string/jumbo v0, "toggle_lock_screen_rotation_preference"

    .line 1467
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1469
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 1470
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string/jumbo v0, "toggle_large_pointer_icon"

    .line 1475
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    const-string/jumbo v0, "toggle_disable_animations"

    .line 1478
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->r:Landroidx/preference/TwoStatePreference;

    const-string/jumbo v0, "toggle_master_mono"

    .line 1482
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    const-string v0, "select_long_press_timeout_preference"

    .line 1486
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    .line 1487
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1488
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1489
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1491
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->H:I

    .line 1492
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1494
    array-length v2, v0

    :goto_1
    if-ge p1, v2, :cond_4

    .line 1496
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->e:Ljava/util/Map;

    aget-object v4, v0, p1

    aget-object v5, v1, p1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "hearing_aid_preference"

    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->z:Landroidx/preference/Preference;

    .line 1502
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "captioning_preference_screen"

    .line 1505
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->u:Landroidx/preference/Preference;

    const-string p1, "live_caption"

    .line 1508
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->B:Landroidx/preference/Preference;

    .line 1509
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->G:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "magnification_preference_screen"

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->v:Landroidx/preference/Preference;

    .line 1514
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->v:Landroidx/preference/Preference;

    .line 1989
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1990
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1991
    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 1994
    invoke-static {p1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    :cond_5
    const-string p1, "font_size_preference_screen"

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->w:Landroidx/preference/Preference;

    const-string p1, "autoclick_preference"

    .line 1520
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->x:Landroidx/preference/Preference;

    const-string p1, "daltonizer_preference"

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->a:Landroidx/preference/Preference;

    const-string p1, "accessibility_shortcut_preference"

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->y:Landroidx/preference/Preference;

    const-string/jumbo p1, "vibration_preference_screen"

    .line 1529
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->A:Landroidx/preference/Preference;

    const-string p1, "dark_ui_mode_accessibility"

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->E:Landroidx/preference/TwoStatePreference;

    .line 1533
    new-instance v0, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/display/DarkUIPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->F:Lcom/android/settings/display/DarkUIPreferenceController;

    .line 1535
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->F:Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/DarkUIPreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    .line 1536
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->F:Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/DarkUIPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    .line 298
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->I:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->i:Lcom/android/settings/accessibility/b;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2050
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 334
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    if-ne v0, p1, :cond_0

    .line 340
    check-cast p2, Ljava/lang/String;

    .line 2347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2348
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "long_press_timeout"

    .line 2347
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2349
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->t:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->e:Ljava/util/Map;

    .line 2350
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2349
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 355
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->n:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 2404
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->n:Landroidx/preference/TwoStatePreference;

    .line 2406
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v2, "high_text_contrast_enabled"

    .line 2404
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->o:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_2

    .line 2410
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->o:Landroidx/preference/TwoStatePreference;

    .line 2412
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "incall_power_button_behavior"

    .line 2410
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_3

    .line 2418
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->p:Landroidx/preference/TwoStatePreference;

    .line 2419
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 2418
    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return v1

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_4

    .line 2423
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->q:Landroidx/preference/TwoStatePreference;

    .line 2425
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v2, "accessibility_large_pointer_icon"

    .line 2423
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->r:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_7

    .line 2428
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "0"

    goto :goto_1

    :cond_5
    const-string p1, "1"

    .line 2430
    :goto_1
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->d:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 2431
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v1

    .line 370
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    if-ne v0, p1, :cond_8

    .line 2436
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->s:Landroidx/preference/TwoStatePreference;

    .line 2437
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v2, -0x2

    const-string v3, "master_mono"

    .line 2436
    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    .line 373
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->D:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 376
    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->h:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->i:Lcom/android/settings/accessibility/b;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/b;->a(Landroid/content/ContentResolver;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->j:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method
