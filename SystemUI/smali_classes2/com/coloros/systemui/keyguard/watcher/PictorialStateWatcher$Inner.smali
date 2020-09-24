.class final Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Inner;
.super Ljava/lang/Object;
.source "PictorialStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Inner"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;-><init>(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;
    .locals 1

    .line 21
    sget-object v0, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    return-object v0
.end method
