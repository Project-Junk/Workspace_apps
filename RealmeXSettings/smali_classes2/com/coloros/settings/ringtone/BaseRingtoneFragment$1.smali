.class final Lcom/coloros/settings/ringtone/BaseRingtoneFragment$1;
.super Ljava/lang/Object;
.source "BaseRingtoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/BaseRingtoneFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/BaseRingtoneFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment$1;->a:Lcom/coloros/settings/ringtone/BaseRingtoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment$1;->a:Lcom/coloros/settings/ringtone/BaseRingtoneFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
