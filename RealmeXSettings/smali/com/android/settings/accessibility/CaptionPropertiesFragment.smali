.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$b;


# instance fields
.field protected a:Landroid/view/accessibility/CaptioningManager;

.field protected b:Lcom/android/internal/widget/SubtitleView;

.field protected c:Lcom/android/settings/widget/ToggleSwitch;

.field protected d:Lcom/android/settings/accessibility/ColorPreference;

.field protected e:Lcom/android/settings/accessibility/ColorPreference;

.field protected f:Lcom/android/settings/accessibility/ColorPreference;

.field protected g:Landroidx/preference/PreferenceCategory;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/android/settings/widget/SwitchBar;

.field private k:Lcom/android/settings/accessibility/LocalePreference;

.field private l:Landroidx/preference/ListPreference;

.field private m:Lcom/android/settings/accessibility/PresetPreference;

.field private n:Landroidx/preference/ListPreference;

.field private o:Lcom/android/settings/accessibility/ColorPreference;

.field private p:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private q:Lcom/android/settings/accessibility/ColorPreference;

.field private r:Lcom/android/settings/accessibility/ColorPreference;

.field private s:Lcom/android/settings/accessibility/ColorPreference;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->a()I

    move-result p0

    .line 408
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->a()I

    move-result p1

    .line 411
    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0xffff00

    .line 413
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 416
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method private static synthetic a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 2

    .line 184
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 187
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x10

    .line 191
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr p2, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr p2, v1

    mul-float/2addr p2, v0

    .line 193
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070115

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    mul-float/2addr p2, v0

    .line 197
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const p2, 0x7f1204a2

    if-eqz p0, :cond_1

    .line 202
    invoke-static {p3, p0, p2}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 204
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 206
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    return-void
.end method

.method private static a(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2

    .line 484
    instance-of v0, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    if-eqz v0, :cond_0

    .line 485
    check-cast p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 486
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 487
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 488
    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 3

    .line 387
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    const v1, 0xffffff

    if-nez v0, :cond_0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    move v0, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_1

    const/4 v0, 0x0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    or-int v2, p2, v0

    and-int/2addr p2, v0

    move v0, v2

    :goto_0
    or-int/2addr p2, v1

    .line 402
    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ColorPreference;->b(I)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->i:Landroid/view/View;

    return-object p0
.end method

.method private static synthetic b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic c(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 426
    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->t:Z

    if-eqz v3, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 428
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->t:Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 429
    iget-boolean v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->t:Z

    if-nez v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 431
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->t:Z

    :cond_2
    return-void
.end method

.method public static synthetic lambda$15e2ak_Q8eqNmkoIlcwLko9cJYM(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$rFjG1geI0gYLrwW8pZ3KFXt30zk(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$yOv9aWHPMRXjWoZCPa2STQJqjNM(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_3

    .line 160
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 161
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->i:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 163
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f1204a3

    if-eqz v2, :cond_1

    .line 165
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->h:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 176
    :cond_2
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 177
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->h:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_0

    goto :goto_2

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_3

    const-string p1, "accessibility_captioning_edge_color"

    .line 451
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_4

    const-string p1, "accessibility_captioning_preset"

    .line 453
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->h()V

    goto :goto_3

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->p:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_8

    const-string p1, "accessibility_captioning_edge_type"

    .line 456
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 447
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_window_color"

    .line 448
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 443
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_background_color"

    .line 444
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 439
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_foreground_color"

    .line 440
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a()V

    return-void
.end method

.method protected final b()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    return-void
.end method

.method protected e()V
    .locals 9

    const-string v0, "caption_preview"

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 243
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    const v2, 0x7f0a0502

    .line 244
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SubtitleView;

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    .line 245
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    invoke-static {v1, v3}, Lcom/color/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    const v1, 0x7f0a0505

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->h:Landroid/view/View;

    const v1, 0x7f0a0504

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->i:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "captioning_locale"

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    const-string v0, "captioning_font_size"

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004a

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x7f030049

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "captioning_preset"

    .line 266
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    .line 267
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/accessibility/PresetPreference;->a([I)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/PresetPreference;->a([Ljava/lang/CharSequence;)V

    const-string v1, "custom"

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    .line 271
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->t:Z

    const v2, 0x7f030042

    .line 273
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v4, 0x7f030041

    .line 274
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 275
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_foreground_color"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    .line 276
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 277
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    const v5, 0x7f030048

    .line 279
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v6, 0x7f030047

    .line 280
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v7, "captioning_foreground_opacity"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    .line 283
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 286
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v7, "captioning_edge_color"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    .line 287
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 288
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 291
    array-length v6, v2

    add-int/2addr v6, v1

    new-array v6, v6, [I

    .line 292
    array-length v7, v4

    add-int/2addr v7, v1

    new-array v7, v7, [Ljava/lang/String;

    .line 293
    array-length v8, v2

    invoke-static {v2, v3, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v2, v4

    invoke-static {v4, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    aput v3, v6, v3

    const v1, 0x7f12059d

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 297
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_background_color"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    .line 298
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v7}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_background_opacity"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    .line 302
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_window_color"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    .line 306
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v7}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_window_opacity"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    .line 310
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v1, "captioning_edge_type"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->p:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v1, "captioning_typeface"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    .line 317
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$rFjG1geI0gYLrwW8pZ3KFXt30zk;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$rFjG1geI0gYLrwW8pZ3KFXt30zk;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/LocalePreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$15e2ak_Q8eqNmkoIlcwLko9cJYM;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$15e2ak_Q8eqNmkoIlcwLko9cJYM;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$yOv9aWHPMRXjWoZCPa2STQJqjNM;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$yOv9aWHPMRXjWoZCPa2STQJqjNM;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    return-void
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f15002f

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 128
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    .line 129
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f12004d

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->j:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "captioning"

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e()V

    .line 1341
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result p1

    .line 1342
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/PresetPreference;->b(I)V

    .line 1344
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p1

    .line 1345
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1348
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 1349
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->p:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/EdgeTypePreference;->b(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ColorPreference;->b(I)V

    .line 1352
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    const v2, 0xffffff

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1354
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {v3, v4, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 1356
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1358
    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {v3, v4, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 1360
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 1362
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    invoke-static {v1, v3, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 1364
    iget-object v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 1365
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    const-string v2, ""

    if-nez v0, :cond_3

    move-object v3, v2

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1367
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v1

    .line 1368
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    invoke-static {v2, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 1373
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->h()V

    .line 2325
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->m:Lcom/android/settings/accessibility/PresetPreference;

    .line 3072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2326
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->o:Lcom/android/settings/accessibility/ColorPreference;

    .line 4072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2327
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    .line 5072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2328
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->q:Lcom/android/settings/accessibility/ColorPreference;

    .line 6072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2329
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->r:Lcom/android/settings/accessibility/ColorPreference;

    .line 7072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2330
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    .line 8072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2331
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->s:Lcom/android/settings/accessibility/ColorPreference;

    .line 9072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2332
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    .line 10072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2333
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->p:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 11072
    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->c:Lcom/android/settings/accessibility/ListDialogPreference$b;

    .line 2335
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2336
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2337
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->d()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->n:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 466
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "accessibility_captioning_typeface"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->l:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 469
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 471
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "accessibility_captioning_font_scale"

    .line 469
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->k:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_2

    .line 473
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "accessibility_captioning_locale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a()V

    const/4 p1, 0x1

    return p1
.end method
