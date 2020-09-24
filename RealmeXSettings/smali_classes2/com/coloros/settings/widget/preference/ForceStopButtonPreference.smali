.class public Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "ForceStopButtonPreference.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d025f

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d025f

    .line 40
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d025f

    .line 35
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->b:Z

    if-eq p1, v0, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->b:Z

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a00f4

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method
