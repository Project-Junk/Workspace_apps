.class final Lcom/coloros/settings/feature/storage/apps/usage/c$1;
.super Ljava/lang/Object;
.source "StorageNoSpaceAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 82
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c;->a()Z

    .line 83
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c;->b()Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c;->b()Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/settings/feature/storage/apps/usage/c$a;->a()V

    :cond_0
    return-void
.end method
