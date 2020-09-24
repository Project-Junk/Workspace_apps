.class public final Lb/a/ai;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lb/a/a/m;

.field private static final b:Lb/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/a/m;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ai;->a:Lb/a/a/m;

    new-instance v0, Lb/a/a/m;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ai;->b:Lb/a/a/m;

    return-void
.end method

.method public static final synthetic a()Lb/a/a/m;
    .locals 1

    sget-object v0, Lb/a/ai;->a:Lb/a/a/m;

    return-object v0
.end method

.method public static final synthetic b()Lb/a/a/m;
    .locals 1

    sget-object v0, Lb/a/ai;->b:Lb/a/a/m;

    return-object v0
.end method
