.class public Lcom/coloros/anim/c/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/anim/c/b/h$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/h$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/h;->b:Lcom/coloros/anim/c/b/h$a;

    iput-boolean p3, p0, Lcom/coloros/anim/c/b/h;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 1

    invoke-virtual {p1}, Lcom/coloros/anim/b;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Animation contains merge paths but they are disabled."

    invoke-static {p0}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MergePaths to MergePathsContent, layer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/coloros/anim/a/a/l;

    invoke-direct {p1, p0}, Lcom/coloros/anim/a/a/l;-><init>(Lcom/coloros/anim/c/b/h;)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/b/h$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/h;->b:Lcom/coloros/anim/c/b/h$a;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/h;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/c/b/h;->b:Lcom/coloros/anim/c/b/h$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
