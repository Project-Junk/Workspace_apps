.class final Lcom/coloros/c/a/a/a$7;
.super Lcom/coloros/c/a/a/a$d;
.source "FindPhoneLogoutControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a;)V
    .locals 2

    .line 364
    iput-object p1, p0, Lcom/coloros/c/a/a/a$7;->a:Lcom/coloros/c/a/a/a;

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/c/a/a/a$d;-><init>(Lcom/coloros/c/a/a/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "FindPhoneLogoutControl"

    const-string v1, "postLogoutTimeoutTask, timeout remove TYPE_REQUEST_REQUEST_LOGOUT"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/coloros/c/a/a/a$7;->a:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->g(Lcom/coloros/c/a/a/a;)Z

    return-void
.end method
