.class public Lcom/android/settings/CancellablePreference;
.super Landroidx/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CancellablePreference$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/CancellablePreference$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0059

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/CancellablePreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/CancellablePreference;->b:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/CancellablePreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a011c

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/CancellablePreference;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/android/settings/CancellablePreference;->a:Lcom/android/settings/CancellablePreference$a;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/android/settings/CancellablePreference$a;->a()V

    :cond_0
    return-void
.end method
