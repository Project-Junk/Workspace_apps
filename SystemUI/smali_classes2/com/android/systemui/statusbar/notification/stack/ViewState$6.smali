.class Lcom/android/systemui/statusbar/notification/stack/ViewState$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;->this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 528
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f0a05c8

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;->val$child:Landroid/view/View;

    const v1, 0x7f0a05c7

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;->val$child:Landroid/view/View;

    const p1, 0x7f0a05c6

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
