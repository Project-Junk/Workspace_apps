.class final Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;
.super Ljava/lang/Object;
.source "OthersStorageViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;I)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;->b:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x3

    if-ne p2, p1, :cond_0

    .line 883
    new-instance p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;->b:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;B)V

    .line 884
    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 890
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;->b:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    iget v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;->a:I

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->removeDialog(I)V

    return-void
.end method
