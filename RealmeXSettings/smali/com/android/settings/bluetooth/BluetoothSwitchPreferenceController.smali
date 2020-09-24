.class public Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;
.super Ljava/lang/Object;
.source "BluetoothSwitchPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/widget/g$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private a:Lcom/android/settings/bluetooth/c;

.field private b:Lcom/android/settings/bluetooth/l;

.field private c:Lcom/android/settings/widget/g;

.field private d:Landroid/content/Context;

.field private e:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/l;Lcom/android/settings/widget/g;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->b:Lcom/android/settings/bluetooth/l;

    .line 59
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->c:Lcom/android/settings/widget/g;

    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->d:Landroid/content/Context;

    .line 61
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->e:Lcom/android/settingslib/widget/FooterPreference;

    .line 63
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p2}, Lcom/android/settings/widget/g;->e()V

    .line 64
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->c:Lcom/android/settings/widget/g;

    invoke-virtual {p2}, Lcom/android/settings/widget/g;->d()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a(Z)V

    .line 66
    new-instance p2, Lcom/android/settings/bluetooth/c;

    .line 68
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->b:Lcom/android/settings/bluetooth/l;

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/android/settings/bluetooth/c;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/bluetooth/l;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a:Lcom/android/settings/bluetooth/c;

    .line 71
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a:Lcom/android/settings/bluetooth/c;

    .line 1210
    iput-object p0, p1, Lcom/android/settings/bluetooth/c;->f:Lcom/android/settings/widget/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/android/settings/bluetooth/l;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/l;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/l;Lcom/android/settings/widget/g;Lcom/android/settingslib/widget/FooterPreference;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->d:Landroid/content/Context;

    .line 104
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Lcom/android/settings/utils/a$a;

    const-string v0, "link"

    invoke-direct {p1, v0, p0}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->d:Landroid/content/Context;

    const v1, 0x7f12041a

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/utils/a$a;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 107
    invoke-static {v0, v1}, Lcom/android/settings/utils/a;->a(Ljava/lang/CharSequence;[Lcom/android/settings/utils/a$a;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->e:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->e:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f1203ac

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/location/ScanningSettings;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x56e

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a:Lcom/android/settings/bluetooth/c;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->d:Landroid/content/Context;

    .line 2099
    iget-object v2, v0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    if-eq v2, v1, :cond_0

    .line 2100
    iput-object v1, v0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    .line 2103
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/c;->a()Z

    move-result v1

    .line 2105
    iget-object v2, v0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 2106
    iget-object v0, v0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/g;->b(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 2112
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/c;->a(I)V

    .line 2115
    :cond_2
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v1}, Lcom/android/settings/widget/g;->b()V

    .line 2116
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/bluetooth/c;->g:Landroid/content/BroadcastReceiver;

    iget-object v3, v0, Lcom/android/settings/bluetooth/c;->e:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 2117
    iput-boolean v1, v0, Lcom/android/settings/bluetooth/c;->c:Z

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->c:Lcom/android/settings/widget/g;

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/widget/g;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a(Z)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a:Lcom/android/settings/bluetooth/c;

    .line 2121
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 2124
    iget-boolean v1, v0, Lcom/android/settings/bluetooth/c;->c:Z

    if-eqz v1, :cond_0

    .line 2125
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v1}, Lcom/android/settings/widget/g;->c()V

    .line 2126
    iget-object v1, v0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/bluetooth/c;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 2127
    iput-boolean v1, v0, Lcom/android/settings/bluetooth/c;->c:Z

    :cond_0
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method
