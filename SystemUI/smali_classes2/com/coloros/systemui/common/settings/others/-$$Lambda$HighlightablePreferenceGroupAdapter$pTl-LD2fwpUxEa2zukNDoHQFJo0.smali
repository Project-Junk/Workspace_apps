.class public final synthetic Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;->f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    iput p2, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;->f$0:Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;

    iget p0, p0, Lcom/coloros/systemui/common/settings/others/-$$Lambda$HighlightablePreferenceGroupAdapter$pTl-LD2fwpUxEa2zukNDoHQFJo0;->f$1:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/settings/others/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0$HighlightablePreferenceGroupAdapter(I)V

    return-void
.end method
