.class Lcom/color/support/widget/ColorNumericKeyboard$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorNumericKeyboard;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$1;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$1;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$000(Lcom/color/support/widget/ColorNumericKeyboard;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
