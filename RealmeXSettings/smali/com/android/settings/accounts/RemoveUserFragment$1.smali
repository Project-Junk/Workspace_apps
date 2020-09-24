.class final Lcom/android/settings/accounts/RemoveUserFragment$1;
.super Ljava/lang/Object;
.source "RemoveUserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/RemoveUserFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/accounts/RemoveUserFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/RemoveUserFragment;I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->b:Lcom/android/settings/accounts/RemoveUserFragment;

    iput p2, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->b:Lcom/android/settings/accounts/RemoveUserFragment;

    .line 48
    invoke-virtual {p1}, Lcom/android/settings/accounts/RemoveUserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 49
    iget p2, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->a:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    return-void
.end method
