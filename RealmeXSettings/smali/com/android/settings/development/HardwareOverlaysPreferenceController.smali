.class public Lcom/android/settings/development/HardwareOverlaysPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "HardwareOverlaysPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string p1, "SurfaceFlinger"

    .line 51
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a:Landroid/os/IBinder;

    return-void
.end method

.method private a(Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 116
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a:Landroid/os/IBinder;

    const/16 v2, 0x3f0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    invoke-direct {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->c()V

    return-void
.end method

.method private c()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    iget-object v3, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v3, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "disable_overlays"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 75
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->c()V

    return-void
.end method
