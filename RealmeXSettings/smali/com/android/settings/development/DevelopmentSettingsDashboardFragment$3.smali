.class final Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/f;

    move-result-object p1

    monitor-enter p1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 118
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/core/a;

    .line 120
    instance-of v0, p2, Lcom/android/settings/development/g;

    if-eqz v0, :cond_0

    .line 121
    check-cast p2, Lcom/android/settings/development/g;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 122
    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/development/g;->a(Landroid/bluetooth/BluetoothA2dp;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 118
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/f;

    move-result-object p1

    monitor-enter p1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 131
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/a;

    .line 133
    instance-of v1, v0, Lcom/android/settings/development/g;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/android/settings/development/g;

    .line 135
    invoke-interface {v0}, Lcom/android/settings/development/g;->a()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 131
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
