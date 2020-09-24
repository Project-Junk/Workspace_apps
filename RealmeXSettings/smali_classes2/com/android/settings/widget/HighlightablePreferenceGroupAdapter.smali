.class public Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# instance fields
.field final a:I

.field b:Z

.field public c:Z

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->f:I

    .line 102
    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->e:Ljava/lang/String;

    .line 103
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c:Z

    .line 104
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101030e

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 108
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->d:I

    const p1, -0x1b1b1c

    .line 109
    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a:I

    return-void
.end method

.method private synthetic a(I)V
    .locals 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result p1

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->f:I

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->notifyItemChanged(I)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 175
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$hNm0jTUvyKgM4VXgx1hTvY91Zg0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$hNm0jTUvyKgM4VXgx1hTvY91Zg0;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ":settings:fragment_args_key"

    .line 85
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const p0, 0x7fffffff

    .line 87
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getInitialExpandedChildCount()I

    move-result p0

    if-gtz p0, :cond_2

    return-void

    .line 96
    :cond_2
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "HighlightableAdapter"

    const-string v0, "Starting fade out animation"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->f:I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hNm0jTUvyKgM4VXgx1hTvY91Zg0(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$wkOmPAXWEr95FEMA9jH2g4hNvUo(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c:Z

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 138
    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    .line 140
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    sub-int/2addr v0, v2

    .line 142
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 144
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->c:Z

    return-void

    :cond_4
    if-eqz p3, :cond_5

    .line 149
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_5
    if-le v0, v2, :cond_6

    add-int/lit8 p3, v0, -0x2

    .line 151
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_6
    add-int/lit8 p3, v0, -0x1

    .line 153
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 156
    :goto_1
    new-instance p2, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$wkOmPAXWEr95FEMA9jH2g4hNvUo;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$wkOmPAXWEr95FEMA9jH2g4hNvUo;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;I)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    .line 114
    invoke-super/range {p0 .. p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    move-object/from16 v1, p1

    .line 1119
    iget-object v1, v1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 1120
    iget v2, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->f:I

    const v3, 0x7f0a04fb

    move/from16 v4, p2

    if-ne v4, v2, :cond_7

    .line 1182
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1183
    iget-boolean v2, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->b:Z

    if-eqz v2, :cond_0

    .line 1184
    invoke-direct {v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 1187
    iput-boolean v2, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->b:Z

    .line 1188
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1189
    iget v4, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a:I

    .line 1199
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x6

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const-wide v12, 0x406fe00000000000L    # 255.0

    if-ge v7, v8, :cond_2

    int-to-double v14, v7

    add-double/2addr v14, v10

    mul-double/2addr v14, v12

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    div-double/2addr v14, v10

    .line 1204
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v10, v14

    .line 1205
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v3, :cond_1

    .line 1207
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v9, v6

    aput-object v8, v9, v2

    invoke-direct {v10, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0x10

    .line 1208
    invoke-virtual {v5, v10, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    .line 1210
    invoke-virtual {v5, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1213
    :cond_2
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v8, 0xfa

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    move v7, v6

    :goto_2
    const/16 v8, 0x190

    const/16 v14, 0x1f

    if-ge v7, v14, :cond_5

    sub-int/2addr v14, v7

    int-to-double v14, v14

    sub-double/2addr v14, v10

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x403f000000000000L    # 31.0

    div-double v14, v14, v16

    .line 1217
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v11, v14

    .line 1218
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v3, :cond_3

    .line 1220
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    new-array v11, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v11, v6

    aput-object v10, v11, v2

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x10

    .line 1221
    invoke-virtual {v5, v8, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    :cond_3
    const/16 v11, 0x10

    .line 1223
    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v10, 0x1e

    if-ne v7, v10, :cond_4

    .line 1225
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1226
    invoke-virtual {v5, v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 1231
    invoke-virtual {v5, v3, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1233
    :cond_6
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1191
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-string v2, "HighlightableAdapter"

    const-string v3, "AddHighlight: starting fade in animation"

    .line 1193
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-direct {v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->a(Landroid/view/View;)V

    return-void

    .line 1123
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1125
    invoke-direct {v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->b(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method
