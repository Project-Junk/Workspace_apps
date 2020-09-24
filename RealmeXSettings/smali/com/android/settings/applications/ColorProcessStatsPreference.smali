.class public Lcom/android/settings/applications/ColorProcessStatsPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "ColorProcessStatsPreference.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:D

.field e:Lcom/android/settings/applications/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0268

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ColorProcessStatsPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0268

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ColorProcessStatsPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d0268

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ColorProcessStatsPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ColorProcessStatsPreference;)D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->d:D

    return-wide v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 88
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0325

    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a0729

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a0738

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v1, 0x7f0a03aa

    .line 102
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0787

    .line 103
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/ColorProcessStatsPreference$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/settings/applications/ColorProcessStatsPreference$1;-><init>(Lcom/android/settings/applications/ColorProcessStatsPreference;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
