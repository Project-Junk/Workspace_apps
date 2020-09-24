.class final Lb/a/at$a;
.super Lb/a/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/as<",
        "Lb/a/ap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/at;

.field private final g:Lb/a/at$b;

.field private final h:Lb/a/e;

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/a/at;Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lb/a/e;->a:Lb/a/f;

    check-cast v0, Lb/a/ap;

    invoke-direct {p0, v0}, Lb/a/as;-><init>(Lb/a/ap;)V

    iput-object p1, p0, Lb/a/at$a;->a:Lb/a/at;

    iput-object p2, p0, Lb/a/at$a;->g:Lb/a/at$b;

    iput-object p3, p0, Lb/a/at$a;->h:Lb/a/e;

    iput-object p4, p0, Lb/a/at$a;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lb/a/at$a;->b(Ljava/lang/Throwable;)V

    sget-object p0, La/r;->a:La/r;

    return-object p0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lb/a/at$a;->a:Lb/a/at;

    iget-object v0, p0, Lb/a/at$a;->g:Lb/a/at$b;

    iget-object v1, p0, Lb/a/at$a;->h:Lb/a/e;

    iget-object p0, p0, Lb/a/at$a;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lb/a/at;->a(Lb/a/at;Lb/a/at$b;Lb/a/e;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/at$a;->h:Lb/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/at$a;->i:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
