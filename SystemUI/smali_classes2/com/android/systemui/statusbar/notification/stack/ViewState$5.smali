.class Lcom/android/systemui/statusbar/notification/stack/ViewState$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
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

    .line 460
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 463
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f0a05d0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    const v1, 0x7f0a05cf

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 465
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    const p1, 0x7f0a05ce

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method