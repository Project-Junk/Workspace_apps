.class final Lcom/coloros/settings/service/BootCompletedService$1$1;
.super Ljava/lang/Object;
.source "BootCompletedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/service/BootCompletedService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/service/BootCompletedService$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/service/BootCompletedService$1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/service/BootCompletedService$1$1;->a:Lcom/coloros/settings/service/BootCompletedService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Lcom/coloros/settings/SettingsApplication;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1$1;->a:Lcom/coloros/settings/service/BootCompletedService$1;

    iget-object v0, v0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/service/BootCompletedService;->b(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1$1;->a:Lcom/coloros/settings/service/BootCompletedService$1;

    iget-object v0, v0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/service/BootCompletedService;->c(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1$1;->a:Lcom/coloros/settings/service/BootCompletedService$1;

    iget-object v0, v0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/service/BootCompletedService;->c(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/service/BootCompletedService$1$1;->a:Lcom/coloros/settings/service/BootCompletedService$1;

    iget-object v1, v1, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v1}, Lcom/coloros/settings/service/BootCompletedService;->b(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/SettingsApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
