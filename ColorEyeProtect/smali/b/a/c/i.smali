.class public abstract Lb/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:J

.field public g:Lb/a/c/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lb/a/c/h;->a:Lb/a/c/h;

    check-cast v0, Lb/a/c/j;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lb/a/c/i;-><init>(JLb/a/c/j;)V

    return-void
.end method

.method public constructor <init>(JLb/a/c/j;)V
    .locals 1

    const-string v0, "taskContext"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb/a/c/i;->f:J

    iput-object p3, p0, Lb/a/c/i;->g:Lb/a/c/j;

    return-void
.end method


# virtual methods
.method public final c()Lb/a/c/l;
    .locals 0

    iget-object p0, p0, Lb/a/c/i;->g:Lb/a/c/j;

    invoke-interface {p0}, Lb/a/c/j;->b()Lb/a/c/l;

    move-result-object p0

    return-object p0
.end method
