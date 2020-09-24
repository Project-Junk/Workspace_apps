.class public Lcom/coloros/anim/c/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/coloros/anim/c/b/g$a;

.field private final b:Lcom/coloros/anim/c/a/h;

.field private final c:Lcom/coloros/anim/c/a/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/coloros/anim/c/b/g$a;Lcom/coloros/anim/c/a/h;Lcom/coloros/anim/c/a/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/g;->a:Lcom/coloros/anim/c/b/g$a;

    iput-object p2, p0, Lcom/coloros/anim/c/b/g;->b:Lcom/coloros/anim/c/a/h;

    iput-object p3, p0, Lcom/coloros/anim/c/b/g;->c:Lcom/coloros/anim/c/a/d;

    iput-boolean p4, p0, Lcom/coloros/anim/c/b/g;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/anim/c/b/g$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/g;->a:Lcom/coloros/anim/c/b/g$a;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/a/h;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/g;->b:Lcom/coloros/anim/c/a/h;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/g;->c:Lcom/coloros/anim/c/a/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/g;->d:Z

    return p0
.end method
