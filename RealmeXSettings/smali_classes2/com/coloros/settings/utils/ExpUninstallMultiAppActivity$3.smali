.class final Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;
.super Ljava/lang/Object;
.source "ExpUninstallMultiAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    iput-object p2, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-static {p1}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;->b(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)Z

    .line 84
    new-instance p1, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;

    iget-object p2, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;->b:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    iget-object v0, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$3;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;-><init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
