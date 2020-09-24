.class Lcolor/support/design/widget/blur/ColorBlurUtil$1;
.super Ljava/lang/Object;
.source "ColorBlurUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/blur/ColorBlurUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/blur/ColorBlurUtil;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$000(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$100(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$100(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$000(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$100(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcolor/support/design/widget/blur/ColorBlurUtil$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurUtil;

    invoke-static {p0}, Lcolor/support/design/widget/blur/ColorBlurUtil;->access$100(Lcolor/support/design/widget/blur/ColorBlurUtil;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
