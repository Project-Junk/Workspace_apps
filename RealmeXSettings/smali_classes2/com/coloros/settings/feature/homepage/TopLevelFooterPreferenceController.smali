.class public Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelFooterPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_USER_CENTER:Ljava/lang/String; = "empty_preference_key"

.field private static final TAG:Ljava/lang/String; = "TopLevelFooterPreferenceController"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mNavShow:Z

.field private mSpacePreference:Lcom/android/settings/applications/SpacePreference;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "empty_preference_key"

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mNavShow:Z

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private updateSpaceHeightIfNeeded(I)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aj(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 64
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSpaceHeightIfNeeded newVisibility = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; navHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; navShow = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; mNavShow = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mNavShow:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TopLevelFooterPreferenceController"

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mNavShow:Z

    if-eq v1, p1, :cond_3

    .line 67
    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mNavShow:Z

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070581

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-eqz v1, :cond_2

    add-int/2addr p1, v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    .line 1059
    iget v1, v0, Lcom/android/settings/applications/SpacePreference;->a:I

    if-eq p1, v1, :cond_3

    .line 1060
    iput p1, v0, Lcom/android/settings/applications/SpacePreference;->a:I

    .line 1061
    invoke-virtual {v0}, Lcom/android/settings/applications/SpacePreference;->notifyChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/SpacePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 84
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->updateSpaceHeightIfNeeded(I)V

    :cond_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;->updateSpaceHeightIfNeeded(I)V

    return-void
.end method
