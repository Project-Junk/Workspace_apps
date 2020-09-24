.class public Lcom/android/settingslib/widget/BarChartPreference;
.super Landroidx/preference/Preference;
.source "BarChartPreference.java"


# static fields
.field private static final b:[I


# instance fields
.field public a:Lcom/android/settingslib/widget/e;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/widget/h$d;->bar_view1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/h$d;->bar_view2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/h$d;->bar_view3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/h$d;->bar_view4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/widget/BarChartPreference;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setSelectable(Z)V

    .line 185
    sget v0, Lcom/android/settingslib/widget/h$e;->settings_bar_chart:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setLayoutResource(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/h$b;->settings_bar_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->c:I

    return-void
.end method

.method private a(Landroidx/preference/PreferenceViewHolder;Z)V
    .locals 4

    .line 246
    sget v0, Lcom/android/settingslib/widget/h$d;->bar_views_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    sget v1, Lcom/android/settingslib/widget/h$d;->empty_view:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 248
    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 10067
    iget v1, v1, Lcom/android/settingslib/widget/e;->c:I

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 253
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    move v1, v2

    .line 254
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->d:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->notifyChanged()V

    return-void
.end method

.method public final a([Lcom/android/settingslib/widget/f;)V
    .locals 2
    .param p1    # [Lcom/android/settingslib/widget/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 131
    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "We only support up to four bar views"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 1089
    iput-object p1, v0, Lcom/android/settingslib/widget/e;->e:[Lcom/android/settingslib/widget/f;

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    .line 157
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 159
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 1191
    sget v1, Lcom/android/settingslib/widget/h$d;->bar_chart_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1192
    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 2048
    iget v2, v2, Lcom/android/settingslib/widget/e;->a:I

    .line 1192
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2196
    sget v1, Lcom/android/settingslib/widget/h$d;->bar_chart_details:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2197
    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 3057
    iget v2, v2, Lcom/android/settingslib/widget/e;->b:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2199
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2201
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2202
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 2203
    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 3076
    iget-object v2, v2, Lcom/android/settingslib/widget/e;->d:Landroid/view/View$OnClickListener;

    .line 2203
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->d:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    .line 168
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 171
    :cond_1
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 3085
    iget-object v1, v1, Lcom/android/settingslib/widget/e;->e:[Lcom/android/settingslib/widget/f;

    if-eqz v1, :cond_a

    .line 175
    array-length v1, v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    .line 179
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/settingslib/widget/BarChartPreference;->a(Landroidx/preference/PreferenceViewHolder;Z)V

    .line 3226
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 4085
    iget-object v0, v0, Lcom/android/settingslib/widget/e;->e:[Lcom/android/settingslib/widget/f;

    if-eqz v0, :cond_5

    .line 3228
    array-length v1, v0

    if-nez v1, :cond_3

    goto :goto_3

    .line 3233
    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3236
    aget-object v1, v0, v4

    .line 4092
    iget v1, v1, Lcom/android/settingslib/widget/f;->f:I

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_1

    .line 3238
    :cond_4
    iget v5, p0, Lcom/android/settingslib/widget/BarChartPreference;->c:I

    div-int v1, v5, v1

    .line 3240
    :goto_1
    array-length v5, v0

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v0, v6

    .line 5092
    iget v8, v7, Lcom/android/settingslib/widget/f;->f:I

    mul-int/2addr v8, v1

    .line 5113
    iput v8, v7, Lcom/android/settingslib/widget/f;->g:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3210
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->a:Lcom/android/settingslib/widget/e;

    .line 6085
    iget-object v0, v0, Lcom/android/settingslib/widget/e;->e:[Lcom/android/settingslib/widget/f;

    move v1, v4

    :goto_4
    if-ge v1, v2, :cond_9

    .line 3213
    sget-object v5, Lcom/android/settingslib/widget/BarChartPreference;->b:[I

    aget v5, v5, v1

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/widget/BarView;

    if-eqz v0, :cond_7

    .line 3216
    array-length v6, v0

    if-lt v1, v6, :cond_6

    goto :goto_5

    .line 3220
    :cond_6
    invoke-virtual {v5, v4}, Lcom/android/settingslib/widget/BarView;->setVisibility(I)V

    .line 3221
    aget-object v6, v0, v1

    .line 7096
    iget-object v7, v6, Lcom/android/settingslib/widget/f;->b:Landroid/view/View$OnClickListener;

    .line 7071
    invoke-virtual {v5, v7}, Lcom/android/settingslib/widget/BarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7073
    iget-object v7, v5, Lcom/android/settingslib/widget/BarView;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 7117
    iget v8, v6, Lcom/android/settingslib/widget/f;->g:I

    .line 7073
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7074
    iget-object v7, v5, Lcom/android/settingslib/widget/BarView;->b:Landroid/widget/ImageView;

    .line 8088
    iget-object v8, v6, Lcom/android/settingslib/widget/f;->a:Landroid/graphics/drawable/Drawable;

    .line 7074
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7075
    iget-object v7, v5, Lcom/android/settingslib/widget/BarView;->c:Landroid/widget/TextView;

    .line 8101
    iget-object v8, v6, Lcom/android/settingslib/widget/f;->c:Ljava/lang/CharSequence;

    .line 7075
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7076
    iget-object v7, v5, Lcom/android/settingslib/widget/BarView;->d:Landroid/widget/TextView;

    .line 8105
    iget-object v8, v6, Lcom/android/settingslib/widget/f;->d:Ljava/lang/CharSequence;

    .line 7076
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8109
    iget-object v7, v6, Lcom/android/settingslib/widget/f;->e:Ljava/lang/CharSequence;

    .line 7079
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 9101
    iget-object v8, v6, Lcom/android/settingslib/widget/f;->c:Ljava/lang/CharSequence;

    .line 7080
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 7081
    iget-object v5, v5, Lcom/android/settingslib/widget/BarView;->b:Landroid/widget/ImageView;

    .line 9109
    iget-object v6, v6, Lcom/android/settingslib/widget/f;->e:Ljava/lang/CharSequence;

    .line 7081
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3217
    :cond_7
    :goto_5
    invoke-virtual {v5, v3}, Lcom/android/settingslib/widget/BarView;->setVisibility(I)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void

    .line 176
    :cond_a
    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/BarChartPreference;->a(Landroidx/preference/PreferenceViewHolder;Z)V

    return-void
.end method
