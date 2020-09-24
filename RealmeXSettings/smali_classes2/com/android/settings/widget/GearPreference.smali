.class public Lcom/android/settings/widget/GearPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/GearPreference$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/widget/GearPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0d0276

    return v0
.end method

.method public final a(Lcom/android/settings/widget/GearPreference$a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/widget/GearPreference;->a:Lcom/android/settings/widget/GearPreference$a;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/widget/GearPreference;->notifyChanged()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/GearPreference;->a:Lcom/android/settings/widget/GearPreference$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05ef

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/GearPreference;->a:Lcom/android/settings/widget/GearPreference$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05ef

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/GearPreference;->a:Lcom/android/settings/widget/GearPreference$a;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1, p0}, Lcom/android/settings/widget/GearPreference$a;->onGearClick(Lcom/android/settings/widget/GearPreference;)V

    :cond_0
    return-void
.end method
