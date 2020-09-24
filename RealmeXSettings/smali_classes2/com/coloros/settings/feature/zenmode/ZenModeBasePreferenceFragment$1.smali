.class final Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ZenModeBasePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
