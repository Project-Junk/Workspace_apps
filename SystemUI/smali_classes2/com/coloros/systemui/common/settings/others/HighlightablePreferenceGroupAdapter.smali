.class public Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# static fields
.field static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x12cL

.field private static final DELAY_TIME:I = 0xc8

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final HIGHLIGHT_DURATION:J = 0x3e8L

.field private static final HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT:I = -0x1b1b1c

.field private static final LAST_TIME:I = 0x1f4

.field private static final START_TIME:I = 0x64

.field private static final STOP_TIME:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "HighlightableAdapter"


# instance fields
.field mFadeInAnimated:Z

.field final mHighlightColor:I

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 99
    iput-object p2, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    .line 100
    iput-boolean p3, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 101
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101030e

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    const p1, -0x1b1b1c

    .line 106
    iput p1, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    return-void
.end method

.method private addHighlightBackground(Landroid/view/View;Z)V
    .locals 2

    const/4 p2, 0x1

    .line 161
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0a046f

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 162
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iput-boolean p2, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 167
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-static {v0, p2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-string p2, "HighlightableAdapter"

    const-string v0, "AddHighlight: starting fade in animation"

    .line 171
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void
.end method

.method public static adjustInitialExpandedChildCount(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, ":settings:fragment_args_key"

    .line 82
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7fffffff

    .line 84
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    :cond_2
    return-void
.end method

.method private static getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 177
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/4 v12, 0x6

    if-ge v4, v12, :cond_1

    int-to-double v13, v4

    add-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v12

    div-double/2addr v13, v6

    .line 182
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    .line 183
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_0

    .line 185
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    aput-object v6, v5, v11

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v12, 0xfa

    invoke-virtual {v2, v4, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x1f

    move v12, v3

    :goto_2
    const/16 v13, 0x190

    if-ge v12, v4, :cond_4

    rsub-int/lit8 v14, v12, 0x1f

    int-to-double v14, v14

    sub-double/2addr v14, v6

    mul-double/2addr v14, v8

    int-to-double v6, v4

    div-double/2addr v14, v6

    .line 195
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v14

    .line 196
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_2

    .line 198
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v13, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v13, v3

    aput-object v6, v13, v11

    invoke-direct {v7, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 201
    :cond_2
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x1e

    if-ne v12, v6, :cond_3

    .line 203
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 204
    invoke-virtual {v2, v6, v13}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 209
    invoke-virtual {v2, v1, v13}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    :cond_5
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v2
.end method

.method private removeHighlightBackground(Landroid/view/View;Z)V
    .locals 0

    .line 216
    iget p0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p0, "HighlightableAdapter"

    const-string p1, "Starting fade out animation"

    .line 217
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isHighlightRequested()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return p0
.end method

.method public synthetic lambda$requestHighlight$0$HighlightablePreferenceGroupAdapter(I)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 144
    iput p1, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 145
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$requestRemoveHighlightDelayed$1$HighlightablePreferenceGroupAdapter(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, 0x1

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->updateBackground(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 136
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    .line 140
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 142
    :cond_3
    new-instance p2, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;

    invoke-direct {p2, p0, v0}, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;-><init>(Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method requestRemoveHighlightDelayed(Landroid/view/View;)V
    .locals 3

    .line 154
    new-instance v0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;-><init>(Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    .line 116
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 117
    iget v0, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_0

    .line 119
    iget-boolean p2, p0, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroid/view/View;Z)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0a046f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
