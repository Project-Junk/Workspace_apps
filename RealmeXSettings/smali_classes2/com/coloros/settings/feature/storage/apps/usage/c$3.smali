.class final Lcom/coloros/settings/feature/storage/apps/usage/c$3;
.super Ljava/lang/Object;
.source "StorageNoSpaceAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Landroid/content/Context;I)V
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
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/c$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c;->b()Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c;->b()Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/settings/feature/storage/apps/usage/c$a;->b()V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/c$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/c;->a(Landroid/content/Context;)V

    return-void
.end method
