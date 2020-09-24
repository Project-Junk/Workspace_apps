.class public Lcom/android/settings/widget/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPreference$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/widget/RadioButtonPreference$a;

.field public b:Landroid/view/View;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 59
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->c:I

    const p1, 0x7f0d027c

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d00bd

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreference;->getLayoutResource()I

    move-result v0

    const v1, 0x7f0d026a

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x1020006

    .line 86
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 88
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v0, 0x7f0a068c

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    .line 96
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00b1

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->b:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPreference;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x1020016

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x3

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_3
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference$a;->a(Lcom/android/settings/widget/RadioButtonPreference;)V

    :cond_0
    return-void
.end method
