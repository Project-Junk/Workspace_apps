.class public final synthetic Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;->f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;->f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$ldexX2SwV18VRigVT57gjmhVNbM;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->lambda$requestRemoveHighlightDelayed$1$HighlightablePreferenceGroupAdapter(Landroid/view/View;)V

    return-void
.end method
