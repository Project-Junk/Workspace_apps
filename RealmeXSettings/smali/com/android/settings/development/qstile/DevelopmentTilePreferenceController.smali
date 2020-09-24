.class public Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.super Lcom/android/settings/core/a;
.source "DevelopmentTilePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;
    }
.end annotation


# static fields
.field private static final DOLBY_TILE_COMPONENT_CLASS:Ljava/lang/String; = "com.coloros.partners.dolby.DolbyTileService"

.field private static final IRIS5_TILE_COMPONENT_CLASS:Ljava/lang/String;

.field private static final OSIE_TILE_COMPONENT_CLASS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DevTilePrefController"


# instance fields
.field private final mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/coloros/settings/feature/display/video/Iris5TileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->IRIS5_TILE_COMPONENT_CLASS:Ljava/lang/String;

    .line 59
    const-class v0, Lcom/coloros/settings/feature/display/video/OsieTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->OSIE_TILE_COMPONENT_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    new-instance p2, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;

    invoke-direct {p2, p1}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x200

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 81
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 84
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v4, "com.coloros.partners.dolby.DolbyTileService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    :cond_1
    sget-object v3, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->OSIE_TILE_COMPONENT_CLASS:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    :cond_2
    sget-object v3, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->IRIS5_TILE_COMPONENT_CLASS:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    if-nez v3, :cond_4

    .line 101
    iget-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 105
    :cond_5
    :goto_1
    new-instance v3, Landroidx/preference/SwitchPreference;

    invoke-direct {v3, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v5, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v5, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mContext:Landroid/content/Context;

    iget v6, v2, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    .line 1061
    :cond_6
    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1062
    invoke-static {v5}, Lcom/color/util/ColorDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1063
    invoke-static {v5, v6}, Lcom/coloros/settings/feature/deviceinfo/b;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v6

    .line 107
    :goto_2
    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$a;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
