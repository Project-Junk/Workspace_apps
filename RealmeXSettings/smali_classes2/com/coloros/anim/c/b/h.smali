.class public final Lcom/coloros/anim/c/b/h;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/coloros/anim/c/b/h$a;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/h$a;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/coloros/anim/c/b/h;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/c/b/h;->b:Lcom/coloros/anim/c/b/h$a;

    .line 21
    iput-boolean p3, p0, Lcom/coloros/anim/c/b/h;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1126
    iget-boolean p1, p1, Lcom/coloros/anim/b;->k:Z

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    .line 40
    invoke-static {p1}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    sget-boolean p1, Lcom/coloros/anim/f/b;->d:Z

    if-eqz p1, :cond_1

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MergePaths to MergePathsContent, layer = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance p1, Lcom/coloros/anim/a/a/l;

    invoke-direct {p1, p0}, Lcom/coloros/anim/a/a/l;-><init>(Lcom/coloros/anim/c/b/h;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MergePaths{mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/anim/c/b/h;->b:Lcom/coloros/anim/c/b/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
