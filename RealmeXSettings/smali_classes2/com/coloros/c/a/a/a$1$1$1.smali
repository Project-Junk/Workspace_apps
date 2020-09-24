.class final Lcom/coloros/c/a/a/a$1$1$1;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"

# interfaces
.implements Lcom/coloros/c/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/c/a/a/a$1$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/c/a/a/a$1$1;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a$1$1;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/coloros/c/a/a/a$1$1$1;->a:Lcom/coloros/c/a/a/a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1$1$1;->a:Lcom/coloros/c/a/a/a$1$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coloros/c/a/a/a$1$1$1;->a:Lcom/coloros/c/a/a/a$1$1;

    iget-object v1, v1, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object v1, v1, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-static {p1, v0, v1}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;ILcom/coloros/c/a/a/a$e;)V

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1$1$1;->a:Lcom/coloros/c/a/a/a$1$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coloros/c/a/a/a$1$1$1;->a:Lcom/coloros/c/a/a/a$1$1;

    iget-object v1, v1, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object v1, v1, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-static {p1, v0, v1}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;ILcom/coloros/c/a/a/a$e;)V

    return-void
.end method
