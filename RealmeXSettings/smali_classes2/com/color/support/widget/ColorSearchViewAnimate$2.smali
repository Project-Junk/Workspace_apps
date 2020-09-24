.class Lcom/color/support/widget/ColorSearchViewAnimate$2;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$2;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$2;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->showInToolBar()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 203
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$2;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->hideInToolBar()V

    :cond_1
    return-void
.end method
