.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 677
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    const v1, 0x7f120e06

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;I)V

    .line 681
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    :cond_0
    return-void
.end method
