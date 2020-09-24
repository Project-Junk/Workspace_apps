.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/system/AssistDataReceiver;Lcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field final synthetic val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Z)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 227
    new-instance v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    .line 230
    invoke-static {p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 231
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {p0, v0, p1, p3, p4}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
