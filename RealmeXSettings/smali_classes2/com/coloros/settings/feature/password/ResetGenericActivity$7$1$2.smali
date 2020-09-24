.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChecked(Z[BLjava/lang/String;)V
    .locals 1

    .line 652
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object p2, p2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object p2, p2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;ZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
