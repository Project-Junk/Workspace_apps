.class public Lcom/android/settingslib/widget/apppreference/AppPreference;
.super Landroidx/preference/Preference;
.source "AppPreference.java"


# instance fields
.field protected e:I

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    sget p1, Lcom/android/settingslib/widget/h$e;->preference_app:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget p1, Lcom/android/settingslib/widget/h$e;->preference_app:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 56
    iget-boolean v0, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->f:Z

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
