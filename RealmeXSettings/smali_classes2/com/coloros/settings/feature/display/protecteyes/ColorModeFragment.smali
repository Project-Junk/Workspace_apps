.class public Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorModeFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/color/widget/ColorViewPager;

.field private c:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field private d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private h:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private i:Landroidx/preference/PreferenceCategory;

.field private j:Landroid/os/Handler;

.field private k:Lcolor/support/v7/app/AlertDialog;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;

    new-instance v1, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;

    const/4 v2, 0x0

    const v3, 0x7f08046e

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;-><init>(IB)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;

    const v3, 0x7f08046f

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;-><init>(IB)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;

    const v3, 0x7f080471

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;-><init>(IB)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a:Ljava/util/List;

    .line 399
    new-instance v0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$6;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$6;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->c:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    return-object p0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 55
    sget-object v0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 9

    if-eqz p1, :cond_6

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->k:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 174
    invoke-static {v5}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v3

    const v0, 0x3e2e147b    # 0.17f

    const/4 v1, -0x2

    const-string v2, "color_display_level"

    .line 175
    invoke-static {v5, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 180
    invoke-static {}, Lcom/coloros/settings/utils/al;->v()I

    move-result v0

    const-string v2, "oppo_color_mode"

    invoke-static {v5, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 184
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(I)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const v1, 0x7f12058c

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const v1, 0x7f120592

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    const v1, 0x7f120589

    .line 197
    :goto_1
    new-instance v7, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121138

    .line 198
    invoke-virtual {v7, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v7, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120597

    .line 200
    new-instance v8, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;

    move-object v1, v8

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;-><init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;ZZLandroid/content/ContentResolver;I)V

    invoke-virtual {v7, p1, v8}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 218
    new-instance p2, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;-><init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;I)V

    invoke-virtual {v7, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 225
    new-instance p1, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$4;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$4;-><init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;I)V

    invoke-virtual {v7, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v7}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->k:Lcolor/support/v7/app/AlertDialog;

    .line 232
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->k:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    .line 193
    :cond_5
    invoke-static {v5, v2, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 194
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;Landroid/view/View;)V
    .locals 4

    .line 2155
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2156
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08046e

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2158
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2159
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f07028d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    mul-int/2addr v2, v0

    .line 2163
    div-int/2addr v2, v1

    .line 2164
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 2165
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2166
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcom/color/widget/ColorViewPager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->b:Lcom/color/widget/ColorViewPager;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 268
    invoke-static {}, Lcom/coloros/settings/utils/bh;->r()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne p1, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 274
    invoke-static {}, Lcom/coloros/settings/utils/bh;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 277
    :cond_5
    invoke-static {}, Lcom/coloros/settings/utils/bh;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "Color_mode"

    const-string v2, "color_mode"

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500cc

    .line 101
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->addPreferencesFromResource(I)V

    const-string p1, "color_mode_category"

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->i:Landroidx/preference/PreferenceCategory;

    const-string p1, "color_mode_colorful"

    .line 105
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "color_mode_vivid"

    .line 106
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "color_mode_soft"

    .line 107
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->f:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "color_mode_adaptive"

    .line 108
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "color_mode_cinema"

    .line 109
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->j:Landroid/os/Handler;

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const v1, 0x7f120599

    .line 1315
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f12059a

    .line 1318
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {}, Lcom/coloros/settings/utils/bh;->r()Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->i:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 116
    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/bh;->s()Z

    move-result p1

    if-nez p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->i:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 119
    :cond_3
    invoke-static {}, Lcom/coloros/settings/utils/bh;->t()Z

    move-result p1

    if-nez p1, :cond_4

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->i:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->h:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f13040c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0501

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/widget/ColorViewPager;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->b:Lcom/color/widget/ColorViewPager;

    .line 131
    iget-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->b:Lcom/color/widget/ColorViewPager;

    new-instance p3, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V

    invoke-virtual {p2, p3}, Lcom/color/widget/ColorViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    const p2, 0x7f0a01a9

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->c:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 133
    iget-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->c:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    sget-object p3, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 134
    iget-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->c:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setCurrentPosition(I)V

    .line 135
    iget-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->b:Lcom/color/widget/ColorViewPager;

    new-instance p3, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;-><init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V

    invoke-virtual {p2, p3}, Lcom/color/widget/ColorViewPager;->setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 285
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode_colorful"

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V

    return v2

    :cond_0
    const-string v1, "color_mode_vivid"

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V

    return v2

    :cond_1
    const-string v1, "color_mode_soft"

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V

    return v2

    :cond_2
    const-string v1, "color_mode_adaptive"

    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V

    return v2

    :cond_3
    const-string v1, "color_mode_cinema"

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V

    return v2

    .line 305
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 242
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/coloros/settings/utils/al;->v()I

    move-result v1

    const-string v2, "oppo_color_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 246
    invoke-static {}, Lcom/coloros/settings/utils/bh;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 250
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(I)V

    .line 251
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->j:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;-><init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
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
