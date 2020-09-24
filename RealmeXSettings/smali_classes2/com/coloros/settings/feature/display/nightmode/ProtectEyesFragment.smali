.class public Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "ProtectEyesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final b:Landroid/net/Uri;


# instance fields
.field a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

.field private c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private d:Landroidx/preference/PreferenceGroup;

.field private e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

.field private g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private i:Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;

.field private j:Z

.field private k:Landroid/content/ContentResolver;

.field private l:Landroid/app/Activity;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "color_eyeprotect_enable"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b:Landroid/net/Uri;

    .line 401
    new-instance v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->j:Z

    .line 102
    new-instance v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$1;-><init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)V
    .locals 0

    .line 9225
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->isVisible()Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->j:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->j:Z

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->e(Landroid/content/ContentResolver;Z)V

    .line 269
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/b;->d(Landroid/content/ContentResolver;Z)V

    .line 270
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->j:Z

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/b;->c(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c()V

    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    const/4 v1, 0x0

    .line 3133
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b:Z

    .line 190
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 193
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    const/4 v1, 0x1

    .line 4133
    iput-boolean v1, v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b:Z

    .line 203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12113d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const v0, 0x7f15009c

    .line 129
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->addPreferencesFromResource(I)V

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    .line 131
    new-instance v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;-><init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

    const-string v0, "key_fixed_time_settings"

    .line 1146
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    .line 1147
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->f:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    .line 1425
    iput-object p0, v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;

    const-string v0, "key_fixed_time_open"

    .line 1149
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1150
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_immediately_open"

    .line 1152
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1153
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "color_temperature"

    .line 1155
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->i:Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;

    const-string v0, "key_normal"

    .line 1158
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 1159
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_saturation"

    .line 1160
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 1161
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_group_saturation"

    .line 1162
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d:Landroidx/preference/PreferenceGroup;

    .line 133
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b()V

    .line 2397
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v3, "20120"

    const-string v4, "enter_protect_eyes_setting"

    invoke-static {v0, v3, v4, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v3, "display_mode_change"

    .line 3113
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v1, v2

    .line 135
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->j:Z

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 329
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPause()V

    .line 330
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

    if-eqz v0, :cond_0

    .line 8375
    iget-object v1, v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    .line 9051
    iget-object v1, v1, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    .line 8375
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->i:Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;

    if-eqz v0, :cond_1

    .line 9089
    iget-object v1, v0, Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    if-eqz v1, :cond_1

    .line 9090
    iget-object v0, v0, Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/nightmode/a;->b()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 232
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 235
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_fixed_time_open"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 237
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->c(Landroid/content/ContentResolver;)V

    if-eqz p2, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c()V

    goto :goto_1

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d()V

    .line 243
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;Z)V

    .line 244
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e()V

    goto :goto_3

    :cond_2
    const-string v0, "key_immediately_open"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->c(Landroid/content/ContentResolver;)V

    .line 248
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;Z)V

    .line 4388
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mode"

    const-string v1, "2"

    .line 4390
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    const-string p2, "open_protect_eyes_type"

    goto :goto_2

    :cond_3
    const-string p2, "close_protect_eyes_type"

    .line 4392
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    const-string v1, "20120"

    invoke-static {v0, v1, p2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    const-string v0, "key_saturation"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_6

    .line 252
    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(ZZ)V

    .line 253
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    const-string v0, "key_normal"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 257
    invoke-direct {p0, v2, v1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(ZZ)V

    .line 258
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    :cond_6
    :goto_3
    return v2
.end method

.method public onResume()V
    .locals 5

    .line 301
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->l:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 305
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5370
    iget-object v2, v0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    .line 6051
    iget-object v2, v2, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    .line 7051
    sget-object v3, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b:Landroid/net/Uri;

    const/4 v4, -0x1

    .line 5370
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->i:Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;

    if-eqz v0, :cond_1

    .line 7083
    iget-object v2, v0, Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    if-eqz v2, :cond_1

    .line 7084
    iget-object v0, v0, Lcom/coloros/settings/feature/display/nightmode/ColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/nightmode/a;->a()V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b()V

    .line 7167
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_2

    .line 7168
    iget-object v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 7169
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->m:Landroid/os/Handler;

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7275
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    const-string v2, "gray_scale_on"

    .line 8109
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_3

    move v1, v2

    :cond_3
    xor-int/lit8 v0, v1, 0x1

    .line 7277
    iget-object v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 7278
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->k:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method
