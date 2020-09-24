.class final Lcom/coloros/settings/romupdate/e$1;
.super Ljava/lang/Object;
.source "VideoBeautyDataParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/settings/romupdate/e$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "VideoBeautyDataParser"

    const-string v1, "initialize"

    .line 66
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/romupdate/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->f(Landroid/content/Context;)V

    return-void
.end method
