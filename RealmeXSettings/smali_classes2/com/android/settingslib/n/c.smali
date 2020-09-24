.class public final Lcom/android/settingslib/n/c;
.super Ljava/lang/Object;
.source "ConnectionRecordManager.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/android/settingslib/n/c;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/n/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/settingslib/n/c;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/settingslib/n/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/settingslib/n/c;->b:Lcom/android/settingslib/n/c;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/settingslib/n/c;

    invoke-direct {v1}, Lcom/android/settingslib/n/c;-><init>()V

    sput-object v1, Lcom/android/settingslib/n/c;->b:Lcom/android/settingslib/n/c;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/android/settingslib/n/c;->b:Lcom/android/settingslib/n/c;

    return-object v0

    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "seamless_transfer_record"

    const/4 v1, 0x0

    .line 1046
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 56
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "seamless_transfer_record"

    const/4 v1, 0x0

    .line 2046
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "last_selected_device"

    const/4 v1, 0x0

    .line 63
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/n/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "seamless_transfer_record"

    const/4 v1, 0x0

    .line 3046
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    iput-object p2, p0, Lcom/android/settingslib/n/c;->c:Ljava/lang/String;

    .line 77
    iget-object p2, p0, Lcom/android/settingslib/n/c;->c:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "last_selected_device"

    .line 79
    iget-object p3, p0, Lcom/android/settingslib/n/c;->c:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/n/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
