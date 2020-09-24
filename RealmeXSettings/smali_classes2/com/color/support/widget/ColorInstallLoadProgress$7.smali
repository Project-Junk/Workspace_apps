.class Lcom/color/support/widget/ColorInstallLoadProgress$7;
.super Ljava/lang/Object;
.source "ColorInstallLoadProgress.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorInstallLoadProgress;->setTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorInstallLoadProgress;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$7;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 901
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$7;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$700(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V

    goto :goto_0

    .line 911
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$7;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-static {p1, p2}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$700(Lcom/color/support/widget/ColorInstallLoadProgress;Z)V

    goto :goto_0

    .line 903
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$7;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-static {p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$600(Lcom/color/support/widget/ColorInstallLoadProgress;)V

    :goto_0
    return p2
.end method
