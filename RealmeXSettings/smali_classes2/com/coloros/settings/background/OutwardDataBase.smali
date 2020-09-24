.class public abstract Lcom/coloros/settings/background/OutwardDataBase;
.super Landroidx/room/RoomDatabase;
.source "OutwardDataBase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/coloros/settings/background/a/a;
    }
    version = 0x2
.end annotation


# static fields
.field private static volatile a:Lcom/coloros/settings/background/OutwardDataBase;

.field private static final b:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/coloros/settings/background/OutwardDataBase$1;

    invoke-direct {v0}, Lcom/coloros/settings/background/OutwardDataBase$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/background/OutwardDataBase;->b:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/background/OutwardDataBase;
    .locals 4

    .line 37
    sget-object v0, Lcom/coloros/settings/background/OutwardDataBase;->a:Lcom/coloros/settings/background/OutwardDataBase;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/coloros/settings/background/OutwardDataBase;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/coloros/settings/background/OutwardDataBase;->a:Lcom/coloros/settings/background/OutwardDataBase;

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/coloros/settings/background/OutwardDataBase;

    const-string v2, "settings-outward.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    sget-object v3, Lcom/coloros/settings/background/OutwardDataBase;->b:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/background/OutwardDataBase;

    sput-object p0, Lcom/coloros/settings/background/OutwardDataBase;->a:Lcom/coloros/settings/background/OutwardDataBase;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/background/OutwardDataBase;->a:Lcom/coloros/settings/background/OutwardDataBase;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lcom/coloros/settings/background/a/b;
.end method
