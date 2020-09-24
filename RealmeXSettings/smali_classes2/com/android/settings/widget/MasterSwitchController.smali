.class public Lcom/android/settings/widget/MasterSwitchController;
.super Lcom/android/settings/widget/g;
.source "MasterSwitchController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final b:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/g;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->b:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->c()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->a:Lcom/android/settings/widget/g$a;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->a:Lcom/android/settings/widget/g$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/settings/widget/g$a;->onSwitchToggled(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
