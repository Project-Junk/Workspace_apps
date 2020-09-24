.class Lcolor/support/design/widget/blur/ColorBlurringView$1;
.super Ljava/lang/Object;
.source "ColorBlurringView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/blur/ColorBlurringView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/blur/ColorBlurringView;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/blur/ColorBlurringView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBlurringView$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurringView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurringView;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurringView;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurringView;

    invoke-static {v0}, Lcolor/support/design/widget/blur/ColorBlurringView;->access$000(Lcolor/support/design/widget/blur/ColorBlurringView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurringView;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurringView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlurringView$1;->this$0:Lcolor/support/design/widget/blur/ColorBlurringView;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurringView;->invalidate()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
