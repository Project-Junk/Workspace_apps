.class public final enum Lcom/google/a/d/a/b;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/d/a/b;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/d/a/b;

.field private static final synthetic b:[Lcom/google/a/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/google/a/d/a/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/a/d/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d/a/b;->a:Lcom/google/a/d/a/b;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/google/a/d/a/b;

    sget-object v1, Lcom/google/a/d/a/b;->a:Lcom/google/a/d/a/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/d/a/b;->b:[Lcom/google/a/d/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/d/a/b;
    .locals 1

    .line 24
    const-class v0, Lcom/google/a/d/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/d/a/b;

    return-object p0
.end method

.method public static values()[Lcom/google/a/d/a/b;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/a/d/a/b;->b:[Lcom/google/a/d/a/b;

    invoke-virtual {v0}, [Lcom/google/a/d/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/d/a/b;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
