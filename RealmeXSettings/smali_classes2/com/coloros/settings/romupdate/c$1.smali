.class final Lcom/coloros/settings/romupdate/c$1;
.super Ljava/lang/Object;
.source "TaoPasswordListParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/romupdate/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/coloros/settings/romupdate/c;


# direct methods
.method constructor <init>(Lcom/coloros/settings/romupdate/c;Landroid/content/Context;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/romupdate/c$1;->b:Lcom/coloros/settings/romupdate/c;

    iput-object p2, p0, Lcom/coloros/settings/romupdate/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/coloros/settings/romupdate/c$1;->b:Lcom/coloros/settings/romupdate/c;

    iget-object v1, p0, Lcom/coloros/settings/romupdate/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/romupdate/c;->b(Landroid/content/Context;)V

    return-void
.end method
