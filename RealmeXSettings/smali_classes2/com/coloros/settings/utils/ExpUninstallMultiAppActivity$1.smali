.class final Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$1;
.super Ljava/lang/Object;
.source "ExpUninstallMultiAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$1;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$1;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-static {p1}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;->a(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$1;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;->finish()V

    :cond_0
    return-void
.end method
