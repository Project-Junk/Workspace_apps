.class Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ColorSettingsHighlightableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment$1;->this$0:Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
