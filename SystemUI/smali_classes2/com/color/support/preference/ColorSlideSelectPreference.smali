.class public Lcom/color/support/preference/ColorSlideSelectPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "ColorSlideSelectPreference.java"


# static fields
.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final NORMAL:I


# instance fields
.field private mClickStyle:I

.field mContext:Landroid/content/Context;

.field mSelectionText:Ljava/lang/CharSequence;

.field private mStatus1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorSlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorSlideSelectPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorSlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorSlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x0

    .line 50
    iput p4, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mClickStyle:I

    .line 91
    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mContext:Landroid/content/Context;

    .line 92
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectPreference_color_select_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSelectionText()Ljava/lang/CharSequence;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 136
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 138
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 142
    iget v2, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mClickStyle:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 161
    :cond_2
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    .line 162
    iget-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 168
    :cond_3
    iget-object p0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSelectionText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSlideSelectPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorSlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSlideSelectPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
