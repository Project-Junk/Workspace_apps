.class final Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Inner;
.super Ljava/lang/Object;
.source "ColorKeyguardWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Inner"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;-><init>(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;
    .locals 1

    .line 27
    sget-object v0, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Inner;->INSTANCE:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    return-object v0
.end method
