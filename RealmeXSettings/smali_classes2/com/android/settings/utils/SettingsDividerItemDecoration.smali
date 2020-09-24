.class public Lcom/android/settings/utils/SettingsDividerItemDecoration;
.super Lcom/google/android/setupdesign/DividerItemDecoration;
.source "SettingsDividerItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p1

    return p1

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method
