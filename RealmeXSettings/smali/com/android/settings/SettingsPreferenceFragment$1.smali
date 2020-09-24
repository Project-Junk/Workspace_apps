.class final Lcom/android/settings/SettingsPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->a:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method
