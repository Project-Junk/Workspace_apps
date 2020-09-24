.class public Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;
.super Lcom/android/settings/DisplaySettings;
.source "ColorDisplaySettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->highlightPreferenceForce()V

    return-void
.end method

.method public static synthetic lambda$kC9alAUSzMzSpLQjvkhKeOMTDjk(Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->c()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 122
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 1129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorBrightnessLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorAmbientDisplayNotificationsPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorAmbientDisplayNotificationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v2, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ScreenZoomPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    new-instance v2, Lcom/coloros/settings/feature/display/controller/AodConflictPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/AodConflictPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v2, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v2, Lcom/coloros/settings/feature/display/controller/DisplayCompatPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/DisplayCompatPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v2, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    new-instance v2, Lcom/coloros/settings/feature/display/controller/CurvedDisplayPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/CurvedDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v2, Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v2, Lcom/coloros/settings/feature/display/controller/RealmeCurvedDisplayPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/RealmeCurvedDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance v2, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;-><init>(Landroid/content/Context;)V

    .line 1160
    new-instance v3, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;-><init>(Landroid/content/Context;)V

    .line 1161
    new-instance v4, Lcom/coloros/settings/feature/display/b;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/display/b;-><init>(Landroid/content/Context;)V

    .line 1162
    new-instance v5, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;

    invoke-direct {v5, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;-><init>(Landroid/content/Context;)V

    .line 1163
    new-instance v6, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1165
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    new-instance v7, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v8, "key_osie_category"

    invoke-direct {v7, p1, v8}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/android/settingslib/core/a;

    const/4 v8, 0x0

    aput-object v2, p1, v8

    const/4 v2, 0x1

    aput-object v3, p1, v2

    const/4 v2, 0x2

    aput-object v4, p1, v2

    const/4 v2, 0x3

    aput-object v5, p1, v2

    const/4 v2, 0x4

    aput-object v6, p1, v2

    .line 1173
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1172
    invoke-virtual {v7, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 1171
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 1180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 1181
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v3, :cond_0

    .line 1182
    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final b()V
    .locals 1

    .line 116
    const-class v0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a8b

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15004a

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onDetach()V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 105
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onResume()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/display/-$$Lambda$ColorDisplaySettingsFragment$kC9alAUSzMzSpLQjvkhKeOMTDjk;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/-$$Lambda$ColorDisplaySettingsFragment$kC9alAUSzMzSpLQjvkhKeOMTDjk;-><init>(Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
