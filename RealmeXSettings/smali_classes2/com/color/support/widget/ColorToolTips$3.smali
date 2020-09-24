.class Lcom/color/support/widget/ColorToolTips$3;
.super Ljava/lang/Object;
.source "ColorToolTips.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips$3;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/color/support/widget/ColorToolTips$3;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-static {v0}, Lcom/color/support/widget/ColorToolTips;->access$300(Lcom/color/support/widget/ColorToolTips;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
