.class public Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;
.super Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;
.source "ColorPhysicalKeyboardPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;
    }
.end annotation


# instance fields
.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroid/app/Activity;

.field private f:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->e:Landroid/app/Activity;

    .line 51
    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->f:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->f:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 116
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 117
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_3

    .line 120
    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->a:Landroid/hardware/input/InputManager;

    .line 123
    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 124
    iget-object v7, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->a:Landroid/hardware/input/InputManager;

    .line 125
    invoke-virtual {v7, v5}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 127
    :goto_1
    new-instance v7, Landroidx/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->e:Landroid/app/Activity;

    invoke-direct {v7, v8, v6}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const v3, 0x7f120b57

    .line 132
    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceScreen;->setSummary(I)V

    .line 134
    :goto_2
    new-instance v3, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;

    invoke-direct {v3, p0, v4}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_5

    .line 151
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    move v0, v2

    goto :goto_3

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 157
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 158
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 159
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 163
    :cond_8
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    const-string v0, "hard_keyboard"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "hard_keyboard"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->onResume()V

    .line 1092
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 100
    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    .line 101
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b()V

    return-void
.end method
