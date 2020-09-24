.class final Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Inner;
.super Ljava/lang/Object;
.source "WallpaperChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Inner"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;-><init>(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;
    .locals 1

    .line 23
    sget-object v0, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    return-object v0
.end method
