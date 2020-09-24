.class final Lcom/coloros/settings/service/BootCompletedService$2;
.super Ljava/lang/Object;
.source "BootCompletedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/service/BootCompletedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/ConnectivityManager;

.field final synthetic b:Lcom/coloros/settings/service/BootCompletedService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/service/BootCompletedService;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coloros/settings/service/BootCompletedService$2;->b:Lcom/coloros/settings/service/BootCompletedService;

    iput-object p2, p0, Lcom/coloros/settings/service/BootCompletedService$2;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$2;->a:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    return-void
.end method
