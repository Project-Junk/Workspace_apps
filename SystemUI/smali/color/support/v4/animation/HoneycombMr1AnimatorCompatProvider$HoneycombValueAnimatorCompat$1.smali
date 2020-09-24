.class Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->addUpdateListener(Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

.field final synthetic val$animatorUpdateListener:Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;


# direct methods
.method constructor <init>(Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->this$0:Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    iput-object p2, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->val$animatorUpdateListener:Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->val$animatorUpdateListener:Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;

    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->this$0:Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    .line 78
    invoke-interface {p1, p0}, Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method
