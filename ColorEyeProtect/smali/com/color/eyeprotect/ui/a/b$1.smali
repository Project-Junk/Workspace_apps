.class Lcom/color/eyeprotect/ui/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/ui/a/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/ui/a/b;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/ui/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/a/b$1;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b$1;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/a/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
