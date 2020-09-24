.class final Lcom/android/settings/print/PrintServiceSettingsFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c()I

    move-result v0

    .line 1091
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->c(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    .line 1092
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->c(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 1095
    :cond_2
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I

    .line 86
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method
