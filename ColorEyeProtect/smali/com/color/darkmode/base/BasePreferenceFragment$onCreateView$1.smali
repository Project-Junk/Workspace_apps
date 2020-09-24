.class final Lcom/color/darkmode/base/BasePreferenceFragment$onCreateView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/base/BasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/base/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/base/BasePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/base/BasePreferenceFragment$onCreateView$1;->this$0:Lcom/color/darkmode/base/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/base/BasePreferenceFragment$onCreateView$1;->this$0:Lcom/color/darkmode/base/BasePreferenceFragment;

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
