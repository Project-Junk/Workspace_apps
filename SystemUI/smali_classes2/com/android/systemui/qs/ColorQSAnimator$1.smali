.class Lcom/android/systemui/qs/ColorQSAnimator$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "ColorQSAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/ColorQSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/ColorQSAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/ColorQSAnimator;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator$1;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 1

    .line 459
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator$1;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->access$000(Lcom/android/systemui/qs/ColorQSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 1

    .line 464
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator$1;->this$0:Lcom/android/systemui/qs/ColorQSAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->access$000(Lcom/android/systemui/qs/ColorQSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method
