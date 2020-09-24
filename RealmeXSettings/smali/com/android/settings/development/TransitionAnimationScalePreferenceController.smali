.class public Lcom/android/settings/development/TransitionAnimationScalePreferenceController;
.super Lcom/android/settingslib/development/b;
.source "TransitionAnimationScalePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/view/IWindowManager;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "window"

    .line 51
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->a:Landroid/view/IWindowManager;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->b:[Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->c:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->a:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->a:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 103
    iget-object v2, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "transition_animation_scale"

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->c()V

    return-void
.end method
