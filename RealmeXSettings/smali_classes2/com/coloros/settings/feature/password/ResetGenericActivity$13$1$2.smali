.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->e:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->e:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->e:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$13$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
