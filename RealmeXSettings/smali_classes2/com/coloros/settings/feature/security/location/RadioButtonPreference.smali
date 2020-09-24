.class public Lcom/coloros/settings/feature/security/location/RadioButtonPreference;
.super Lcom/coloros/settings/widget/preference/ColorMarkPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;->a(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V

    :cond_0
    return-void
.end method
