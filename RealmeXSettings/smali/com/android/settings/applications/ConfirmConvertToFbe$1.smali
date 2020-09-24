.class final Lcom/android/settings/applications/ConfirmConvertToFbe$1;
.super Ljava/lang/Object;
.source "ConfirmConvertToFbe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ConfirmConvertToFbe;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/ConfirmConvertToFbe;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ConfirmConvertToFbe;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/ConfirmConvertToFbe$1;->a:Lcom/android/settings/applications/ConfirmConvertToFbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.REASON"

    const-string v1, "convert_fbe"

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/ConfirmConvertToFbe$1;->a:Lcom/android/settings/applications/ConfirmConvertToFbe;

    invoke-virtual {v0}, Lcom/android/settings/applications/ConfirmConvertToFbe;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
