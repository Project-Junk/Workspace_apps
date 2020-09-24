.class public Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenRefreshRateFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/coloros/settings/utils/ab;

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private h:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private i:Lcolor/support/v7/app/AlertDialog;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    new-instance v0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    .line 178
    new-instance v0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->j:Landroid/database/ContentObserver;

    return-void
.end method

.method private a()I
    .locals 4

    .line 193
    invoke-static {}, Lcom/coloros/settings/utils/bh;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "coloros_screen_refresh_rate"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)Landroid/app/Activity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "coloros_screen_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceClick set mode "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenRefreshRateFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    const-string v1, "screen_rate_status"

    const-string v2, "screen_rate"

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    .line 175
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic a(ILandroid/content/DialogInterface;)V
    .locals 1

    const-string p2, "ScreenRefreshRateFragment"

    const-string v0, "onPreferenceTreeClick: cancel listener"

    .line 152
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    return-void
.end method

.method private synthetic a(ILandroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "ScreenRefreshRateFragment"

    const-string p3, "onPreferenceTreeClick: negative listener"

    .line 148
    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a()I

    move-result p0

    return p0
.end method

.method private synthetic b()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->highlightPreferenceForce()V

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->setVisible(Z)V

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const v4, 0x7f1215f7

    .line 210
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v4, 0x7f121604

    .line 214
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const v4, 0x7f1215fa

    .line 207
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->setVisible(Z)V

    .line 221
    :cond_3
    iget-object v4, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-nez p1, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 222
    iget-object v4, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne p1, v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 223
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    iget-object v2, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne p1, v0, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne p1, v3, :cond_8

    move v1, v3

    :cond_8
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method private synthetic b(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    return-void
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 233
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 234
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    return-void

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 242
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 245
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$JZuGZgIE6tSbrlRemVTrZsy_Ft0(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Jppg2ULDtPgDi9ZobmcKO7CJSh4(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$KrGssqBXCiPzwbiAIkck2FUXEAk(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b()V

    return-void
.end method

.method public static synthetic lambda$R3TFIuVst1qfQVBKROhip1T_vUs(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(ILandroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/coloros/settings/utils/ab;

    const-string v0, "ScreenRefreshRateFragment"

    invoke-direct {p1, v0}, Lcom/coloros/settings/utils/ab;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b:Lcom/coloros/settings/utils/ab;

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p1, 0x7f1500e2

    .line 75
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->c:Landroidx/preference/PreferenceScreen;

    const-string p1, "refresh_rate_auto"

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "refresh_rate_90Hz"

    .line 78
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "refresh_rate_120Hz"

    .line 79
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "refresh_rate_60Hz"

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "refresh_rate_category"

    .line 81
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 85
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const v0, 0x7f121302

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setSummary(I)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sys_force_60Hz"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->j:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->j:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b:Lcom/coloros/settings/utils/ab;

    invoke-virtual {v0}, Lcom/coloros/settings/utils/ab;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "refresh_rate_auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "refresh_rate_90Hz"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "refresh_rate_60Hz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move p1, v2

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a()I

    move-result v0

    if-eq v0, p1, :cond_5

    if-ne p1, v2, :cond_5

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_4

    .line 143
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121305

    .line 144
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f120139

    .line 145
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f120f1b

    new-instance v4, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$Jppg2ULDtPgDi9ZobmcKO7CJSh4;

    invoke-direct {v4, p0, v2}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$Jppg2ULDtPgDi9ZobmcKO7CJSh4;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    .line 146
    invoke-virtual {p1, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f120491

    new-instance v3, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$JZuGZgIE6tSbrlRemVTrZsy_Ft0;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$JZuGZgIE6tSbrlRemVTrZsy_Ft0;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    .line 147
    invoke-virtual {p1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$R3TFIuVst1qfQVBKROhip1T_vUs;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$R3TFIuVst1qfQVBKROhip1T_vUs;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    .line 151
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 159
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    .line 160
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->i:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_1

    .line 163
    :cond_5
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(I)V

    :cond_6
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(I)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_force_60Hz"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->c(I)V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$KrGssqBXCiPzwbiAIkck2FUXEAk;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenRefreshRateFragment$KrGssqBXCiPzwbiAIkck2FUXEAk;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
