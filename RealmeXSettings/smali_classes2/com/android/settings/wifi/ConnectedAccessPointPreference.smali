.class public Lcom/android/settings/wifi/ConnectedAccessPointPreference;
.super Lcom/android/settings/wifi/LongPressAccessPointPreference;
.source "ConnectedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;
    }
.end annotation


# instance fields
.field a:Z

.field private d:Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0278

    return v0
.end method

.method public final a(Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->d:Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->notifyChanged()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->b()V

    .line 53
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    .line 1176
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->b:Z

    .line 1177
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 54
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121a6d

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05ef

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05f0

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 72
    iget-boolean v1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-boolean p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05ef

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->d:Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;->onGearClick(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    :cond_0
    return-void
.end method
