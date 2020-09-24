.class public Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "RealmeCurvedDisplaySettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/ColorSubSettings$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/ContentResolver;

.field private c:Lcom/color/support/preference/ColorSwitchPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 355
    new-instance v0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 9

    const-string v0, "red"

    if-nez p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v2, "oppo_comm_incallui_curved_display_call_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    goto :goto_2

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v2, "oppo_comm_incallui_curved_display_notification_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    :goto_2
    const/4 v3, -0x1

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3c21d9d2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v5, :cond_5

    const v5, 0x1b891

    if-eq v4, v5, :cond_4

    const v0, 0x2e305a

    if-eq v4, v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "blue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v7

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v8

    goto :goto_3

    :cond_5
    const-string v0, "orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v6

    :cond_6
    :goto_3
    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_7

    goto :goto_4

    :cond_7
    move v8, v6

    goto :goto_4

    :cond_8
    move v8, v7

    .line 270
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 271
    aget-object v0, v0, v8

    if-nez p1, :cond_a

    .line 272
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->e:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz p1, :cond_a

    .line 273
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->e:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 275
    :cond_a
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz p1, :cond_b

    .line 276
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :cond_b
    :goto_5
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(II)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "orange"

    goto :goto_0

    :cond_1
    const-string p2, "blue"

    goto :goto_0

    :cond_2
    const-string p2, "red"

    .line 343
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 345
    iput-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    return-void

    .line 347
    :cond_4
    iput-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_side_notification_incomming_type"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "oppo_aod_curved_display_notification_switch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 285
    iget-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    if-eq v1, v4, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 288
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b(Landroid/widget/ImageView;)V

    return-void

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_curved_display_call_color"

    .line 291
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_curved_display_notification_color"

    .line 292
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5

    .line 304
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "red"

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    const/4 v0, -0x1

    .line 307
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1b891

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v1, 0x2e305a

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "blue"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_5

    .line 317
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    if-ne p1, p2, :cond_4

    const p2, 0x7f0804f2

    goto :goto_1

    :cond_4
    const p2, 0x7f0804f6

    goto :goto_1

    .line 313
    :cond_5
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    if-ne p1, p2, :cond_6

    const p2, 0x7f0804f1

    goto :goto_1

    :cond_6
    const p2, 0x7f0804f5

    goto :goto_1

    .line 309
    :cond_7
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    if-ne p1, p2, :cond_8

    const p2, 0x7f0804f3

    goto :goto_1

    :cond_8
    const p2, 0x7f0804f7

    .line 321
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_side_notification_incomming_type"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 231
    aget-object v1, v1, v0

    .line 232
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v2, :cond_0

    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->i:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const v0, 0x7f0804f0

    goto :goto_0

    :cond_0
    const v0, 0x7f0804f4

    .line 300
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    const v0, 0x7f150101

    .line 117
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    const v0, 0x7f150079

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public static synthetic lambda$0LoG3h0MYjywmwiayif3wSWjoE8(Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->d()V

    return-void
.end method

.method public static synthetic lambda$zH3rmQeqHAkV5-n3lDG0otdQYhE(Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->c()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v0, "oppo_comm_incallui_curved_display_call_color"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "red"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->o:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_curved_display_notification_color"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/coloros/settings/ColorSubSettings;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/coloros/settings/ColorSubSettings;

    .line 1034
    iput-object p0, v0, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120686

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 115
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$0LoG3h0MYjywmwiayif3wSWjoE8;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$0LoG3h0MYjywmwiayif3wSWjoE8;-><init>(Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$zH3rmQeqHAkV5-n3lDG0otdQYhE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$zH3rmQeqHAkV5-n3lDG0otdQYhE;-><init>(Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/coloros/settings/utils/bg$d;->a()V

    const-string v0, "key_curved_display_show"

    .line 119
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a0359

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    const v1, 0x7f0a035a

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    const-string v0, "curved_setting_view_incall_preference"

    .line 122
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    const-string v0, "curved_display_notification_switch_key"

    .line 123
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->c:Lcom/color/support/preference/ColorSwitchPreference;

    const-string v0, "curved_setting_view_incall_color_preference"

    .line 124
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->e:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    const-string v0, "curved_setting_view_lock_color_preference"

    .line 125
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->c:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->e:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->f:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1163
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v3, "oppo_aod_curved_display_notification_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1164
    iget-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->c:Lcom/color/support/preference/ColorSwitchPreference;

    if-ne v0, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 1165
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->k:Ljava/lang/String;

    .line 1167
    iget-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const-string v5, "oppo_comm_incallui_side_notification_incomming_type"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1169
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    const/4 v5, 0x4

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1170
    iget-object v3, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    if-ne v0, v2, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1173
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b()V

    .line 1175
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(I)V

    .line 1176
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(I)V

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 6

    .line 148
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "switch_change_after"

    const-string v2, "switch_change_before"

    const-string v3, "20012"

    if-nez v0, :cond_0

    .line 1379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1380
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    const-string v5, "curved_display_incall_switch_change"

    invoke-static {v4, v3, v5, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1388
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    const-string v2, "curved_display_notification_switch_change"

    invoke-static {v1, v3, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "color_change_after"

    const-string v2, "color_change_before"

    if-nez v0, :cond_2

    .line 1397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1398
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    const-string v5, "curved_display_incall_color_change"

    invoke-static {v4, v3, v5, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1408
    iget-object v4, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a:Landroid/app/Activity;

    const-string v2, "curved_display_notification_color_change"

    invoke-static {v1, v3, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 181
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "curved_setting_view_incall_color_preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "curved_display_notification_switch_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "curved_setting_view_lock_color_preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "curved_setting_view_incall_preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_3

    .line 216
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 217
    invoke-direct {p0, v4, p1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(II)V

    .line 218
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->p:Ljava/lang/String;

    const-string v0, "oppo_comm_incallui_curved_display_notification_color"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(I)V

    goto :goto_3

    .line 209
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 210
    invoke-direct {p0, v3, p1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(II)V

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->n:Ljava/lang/String;

    const-string v0, "oppo_comm_incallui_curved_display_call_color"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(I)V

    goto :goto_3

    .line 196
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->m:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x1f4

    cmp-long p1, v1, v6

    if-lez p1, :cond_7

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->m:J

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 199
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "oppo_comm_incallui_side_notification_incomming_type"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b()V

    .line 203
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 205
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(Landroid/widget/ImageView;)V

    goto :goto_3

    .line 184
    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 186
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->b:Landroid/content/ContentResolver;

    const-string v1, "oppo_aod_curved_display_notification_switch"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->l:Ljava/lang/String;

    .line 190
    iget-object p2, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v0, v5

    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->h:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;->a(Landroid/widget/ImageView;)V

    :cond_7
    :goto_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x485b668a -> :sswitch_3
        -0x1ab133d6 -> :sswitch_2
        0x3fda1b41 -> :sswitch_1
        0x549c3392 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    return-void
.end method
