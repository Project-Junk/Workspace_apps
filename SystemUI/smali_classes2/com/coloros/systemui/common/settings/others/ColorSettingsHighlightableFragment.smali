.class public abstract Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;
.super Lcom/color/support/preference/ColorPreferenceFragment;
.source "ColorSettingsHighlightableFragment.java"


# static fields
.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"


# instance fields
.field private mAdapter:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

.field private mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mIsDataSetObserverRegistered:Z

.field private mPreferenceHighlighted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/color/support/preference/ColorPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mPreferenceHighlighted:Z

    .line 37
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mIsDataSetObserverRegistered:Z

    .line 38
    new-instance v0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;-><init>(Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method


# virtual methods
.method public highlightPreferenceIfNeeded()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mAdapter:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mPreferenceHighlighted:Z

    :cond_0
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 88
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v0, v2

    .line 92
    :cond_3
    new-instance v1, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    iget-boolean v2, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mAdapter:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mAdapter:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/color/support/preference/ColorPreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mAdapter:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result p0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mIsDataSetObserverRegistered:Z

    .line 127
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    :cond_1
    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method
