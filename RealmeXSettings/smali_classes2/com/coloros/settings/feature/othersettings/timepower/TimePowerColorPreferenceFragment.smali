.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;
.super Lcom/color/support/preference/ColorPreferenceFragment;
.source "TimePowerColorPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/color/support/preference/ColorPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    const p3, 0x7f0d00c0

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerColorPreferenceFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method
