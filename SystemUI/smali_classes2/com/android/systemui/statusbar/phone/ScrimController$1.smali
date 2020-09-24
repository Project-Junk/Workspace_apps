.class Lcom/android/systemui/statusbar/phone/ScrimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 757
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$100(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 761
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 763
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f0a04f3

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 764
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 766
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 768
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$502(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
