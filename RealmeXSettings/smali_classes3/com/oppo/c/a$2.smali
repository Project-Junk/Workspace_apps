.class final Lcom/oppo/c/a$2;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/c/a;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/oppo/c/a$2;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/c/a$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/oppo/c/a$2;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/oppo/c/a$2;->b:Z

    .line 1017
    new-instance v2, Lcom/oppo/c/b/d;

    invoke-direct {v2, v1}, Lcom/oppo/c/b/d;-><init>(Z)V

    .line 1018
    invoke-static {v0, v2}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Lcom/oppo/c/b/j;)V

    return-void
.end method
