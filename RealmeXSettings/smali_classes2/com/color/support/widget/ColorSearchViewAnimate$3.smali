.class Lcom/color/support/widget/ColorSearchViewAnimate$3;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateImmediately(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

.field final synthetic val$targetState:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;I)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$3;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    iput p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate$3;->val$targetState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$3;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$3;->val$targetState:I

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$300(Lcom/color/support/widget/ColorSearchViewAnimate;I)V

    return-void
.end method
