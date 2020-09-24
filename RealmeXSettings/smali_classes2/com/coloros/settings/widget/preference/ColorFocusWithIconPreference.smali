.class public Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;
.super Lcom/coloros/settings/widget/preference/ColorFocusPreference;
.source "ColorFocusWithIconPreference.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d00b2

    .line 4049
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00b2

    .line 3049
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00b2

    .line 2049
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d00b2

    .line 1049
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0325

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
