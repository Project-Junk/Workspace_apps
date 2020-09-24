.class public Lcom/coloros/settings/feature/display/font/FontSettingsFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "FontSettingsFragment.java"


# instance fields
.field private final a:Landroid/content/res/Configuration;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

.field private n:I

.field private o:[F

.field private final p:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->n:I

    .line 76
    new-instance v0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/display/font/FontSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->p:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    return-void
.end method

.method private static a(I)F
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    const p0, 0x3fa66666    # 1.3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-gt p0, v0, :cond_1

    const p0, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_1
    const p0, 0x3f8ccccd    # 1.1f

    :goto_0
    return p0
.end method

.method private a()I
    .locals 7

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FontSettings"

    const-string v1, "Unable to retrieve font size"

    .line 173
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1158
    iget-object v1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->o:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .line 1159
    :goto_1
    iget-object v4, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->o:[F

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 1160
    aget v5, v4, v1

    sub-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    sub-int/2addr v1, v2

    return v1

    .line 1163
    :cond_0
    aget v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    :cond_1
    array-length v0, v4

    sub-int/2addr v0, v2

    return v0
.end method

.method private a(IF)I
    .locals 1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    .line 253
    iget-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->b:Landroid/content/Context;

    .line 254
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    .line 253
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 255
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private a(F)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    .line 183
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 184
    iget-object p1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->b:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "settings_shared"

    .line 1285
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1287
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "is_internal_restart"

    .line 1288
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1289
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->o:[F

    aget v0, v0, p1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTitleByIdex: index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",updateSystemText = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FontSettings"

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 192
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(F)V

    return-void

    .line 194
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->b(F)V

    return-void
.end method

.method private a(Landroid/widget/TextView;IIIFI)V
    .locals 2

    int-to-float v0, p2

    mul-float/2addr v0, p5

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float p6, p6

    .line 225
    invoke-static {p2}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(I)F

    move-result p2

    invoke-virtual {p1, p6, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 227
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_2

    .line 229
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-lez p3, :cond_0

    .line 231
    invoke-direct {p0, p3, p5}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IF)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    if-lez p4, :cond_1

    .line 234
    invoke-direct {p0, p4, p5}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IF)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 236
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 237
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 238
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p3, :cond_3

    .line 240
    invoke-direct {p0, p3, p5}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IF)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_3
    if-lez p4, :cond_4

    .line 243
    invoke-direct {p0, p4, p5}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IF)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 245
    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/font/FontSettingsFragment;IZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IZ)V

    return-void
.end method

.method private b(F)V
    .locals 9

    .line 199
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 202
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->c:Landroid/widget/TextView;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object v2, p0

    move v7, p1

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 203
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->d:Landroid/widget/TextView;

    const/16 v4, 0x14

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 204
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->e:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 205
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->f:Landroid/widget/TextView;

    const/16 v4, 0xe

    const/16 v6, 0x10

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 208
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->g:Landroid/widget/TextView;

    const/16 v4, 0xd

    const/4 v5, 0x6

    const/16 v6, 0x18

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 210
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->h:Landroid/widget/TextView;

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 211
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->i:Landroid/widget/TextView;

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 212
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->j:Landroid/widget/TextView;

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 213
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->k:Landroid/widget/TextView;

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    .line 214
    iget-object v3, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->l:Landroid/widget/TextView;

    invoke-direct/range {v2 .. v8}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Landroid/widget/TextView;IIIFI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121702

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d0218

    .line 104
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02e7

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->c:Landroid/widget/TextView;

    const p2, 0x7f0a06f9

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->d:Landroid/widget/TextView;

    const p2, 0x7f0a0668

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->e:Landroid/widget/TextView;

    const p2, 0x7f0a00e3

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->f:Landroid/widget/TextView;

    const p2, 0x7f0a02b6

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->m:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const p2, 0x7f0a02af

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->g:Landroid/widget/TextView;

    const p2, 0x7f0a02b3

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->h:Landroid/widget/TextView;

    const p2, 0x7f0a02b4

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->i:Landroid/widget/TextView;

    const p2, 0x7f0a02b2

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->j:Landroid/widget/TextView;

    const p2, 0x7f0a02b1

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->k:Landroid/widget/TextView;

    const p2, 0x7f0a02b0

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->l:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->b:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->supportFullScreen()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->setMainLayoutPaddingTop(Landroid/view/View;)V

    .line 1145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030091

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 1147
    array-length v0, p2

    new-array v0, v0, [F

    move v1, p3

    .line 1148
    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 1149
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    :cond_0
    iput-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->o:[F

    .line 1132
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a()I

    move-result p2

    .line 1134
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->o:[F

    array-length v0, v0

    iput v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->n:I

    .line 1136
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->m:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iget v1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setNumber(I)V

    .line 1137
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->m:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->p:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    .line 1138
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->m:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {v0, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setThumbIndex(I)V

    .line 1139
    invoke-direct {p0, p2, p3}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(IZ)V

    return-object p1
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
