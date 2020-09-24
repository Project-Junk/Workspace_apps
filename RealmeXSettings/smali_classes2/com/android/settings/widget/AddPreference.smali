.class public Lcom/android/settings/widget/AddPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "AddPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/AddPreference$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/widget/AddPreference$a;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0273

    return v0
.end method

.method public final a(Lcom/android/settings/widget/AddPreference$a;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->a:Lcom/android/settings/widget/AddPreference$a;

    .line 52
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->a:Lcom/android/settings/widget/AddPreference$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/AddPreference;->b:Landroid/view/View;

    const v0, 0x7f0a0061

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->c:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->c:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0061

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->a:Lcom/android/settings/widget/AddPreference$a;

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1, p0}, Lcom/android/settings/widget/AddPreference$a;->onAddClick(Lcom/android/settings/widget/AddPreference;)V

    :cond_0
    return-void
.end method
