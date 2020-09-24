.class public Lcom/coloros/settings/feature/display/controller/Iris5VideoViewController;
.super Lcom/android/settings/core/a;
.source "Iris5VideoViewController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_IRIS5_VIDEO:Ljava/lang/String; = "osie_iris5_video"

.field private static final TAG:Ljava/lang/String; = "Iris5VideoViewController"


# instance fields
.field private mColorOsieVideoViewPagerPreference:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "osie_iris5_video"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5VideoViewController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoViewController;->mColorOsieVideoViewPagerPreference:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoViewController;->mColorOsieVideoViewPagerPreference:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    if-eqz v0, :cond_0

    .line 2063
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    if-eqz v1, :cond_0

    .line 2064
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->a(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoViewController;->mColorOsieVideoViewPagerPreference:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    if-eqz v1, :cond_0

    .line 1070
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->b(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;)V

    :cond_0
    return-void
.end method
