.class public Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "PhysicalKeyboardPreferenceController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field protected final a:Landroid/hardware/input/InputManager;

.field private b:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string v0, "input"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a:Landroid/hardware/input/InputManager;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->b:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->b:Landroidx/preference/Preference;

    const v1, 0x7f120b56

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 106
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    .line 108
    iget-object v2, v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->b:Landroidx/preference/Preference;

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "physical_keyboard_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->b:Landroidx/preference/Preference;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->a()V

    return-void
.end method
