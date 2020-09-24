.class final Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$2;
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
.field final synthetic a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$2;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$2;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;->finish()V

    return-void
.end method
