.class final Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$1;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$1;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$textView:Landroid/widget/TextView;

    const-string v0, "it"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
