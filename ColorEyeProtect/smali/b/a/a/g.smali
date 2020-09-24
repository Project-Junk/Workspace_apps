.class public final Lb/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/a/m;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/g;->a:Ljava/lang/Object;

    new-instance v0, Lb/a/a/m;

    const-string v1, "ALREADY_REMOVED"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/g;->b:Ljava/lang/Object;

    new-instance v0, Lb/a/a/m;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/g;->c:Ljava/lang/Object;

    new-instance v0, Lb/a/a/m;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lb/a/a/h;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lb/a/a/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lb/a/a/l;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb/a/a/l;->a:Lb/a/a/h;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    check-cast v0, Lb/a/a/h;

    :goto_1
    return-object v0
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lb/a/a/g;->a:Ljava/lang/Object;

    return-object v0
.end method
