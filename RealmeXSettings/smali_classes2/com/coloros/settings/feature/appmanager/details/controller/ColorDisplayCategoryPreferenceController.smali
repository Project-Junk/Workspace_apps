.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "ColorDisplayCategoryPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CUTOUT_MODE_DEFAULT:I = 0x0

.field private static final CUTOUT_MODE_HIDE:I = 0x2

.field private static final CUTOUT_MODE_SHOW:I = 0x1

.field private static final KEY_APP_LIST_CUTOUT_DEFAULT:Ljava/lang/String; = "key_display_nonimmersive_local_apps"

.field private static final KEY_APP_LIST_CUTOUT_HIDE:Ljava/lang/String; = "cutout_hide_app_list"

.field private static final KEY_APP_LIST_CUTOUT_SHOW:Ljava/lang/String; = "key_display_immersive_local_apps"

.field private static final KEY_CUTOUT_MODE_CHOOSE:Ljava/lang/String; = "cutout_mode_choose"

.field private static final KEY_DISPLAY_CATEGORY:Ljava/lang/String; = "display_control_category"

.field private static final KEY_DISPLAY_COMPAT:Ljava/lang/String; = "display_compat"

.field private static final TAG:Ljava/lang/String; = "ColorDisplayCategoryPreferenceController"


# instance fields
.field private mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private mDisplayCategory:Landroidx/preference/PreferenceCategory;

.field private mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

.field private mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

.field private mLocalDefaultModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalHideModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalShowModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "display_control_category"

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ColorDisplayCategoryPreferenceController"

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    .line 69
    new-instance p2, Lcom/coloros/settings/feature/appmanager/details/a;

    invoke-direct {p2, p1}, Lcom/coloros/settings/feature/appmanager/details/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    .line 70
    invoke-static {}, Lcom/color/util/ColorDisplayCompatUtils;->getInstance()Lcom/color/util/ColorDisplayCompatUtils;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->initData()V

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutDefaultList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutShowList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutHideList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private killProcess(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method private refreshCutoutMode(Ljava/lang/String;I)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshCutoutMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayCategoryPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 180
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 172
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 164
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_4
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    const-string p2, "key_display_nonimmersive_local_apps"

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->saveList(Ljava/util/List;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    const-string p2, "key_display_immersive_local_apps"

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->saveList(Ljava/util/List;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    const-string p2, "cutout_hide_app_list"

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->saveList(Ljava/util/List;Ljava/lang/String;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mLocalDefaultModeList: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalDefaultModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mLocalShowModeList: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalShowModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mLocalHideModeList: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mLocalHideModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "display_compat"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "cutout_mode_choose"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ColorDisplayCategoryPreferenceController"

    const-string p2, "onPreferenceChange packageInfo is null"

    .line 129
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_compat"

    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 135
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 136
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "app_detail_compat"

    invoke-static {p2, v2, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    .line 2191
    iget-object v2, p2, Lcom/coloros/settings/feature/appmanager/details/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_display_fullscreen_local_apps_v1"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    if-eqz v2, :cond_1

    .line 2194
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2200
    :cond_1
    iget-object v2, p2, Lcom/coloros/settings/feature/appmanager/details/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "key_display_compat_local_apps_v1"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    .line 2203
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 2130
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2131
    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v1, v4

    .line 2135
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2136
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2141
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2142
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v1, v4

    .line 2146
    :cond_5
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2147
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v1, v4

    :cond_6
    if-eqz v1, :cond_7

    .line 2153
    invoke-virtual {p2, v3}, Lcom/coloros/settings/feature/appmanager/details/a;->a(Ljava/util/List;)V

    .line 2154
    invoke-virtual {p2, v6}, Lcom/coloros/settings/feature/appmanager/details/a;->b(Ljava/util/List;)V

    .line 138
    :cond_7
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->killProcess(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "cutout_mode_choose"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 140
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v1, :cond_a

    .line 141
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 142
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    .line 143
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-ltz p2, :cond_9

    .line 144
    array-length v2, v1

    if-ge p2, v2, :cond_9

    .line 145
    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 147
    :cond_9
    invoke-direct {p0, v0, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->refreshCutoutMode(Ljava/lang/String;I)V

    .line 148
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->killProcess(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return v4
.end method

.method public refreshUi()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    .line 1072
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/coloros/settings/feature/appmanager/details/a;->b:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v1, v0}, Lcom/color/util/ColorDisplayCompatUtils;->inInstalledCompatPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    .line 1118
    iget-object v2, v2, Lcom/coloros/settings/feature/appmanager/details/a;->b:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v2, v0}, Lcom/color/util/ColorDisplayCompatUtils;->shouldCompatAdjustForPkg(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 106
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move v1, v3

    goto :goto_1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatSwitch:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    move v1, v4

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    .line 2076
    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/appmanager/details/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCompatUtils:Lcom/coloros/settings/feature/appmanager/details/a;

    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/appmanager/details/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 114
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v4}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cutout mode: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ColorDisplayCategoryPreferenceController"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mCutoutModePreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    move v3, v4

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDisplayCategoryPreferenceController;->mDisplayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_3
    return-void
.end method
