.class public Lcom/color/settingslib/provider/ColorSettingsSearchUtils;
.super Ljava/lang/Object;
.source "ColorSettingsSearchUtils.java"


# static fields
.field public static final ARGS_COLOR_CATEGORY:Ljava/lang/String; = ":settings:fragment_args_color_category"

.field public static final ARGS_COLOR_PREFERENCE:Ljava/lang/String; = ":settings:fragment_args_color_preferece"

.field public static final ARGS_HIGHT_LIGHT_TIME:Ljava/lang/String; = ":settings:fragment_args_light_time"

.field public static final ARGS_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final ARGS_WAIT_TIME:Ljava/lang/String; = ":settings:fragment_args_wait_time"

.field private static final DELAY_TIME:I = 0x96

.field public static final HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT:I = -0x1b1b1c

.field public static final HIGH_LIGHT_TIME_DEFAULT:I = 0x3e8

.field private static final LAST_TIME:I = 0x1f4

.field public static final RAW_RENAME_EXTRA_KEY:Ljava/lang/String; = "_settings_extra_key"

.field private static final START_TIME:I = 0x64

.field private static final STOP_TIME:I = 0xfa

.field public static final WAIT_TIME_DEFAULT:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;IIZ)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->showHightlight(Landroid/widget/ListView;IIZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ListView;Ljava/lang/String;)I
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->canUseListViewForHighLighting(Landroid/widget/ListView;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static calculateHightlight(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Ljava/lang/String;II)V
    .locals 0

    .line 203
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 207
    :cond_0
    instance-of p0, p0, Landroid/preference/PreferenceCategory;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 214
    :goto_0
    invoke-static {p1, p2, p3, p0, p4}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V

    return-void
.end method

.method private static calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V
    .locals 7

    if-eqz p0, :cond_0

    .line 179
    new-instance v6, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$2;-><init>(Landroid/widget/ListView;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static canUseListViewForHighLighting(Landroid/widget/ListView;Ljava/lang/String;)I
    .locals 5

    .line 291
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 294
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 296
    invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 297
    instance-of v4, v3, Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 298
    check-cast v3, Landroid/preference/Preference;

    .line 299
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 15

    move v0, p0

    move-object/from16 v1, p1

    .line 253
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    const/4 v10, 0x1

    const/16 v11, 0x10

    const/4 v12, 0x6

    if-ge v4, v12, :cond_1

    int-to-double v13, v4

    add-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v12

    div-double/2addr v13, v6

    .line 258
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    .line 259
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_0

    .line 261
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    aput-object v6, v5, v10

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-virtual {v2, v7, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {v2, v6, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v12, 0xfa

    invoke-virtual {v2, v4, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x1f

    move v12, v3

    :goto_2
    if-ge v12, v4, :cond_4

    rsub-int/lit8 v13, v12, 0x1f

    int-to-double v13, v13

    sub-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v4

    div-double/2addr v13, v6

    .line 271
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    .line 272
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_2

    .line 274
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v13, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v13, v3

    aput-object v6, v13, v10

    invoke-direct {v7, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {v2, v7, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 277
    :cond_2
    invoke-virtual {v2, v6, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x1e

    if-ne v12, v6, :cond_3

    .line 279
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v7, 0x12c

    .line 280
    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const/16 v0, 0x96

    .line 285
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    return-object v2
.end method

.method public static highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, p2, p3, v0}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;I)V

    return-void
.end method

.method public static highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;I)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":settings:fragment_args_key"

    .line 82
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 83
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    .line 90
    new-instance p3, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$1;

    invoke-direct {p3, p1, p4, p0, p2}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$1;-><init>(IILandroid/widget/ListView;Z)V

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, p1, p2, v0}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":settings:fragment_args_key"

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, -0x1b1b1c

    .line 137
    invoke-static {p0, p1, p2, v0, p3}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->calculateHightlight(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-static {p0, p1, v0}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;I)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":settings:fragment_args_key"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, -0x1b1b1c

    const/4 v1, 0x0

    .line 172
    invoke-static {p0, p1, v0, v1, p2}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static showHightlight(Landroid/widget/ListView;IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance p3, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;

    invoke-direct {p3, p1, p0, p2}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;-><init>(ILandroid/widget/ListView;I)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p3, p1, p2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
