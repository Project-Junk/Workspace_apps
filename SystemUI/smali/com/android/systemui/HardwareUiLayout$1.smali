.class Lcom/android/systemui/HardwareUiLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HardwareUiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HardwareUiLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout$1;->this$0:Lcom/android/systemui/HardwareUiLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout$1;->this$0:Lcom/android/systemui/HardwareUiLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->access$002(Lcom/android/systemui/HardwareUiLayout;Z)Z

    return-void
.end method
