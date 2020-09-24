.class public Lcom/coloros/settings/feature/security/location/LocationGPSPermission;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationGPSPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;,
        Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private f:Landroidx/preference/PreferenceCategory;

.field private g:Landroid/util/AttributeSet;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/location/LocationManager;

.field private n:Lcom/color/compat/location/LocAppsOpNative;

.field private o:Lcom/color/compat/location/LocAppsOpNative;

.field private p:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->l:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/color/compat/location/LocAppsOpNative;

    invoke-direct {v0}, Lcom/color/compat/location/LocAppsOpNative;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->n:Lcom/color/compat/location/LocAppsOpNative;

    .line 76
    new-instance v0, Lcom/color/compat/location/LocAppsOpNative;

    invoke-direct {v0}, Lcom/color/compat/location/LocAppsOpNative;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->o:Lcom/color/compat/location/LocAppsOpNative;

    .line 78
    new-instance v0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;-><init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->p:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->k:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/pm/ColorPackageManager;->getColorPackageManager(Landroid/content/Context;)Landroid/content/pm/ColorPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/ColorPackageManager;->getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getApplicationIcon error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationGPSPermission"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->k:Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/af;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/location/LocationManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->m:Landroid/location/LocationManager;

    return-object p0
.end method

.method private a()Landroid/util/AttributeSet;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->g:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f150120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->g:Landroid/util/AttributeSet;

    .line 219
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationGPSPermission"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->g:Landroid/util/AttributeSet;

    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    if-eqz v1, :cond_0

    .line 173
    iget-object v2, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a()Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->l:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    iget-object v4, v4, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->k:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    invoke-virtual {v4}, Lcom/coloros/settings/feature/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget v3, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_2

    .line 182
    iget v3, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    shr-int/lit8 v3, v3, 0x3

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 184
    :goto_2
    invoke-virtual {v2, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 185
    new-instance v3, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;-><init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;)V

    invoke-virtual {v2, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static a(Landroidx/preference/PreferenceCategory;Ljava/lang/String;Z)V
    .locals 1

    xor-int/lit8 v0, p2, 0x1

    .line 126
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceCategory;->setShouldDisableView(Z)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;ZLjava/lang/String;I)V
    .locals 2

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkgName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " op = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationGPSPermission"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p3, p3, 0x7

    shr-int/lit8 p3, p3, 0x3

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_3

    .line 1283
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    const-string p3, "pkg_gps_suggest_on"

    goto :goto_1

    :cond_1
    const-string p3, "pkg_gps_suggest_off"

    .line 1284
    :goto_1
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const-string p2, "close_gps_suggest_on"

    goto :goto_2

    :cond_2
    const-string p2, "open_gps_suggest_off"

    :goto_2
    invoke-static {p0, p2, p1}, Lcom/coloros/settings/feature/security/location/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 3
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

    const-string v0, "LocationGPSPermission"

    if-nez p0, :cond_0

    const-string p0, "addPreferencesSorted prefs is null ! "

    .line 369
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPreferencesSorted prefs size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 121
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/app/Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Ljava/util/HashMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->o:Lcom/color/compat/location/LocAppsOpNative;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->n:Lcom/color/compat/location/LocAppsOpNative;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V
    .locals 9

    .line 2234
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    const-string v1, "LocationGPSPermission"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "filterAppSuggesList mApps size = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->o:Lcom/color/compat/location/LocAppsOpNative;

    invoke-virtual {v0}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v0

    .line 2240
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->n:Lcom/color/compat/location/LocAppsOpNative;

    invoke-virtual {v2}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v0, :cond_7

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 2244
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cfg size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2246
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2247
    new-instance v1, Lcom/color/compat/location/LocAppsOpNative;

    invoke-direct {v1}, Lcom/color/compat/location/LocAppsOpNative;-><init>()V

    const/4 v3, 0x0

    .line 2248
    iget-object v4, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    .line 2249
    iget-object v6, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/feature/a/b;

    if-eqz v6, :cond_5

    .line 2254
    iget-object v7, v6, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_3

    .line 2256
    iget-object v7, v6, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 2257
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    :goto_1
    shl-int/lit8 v7, v7, 0x3

    .line 2260
    iget-object v8, v6, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v8, v7}, Lcom/color/compat/location/LocAppsOpNative;->setAppOp(Ljava/lang/String;I)V

    goto :goto_2

    .line 2262
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2264
    :goto_2
    new-instance v8, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    invoke-direct {v8}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;-><init>()V

    .line 2265
    iput-object v6, v8, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    .line 2266
    iput v7, v8, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    shr-int/lit8 v6, v7, 0x3

    if-ne v6, v5, :cond_4

    .line 2268
    iget-object v5, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2270
    :cond_4
    iget-object v5, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2273
    :cond_6
    invoke-virtual {v1}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2274
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->m:Landroid/location/LocationManager;

    invoke-static {p0, v5, v1}, Lcom/color/compat/location/LocationManagerNative;->setLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string p0, "filterAppSuggesList param error!"

    .line 2235
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Z)V

    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V
    .locals 5

    .line 3131
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSuggestOnView  size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationGPSPermission"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3134
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    const v4, 0x7f120c14

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Landroidx/preference/PreferenceCategory;Ljava/lang/String;Z)V

    const-string v2, "gps_background_suggest_on"

    if-eqz v1, :cond_2

    .line 3136
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3137
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 3139
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 3140
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void

    .line 3142
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3143
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V
    .locals 5

    .line 3149
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSuggestOffView  size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationGPSPermission"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3152
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    const v4, 0x7f120c13

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Landroidx/preference/PreferenceCategory;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    .line 3153
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    const-string v3, "gps_background_suggest_on"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3155
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    :cond_1
    const-string v2, "gps_background_suggest_off"

    if-eqz v1, :cond_3

    .line 3158
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3159
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 3161
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removeAll()V

    .line 3162
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-static {v0, p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void

    .line 3164
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3165
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a:Landroid/app/Activity;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->m:Landroid/location/LocationManager;

    const-string p1, "LocationGPSPermission"

    const-string v0, "initView"

    .line 1106
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1500b1

    .line 1107
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->addPreferencesFromResource(I)V

    const/4 p1, 0x0

    .line 1108
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->setHasOptionsMenu(Z)V

    .line 1109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    .line 1110
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    const-string v0, "gps_background_suggest_on"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d:Landroidx/preference/PreferenceCategory;

    .line 1111
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    const-string v0, "gps_background_suggest_off"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 1112
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c:Landroidx/preference/PreferenceScreen;

    const-string v0, "gps_background_switch_pref_style"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->f:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0a03b6

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b:Landroid/view/View;

    :cond_0
    const/4 p2, 0x1

    .line 94
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Z)V

    .line 1116
    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->p:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p3, v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 361
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 362
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->p:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1228
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->f:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    :cond_0
    return-void
.end method
