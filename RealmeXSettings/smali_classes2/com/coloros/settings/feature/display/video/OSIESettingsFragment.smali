.class public Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "OSIESettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private e:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    const-string v0, "OSIEFragment"

    .line 49
    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->a:Ljava/lang/String;

    const-string v0, "oppo_osie_switch"

    .line 51
    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->b:Ljava/lang/String;

    const-string v0, "oppo_osie_animation"

    .line 52
    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->c:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;-><init>(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->e:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.market"

    const/16 v2, 0x2000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500ea

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->addPreferencesFromResource(I)V

    const-string p1, "oppo_osie_switch"

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "oppo_osie_apps_category"

    .line 65
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    const-string p1, "oppo_osie_animation"

    .line 67
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a049d

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f08095a

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->e:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->e:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 92
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo_osie_switch"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ap;->a(Landroid/content/Context;Z)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo_osie_apps"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1207fb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oaps://mk/recapp?rtp=videox&goback=1&t="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f120fa2

    .line 1133
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-static {}, Lcom/b/a/a/a;->a()Lcom/b/a/a/a$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1173
    iput-object v2, v1, Lcom/b/a/a/a$a;->c:Landroid/content/Context;

    .line 1135
    invoke-virtual {v1, v0}, Lcom/b/a/a/a$a;->a(Ljava/lang/String;)Lcom/b/a/a/a$a;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$2;-><init>(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;)V

    .line 2168
    iput-object v1, v0, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/a/a;

    .line 1141
    invoke-virtual {v0}, Lcom/b/a/a/a$a;->a()Lcom/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "OSIEFragment"

    const-string v1, "no supprot !"

    .line 1143
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method
