.class public Lcom/android/settings/development/StrictModePreferenceController;
.super Lcom/android/settingslib/development/b;
.source "StrictModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "window"

    .line 50
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/StrictModePreferenceController;->a:Landroid/view/IWindowManager;

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/StrictModePreferenceController;->a:Landroid/view/IWindowManager;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "strict_mode"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/android/settings/development/StrictModePreferenceController;->a(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/development/StrictModePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/development/StrictModePreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/android/settings/development/StrictModePreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    const-string v0, "persist.sys.strictmode.visual"

    const/4 v1, 0x0

    .line 1078
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
