.class final Lcom/coloros/settings/feature/display/a$2;
.super Ljava/lang/Object;
.source "ColorSettingsBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/a;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$2;->a:Lcom/coloros/settings/feature/display/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$2;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->h(Lcom/coloros/settings/feature/display/a;)Lcom/coloros/settings/feature/display/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a$a;->a(Lcom/coloros/settings/feature/display/a$a;)V

    .line 165
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$2;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->i(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
